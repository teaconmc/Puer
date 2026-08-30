---
title: "Streaks"
navigation:
  title: "02 Streaks"
---

# Streaks

Each fortune outcome changes your personal divination streak:

| Result | Effect on your streak |
|:---|:---|
| Sheng (圣脉) | **+1**: your current streak increases by one. If it now beats your previous best, your best streak is updated too. |
| Xiao (笑脉) | **unchanged**: neither increased nor decreased. |
| Nu (怒脉) | **reset to 0**: only a Nu breaks the run. |

Your streak is measured as a **current streak** (`shengpi:current_streak`) and a **best streak** (`shengpi:best_streak`). Both are stored on your player and survive death — a streak is treated as luck, not survival, so it is not lost when you die.

## Reading your streak

There is no dedicated HUD or command; your streak lives in the same player data used by the leaderboard block. The current streak is what grows with each Sheng and what a Nu resets; the best streak is the highest value you have ever reached and is what the leaderboard ranks.

[Back to the Shengpi index](index)
