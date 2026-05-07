---
title: "Claiming"
navigation:
  title: "Claiming"
---

# Claiming

## How a claim works

When an envelope is broadcast it appears as a chat card. Clicking the card queues your claim. The server processes **one queued claim per game tick**, and claims waiting in the same tick are processed in a **random order**, so a lucky-red-envelope race is won by chance rather than by ping.

A claim:

1. checks the envelope is still active and visible to you,
2. checks you have not already claimed,
3. checks the password (for password envelopes) or your name (for exclusive envelopes),
4. adds the reward to your inventory, dropping it at your feet if your inventory is full,
5. marks the claim and re-broadcasts the updated envelope.

## Password flow

For a password envelope the card says "This is a password red envelope. Copy and send the password in chat." Typing the password in chat is a public message (so others can repeat it) and at the same time queues your claim.

## Repeat-message guard

If an administrator configured a repeat limit, sending the **same message twice in a row** is throttled. Exceeding the per-minute cap or the minimum interval cancels the message: this stops password-spam farming and accidental repeats, and is independent from the send cooldown.

## States

An envelope can be `active`, `expired`, `finished`, or `destroyed`. It stops being claimable when every spot is claimed, when the remaining stack runs out, or when the 8-hour lifetime passes.

[Back to index](index)
