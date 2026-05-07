---
title: Programming
navigation:
  title: Programming
description: WebAssembly, the embedded engine, and the handle ownership rules you must follow.
---

# Programming

## Camera behaviour is WebAssembly

Both Techniques and Managers are **WebAssembly modules**. LiveHelper runs them inside the game using an embedded pure-Java WebAssembly engine, so there is no external runtime to install and no native toolchain requirement at play time.

The author recommends **AssemblyScript** for writing them — a TypeScript-like language that compiles to WebAssembly — but any language that produces a plain WASM module with the right imports and exports will work.

## The import module is named `LiveHelper`

Host functions are imported from a module literally named `LiveHelper`. Your module declares the functions it needs from that module and LiveHelper links them at load time.

Your module must export an entry point that the host calls each frame. A Technique's entry point returns a clip; a Manager's returns a frame configuration.

## Handles, and who owns them

This is the part that will bite you if you skim it.

Values that live on the host side — clips, frame configurations, buffers — are passed to your program as **32-bit integer handles**. There are two kinds, and the distinction is a contract you are expected to honour:

| Kind | Meaning | Your obligation |
|:---|:---|:---|
| **Owned** | you were given ownership | you must eventually release it, or hand it back to the host |
| **Borrowed** | you are only looking at it | do **not** release it |

Two host functions manage this:

- **Duplicate** — take an additional owned handle to the same value, when you need to use something twice.
- **Release** — give up an owned handle.

Returning a handle from your entry point transfers ownership back to the host, which is why a Manager does not release the configuration it returns.

**Leaking handles leaks host memory for as long as the scheduler runs.** A Manager runs every frame, so a single missed release is not a small mistake — at 60 frames per second it is 3,600 leaked handles a minute. If your stream degrades over time, this is the first thing to check.

The mirror-image mistake is releasing a borrowed handle, or releasing an owned one twice. Both are errors on your side, not the host's.

## Reading text is a two-call pattern

Text inputs — a clip's name, for instance — are fetched into a buffer you provide, because the host cannot know how much room you have.

The call returns the **length it needs**. If that exceeds the buffer you passed, nothing was written: allocate a bigger buffer and call again. The returned string is UTF-8 and null-terminated.

So the correct shape is always: call with what you have, compare the result against your buffer size, and retry once if it was too small. Writing code that assumes the first call succeeded will silently work until someone names a clip something long.

## Numbers are read by name

Float inputs are read by name rather than by index, which means a program does not break when inputs are reordered in the dashboard. Names are passed as pointers into your module's memory, together with the memory page they live in.

## Predefined inputs

Some inputs are supplied by the host rather than declared by you. A Technique always has `progress`; a Manager always has the clip count, per-clip duration and name, and elapsed time. Full list in [04 API reference](04_api_reference).

## Practical advice

- **Start with a Technique.** A fixed camera that ignores `progress` is three lines and proves your toolchain works before you touch scheduling.
- **Keep Managers stateless.** Everything you need — elapsed time, durations, count — is provided each frame, so deriving state rather than storing it avoids a whole class of bug.
- **Release in the same branch you acquire.** Given the per-frame execution rate, disciplined pairing matters more here than in ordinary code.
- **Test on a still scene.** Camera bugs are much easier to see when the world is not also moving.

[Back to index](index)
