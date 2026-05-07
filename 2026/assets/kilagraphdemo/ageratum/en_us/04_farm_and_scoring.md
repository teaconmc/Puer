---
title: "Farm and scoring"
navigation:
  title: "04 Farm and scoring"
items:
  - kilagraphdemo:drone_ranking
---

# Farm and scoring

## A pumpkin's life

Every cell of the field moves through five stages:

| Stage | Meaning |
|:---|:---|
| Empty | nothing planted |
| Growing | a pumpkin ripening |
| Ripe | ready to harvest, and eligible to merge |
| Rotten | left too long; worthless until cleared |
| Merged member | a non-core cell of a merged pumpkin whose core is elsewhere |

Default timings, all in ticks:

| Value | Default |
|:---|:---|
| Mean ticks to ripen | 600 |
| Mean ticks ripe before rotting | 400 |
| Largest merge square | 4 × 4 |

## The timings are random — but reproducible

This is the mod's cleverest design decision, and it is worth understanding properly.

Each pumpkin's grow time and fresh-before-rot time are **drawn individually from a Gaussian**, centred on the means above with standard deviations of **120** and **100** ticks respectively (clamped to a sensible range). The consequence is that **a field does not ripen all at once** — you cannot plant a whole row and harvest it on a single known tick.

But the draws are **seeded**. Given the same seed, every pumpkin gets the same numbers every time. So a program still scores **identically on every run**, which is what makes a leaderboard fair.

In short: the jitter forces you to write a program that *observes* the field rather than one that counts ticks, without introducing any luck into your score.

## Merging is where the points are

Ripe pumpkins merge into the largest possible square, up to **4 × 4**. Harvesting any cell of a merged block banks the **entire block's** score in one action.

That reshapes the whole optimisation problem. A program that harvests each pumpkin the moment it ripens spends one Harvest per pumpkin and never merges. A program that lets a square finish and then takes it once spends far fewer ticks per pumpkin — but risks the earliest pumpkins rotting while it waits for the last.

The Scan Cell node reports **merge size**, which is exactly the information you need to decide whether a square is still growing toward a bigger merge or has already hit the 4 × 4 cap.

## How the official score is computed

Submitting with **Upload** does not score you on your own field. Instead:

1. The program runs on a **fixed virtual field** — the same standardized field the in-world preview uses — so every submission faces identical conditions.
2. It runs for a **tick budget of 10,000**, or until it finishes or halts.
3. It runs **once per seed** across **five fixed seeds**, and the **median** of those five scores becomes your official score.
4. The result is recorded on the server leaderboard and you get a chat message: *Drone solution scored: N points (median of 5 runs).*

Three things follow from this design:

- **Your in-world field is a practice ground only.** Arranging soil cleverly cannot raise your ranking.
- **The median, not the best, is your score.** One lucky seed will not carry you; you need a program that performs consistently. A solution that scores brilliantly on two seeds and poorly on three lands on the poor side.
- **Scoring is fully deterministic.** The seeds are fixed rather than random, so resubmitting the same program always yields the same number. There is nothing to reroll.

Scoring runs on a background thread, so submitting does not stall the server; only the leaderboard write-back happens on the main thread.

## Reading the leaderboard in-world

Three blocks surface the results, and they do different jobs.

**Drone Ranking Display** replays a chosen entry. Which rank it shows is selected by **redstone signal strength**, and the mapping is off by one from what you would guess: **signal 0 selects rank 1.** So an unpowered display shows the current champion, signal 1 shows rank 2, and so on. If no entry exists at that rank it says so rather than showing stale data. Anyone may open its viewer — it is a spectator screen.

**Drone Scoreboard** is a billboard listing the leaderboard's top players, refreshed when the leaderboard changes rather than on a timer.

**Hologram Likes Scoreboard** does the same job for shared hologram works, ranked by likes — see [06 Sharing and limits](06_sharing_and_limits).

Both billboards display up to **10 rows**.

[Back to index](index)
