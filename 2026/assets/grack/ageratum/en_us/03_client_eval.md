---
title: Client evaluation
navigation:
  title: Client evaluation
---

# Client evaluation

Grack also registers a client-side command, `/geval`, that evaluates a Groovy expression on the spot. It is registered on the client command dispatcher, so it is most useful in a single-player or development context.

## The `/geval` command

```
/geval <expression> [<arguments>]
```

- `<expression>` is a greedy string evaluated as a Groovy expression through a `GroovyShell`.
- `<arguments>` is an optional `CompoundTag`; when given, every key in it is set as a variable in the evaluation `Binding` before the expression runs.
- The result of the expression is printed as a success message.

## Errors

Because evaluation can fail in two distinct ways, the command distinguishes them:

- **Compilation failure** → *Expression compilation failed with the following error: %s*
- **Runtime failure** → *Failed to evaluate the expression with the following error: %s*

The full stack trace is also written to the log.

## A note on safety

Evaluating arbitrary Groovy is powerful. The source itself notes a `FIXME` about a possible remote-code-execution path through click events, so treat `/geval` as a development/debug tool rather than something to expose to untrusted players or chat-clickable text.

[Back to index](index)
