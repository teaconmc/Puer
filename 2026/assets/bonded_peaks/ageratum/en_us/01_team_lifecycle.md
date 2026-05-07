---
title: "Team lifecycle"
navigation:
  title: "01 Team lifecycle"
---

# Team lifecycle

## Creating a team

`/bondedpeaks create <name>` creates a team and makes the executor the owner. Team names must:

- contain at least one character and at most 12 Unicode code points;
- contain only letters or digits (`\p{L}` and `\p{N}`);
- be unique case-insensitively (`Alpha` and `alpha` are the same team name).

Creating a team clears the owner's incoming invitations and pending disband state, then saves the team to disk.

## Inviting and joining

`/bondedpeaks invite <player>` can only be run by the team owner. The target must not be in any team, and cannot be the inviter. A new invitation replaces the target's older invitations from the same inviter or for the same team. If the target is online, they receive a system message telling them to run `/bondedpeaks accept`.

`/bondedpeaks accept` accepts the newest invitation for the executor. `/bondedpeaks accept <inviter>` accepts the invitation from a specific inviter. Accepting validates that the invitation still exists and that the original inviter is still the team owner. The player joins the team, their incoming invitations are cleared, and online members are notified.

## Leaving and kicking

- A regular member can leave with `/bondedpeaks leave`.
- The owner cannot leave with `leave`; the owner must transfer ownership or disband first.
- `/bondedpeaks kick <player>` removes a member. Only the owner can kick, cannot kick themselves, and the target must be a current member.
- Leaving or kicking saves the team state and notifies remaining online members.

## Transferring ownership

`/bondedpeaks transfer <player>` moves ownership to another current member. The target cannot be the owner themselves. After transfer:

- the new owner is moved to the first position in the member list;
- pending disband state is cleared for both the old and new owner;
- all invitations for the team are removed;
- the team is saved.

## Disbanding

Disbanding requires two steps:

1. `/bondedpeaks disband` marks the owner as having a pending disband request.
2. `/bondedpeaks confirm` actually deletes the team.

Only the owner can start or confirm a disband. Confirming removes the team, all membership links and all team invitations, then saves. The disband notice is sent to every online member. There is no automatic timeout; the pending confirmation is only cleared by logout or by ownership transfer.

[Back to the Bonded Peaks index](index)
