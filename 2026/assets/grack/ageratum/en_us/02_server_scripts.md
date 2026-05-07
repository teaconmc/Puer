---
title: Server scripts
navigation:
  title: Server scripts
---

# Server scripts

The server side of Grack runs Groovy scripts that you ship inside a data pack.

## The script library

At every (re)load, `ServerScriptLibrary` scans the resource/data packs for files matching `data/grack/script/*.groovy`. Each file is compiled with a `GrackScript` base class, given a fresh `Binding`, and stored under the id `grack:<file name>`.

The library is registered as a **retained** reload listener, so the scripts stay available. A script that fails to parse is logged as an error and simply not added.

## The `/gscript` command

`/gscript` runs a loaded script and requires permission level 2 (game master):

```
/gscript <script> [<arguments>]
```

- `<script>` uses the custom `grack:gscript` argument type. It accepts an id like `foo` or `foo:bar` and tab-completes from the names of loaded scripts.
- `<arguments>` is an optional `CompoundTag`. When present it is bound into the script's `Binding` as `args`; otherwise `args` is left unbound.
- The command binds the Brigadier command `context` into the script as well, so a script can read who ran it, the source, etc. It always returns a single success.

## Pack layout

A data pack that provides scripts looks like:

```
data/grack/script/foo.groovy   →  grack:foo
```

Unknown script names are rejected with: *Unknown script: %s*.

[Back to index](index)
