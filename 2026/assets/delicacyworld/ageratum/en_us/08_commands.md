---
title: "Commands"
navigation:
  title: "08 Commands"
---

# Commands

All commands live under the root `/restaurantcraft` and require Game Master permission (`Permissions.COMMANDS_GAMEMASTER`). Each command searches for a Cash Register within 32 blocks horizontally and 8 vertically of the executor.

## Information and close

- `/restaurantcraft info` — show the nearby restaurant's name, level, popularity, money and open state.
- `/restaurantcraft close` — force-close the nearby business session.

## Adjustments

- `/restaurantcraft addpopularity <amount>` — add to the restaurant's popularity (clamped at 0).
- `/restaurantcraft addmoney <amount>` — add to the restaurant's stored money.

## Reset and debug

- `/restaurantcraft reset` — reset level, popularity, money, session counters and stored inventories.
- `/restaurantcraft debug area` — re-run area detection and report the cached min/max box plus entrance and exit positions.

Commands report failure only when no restaurant is found; the numeric commands still return success even if no Cash Register is nearby.

[Back to index](index)
