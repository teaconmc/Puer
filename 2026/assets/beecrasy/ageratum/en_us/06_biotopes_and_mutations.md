---
title: "Biotopes and Mutations"
navigation:
  title: "06 Biotopes and Mutations"
---

# Biotopes and Mutations

The default working radius of `3` only scans nearby blocks to update the biotope set. Temperature and humidity come from the hive's biome, and dimension comes directly from its position; these values and the queen's genes determine `INVALID_ENVIRONMENT`. Missing biotope only affects product accumulation or mutation and can report `NO_BIOTOPE`; it does not block startup. The flower radius of `4` only controls grass or fern transformation while working.

## Controlling mutation

The configured `7.5%` default is an upper bound on total mutation probability, and the effective result can be lower. Mutation can reveal new traits but makes a lineage less predictable. Keep parental backups, change one condition at a time, and record every generation's sequence so recombination, environment, and mutation can be distinguished.

Dimensions can participate in natural genome construction, but the current implementation has an important defect: the intended End branch checks the Nether a second time. The End branch therefore never runs. Do not rely on moving bees to the End as a natural genome source in this version.

::: tip
After `INVALID_ENVIRONMENT`, fixing temperature, humidity, or dimension conditions may not restart the hive automatically. Correct the hive position or queen conditions, then remove and reinsert the queen. Only a non-empty queen-slot change clears the state; moving another item does nothing.
:::

[Back to the Beecrasy index](index)
