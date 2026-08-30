---
title: "Business Session"
navigation:
  title: "03 Business Session"
items:
  - "delicacyworld:money_50"
---

# Business Session

## Opening

The owner clicks **Open** in the management screen. A 15-second startup countdown runs first, then the requirements from [Setting up the restaurant](01_setting_up) are checked again. A business can only start when the world clock is at or before `businessCloseTime` (default 12000 ticks, noon).

## Participants

The initiator is always a participant; other players can be invited by name or pre-configured in the menu. Every participant needs a bound Storage Locker. During the session:

- participant backpacks are stored in their lockers,
- participants are moved near the Cash Register,
- uninvited players inside the area are switched to Spectator mode and restored afterward,
- the fridge is copied into temporary business stock and then cleared.

## Preparing and ready

In the `PREPARING` phase everyone must toggle **Ready** while within `preparingReadyDistanceBlocks` (default 8 blocks). The timeout is `preparingTimeoutSeconds` (default 60). When all participants are ready, a `preparingCountdownSeconds` countdown (default 3 seconds) begins before the session becomes active.

If the owner goes offline, or the entrance, exit, fridge or chair structure is missing, the session force-closes.

## Customers

`delicacyworld:customer` mobs spawn near the entrance. The customer total is the `mvpCustomerCount` override when positive, otherwise `max(minimumCustomerCount, popularity / customerCountPerPopularity)` with defaults 1 and 5. The initial burst is 4 and the concurrent cap is 4.

A customer searches for a free chair (`seatSearchTimeoutSeconds`, default 180), sits, and orders one random dish from the valid recipe slots. Order deadlines are 90/120/150 seconds for Basic/Normal/Advanced dishes.

## Serving

Right-click an awaiting customer to open the Customer Order menu, or right-click while holding the matching cooked dish to serve directly. A tray with the right dish within 2 blocks can also be targeted. If neither applies, the restaurant consumes prepared stock from its temporary inventory or from cooking-device outputs. Serving the wrong dish fails the order.

After a successful order the customer eats and pays for `afterOrderSuccessLeaveSeconds` (default 60) before leaving. Normal departures have a 10% garbage chance; angry departures 35%.

## Failures and settlement

Seat timeouts, order timeouts, blocked seats and mopping all fail the order and reduce popularity by `failedOrderPopularityPenalty` (default 10). Mopping also reduces popularity by `mopPopularityPenalty` (default 10).

When all customers finish, the session settles: income is added to restaurant money, a perfect business adds `perfectBusinessPopularityBonus` (default 20) capped by level, garbage applies `garbagePopularityPenalty` (default 5 each), devices and trays are collected back, participant inventories are restored, and devices are cleared when `clearDeviceInventoryAfterBusiness` is true. A Business Result screen shows served quality counts, fresh and appliance-supported serves, failures, revenue and upgrade availability.

## Upgrading

After a result, the owner can click **Upgrade** when the current popularity and money meet the next level. Defaults: 2 stars needs 200 popularity and 30000 money; 3 stars needs 300 popularity and 150000 money. Upgrade spends the money and sets the new star level.

[Back to index](index)
