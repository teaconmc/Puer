---
title: Friendship Tree and Paired Actions
navigation:
  title: Friendship Tree and Paired Actions
---

# Friendship Tree and Paired Actions

## What the Tree Stores

The mod creates shared friendship-tree data for each pair of players. Nodes record which features are unlocked for that relationship, while each node's behavior determines whether clicking it establishes friendship, performs an action, starts handholding, or opens the next progression gate.

The root establishes friendship. The default tree then leads into handholding and high five before branching into more actions and two red-candle lock nodes.

![Friendship-tree nodes and links displayed beside a player](thatskyinteractions:ageratum/thatskyinteractions_friendship_tree.png)

## Default Paired Actions

| Action | Built-in levels | Behavior |
|:---|:---:|:---|
| Holding hands | 1 | One player leads while the other follows |
| High five | 1 | Aligns both players and plays a high-five action |
| Hug | 1 | Aligns both players and plays a hug |
| Double high five | 1 | Plays a two-handed high five |
| Pat head | 2 | Two nodes select different levels of the same interaction |
| Piggyback | 2 | Two nodes provide leveled piggyback interactions |
| Bear hug | 2 | Two nodes provide leveled bear-hug interactions |

Interaction definitions and their concrete animations are stored separately. A tree node selects an interaction ID and level, allowing a data pack to reuse multiple levels of one interaction.

![Two players performing a paired hug](thatskyinteractions:ageratum/thatskyinteractions_interaction.png)

## Using and Unlocking Nodes

Clicking an available action node sends an interaction request to the target player. After acceptance, the server starts the action and places both players in its interaction state. Refusal or cancellation performs no action.

With conditional friendship enabled, a locked node cannot be used directly, and only nodes whose parent progression is satisfied can be offered for unlock. With it disabled, the action path does not require nodes to be marked unlocked. See [Unlock Costs and Data Layout](04_costs_and_data) for costs and the complete default order.

## Handholding Controls

A handholding relation distinguishes the leader from each follower:

- Ordinary movement input is restricted for a follower, who receives a prompt to press Sprint to stop holding hands.
- Pressing Sprint as the follower breaks the relation.
- The leader can hold `Alt`, then use Attack or Use to release the follower on the main-hand or offhand side respectively.
- Administrators can also create, reverse, or remove handholding relations through commands.

::: info
Handholding is separate from a normal animated interaction. It continuously maintains a follow relation between players until a player releases it or the server clears the relation.
:::

[Back to the That Sky Interactions index](index)
