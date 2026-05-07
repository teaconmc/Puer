---
title: "Skeps and Hives"
navigation:
  title: "03 Skeps and Hives"
items:
  - "beecrasy:skep"
  - "beecrasy:hive"
---

# Skeps and Hives

<block id="beecrasy:skep"/>

<recipe id="beecrasy:stonecutting/skep"/>

A Skep has `1` queen slot, `4` drone slots, `4` comb slots, and `2` incense slots. Its capacity is small, but it is enough for the first rounds of breeding and production.

<block id="beecrasy:hive"/>

<recipe id="beecrasy:crafting/hive"/>

A Hive has `2` physical queen slots, `6` drone slots, `6` comb slots, and `3` incense slots. A work cycle can start only when **exactly one queen** is present, however. The second queen slot is storage capacity, not parallel production.

## Operating modes

Hives expose manual, automatic, and redstone modes. Insert a queen and drones, then choose a mode from the interface. The area presented as comb storage does not accept Comb Foundations or ordinary combs as fuel; its input validation accepts larvae and drones, while production writes results into the relevant storage. Missing biotope can report `NO_BIOTOPE` and affect product accumulation or mutation, but does not block startup. Flowers are not a work condition either.

::: warning
The `INVALID_ENVIRONMENT` state can remain latched even after the outside conditions are fixed. Only placing a non-empty queen into a queen slot clears the latch; changing another slot does nothing. After fixing the environment, remove and reinsert the queen to request another check.
:::

[Back to the Beecrasy index](index)
