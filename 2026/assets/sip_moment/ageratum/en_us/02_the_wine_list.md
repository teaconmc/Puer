---
title: The Wine List
navigation:
  title: The Wine List
description: The bar table menu, all nine entries and their emerald prices.
---

# The wine list

## Opening it

Right-click a **bar table** with anything. Three things happen at once: your wine-list page counter is reset to `0`, the menu opens, and the block also starts a use action on whatever you were holding.

The menu is paged, and the current page is stored as a **data attachment on the player**, not on the block — so every player browses independently and your page survives while you walk between tables. Three network payloads keep it in sync: one for the list contents, one for the page, and one for what you are given.

## The nine entries

Prices are in **emeralds**, and every entry is a fixed bundle:

| Entry | Price | You receive |
|:---|--:|:---|
| Orange Juice | **5** | orange juice |
| Highball | **6** | highball |
| Whisky | **6** | whisky |
| Black Star Coffee | **6** | black star coffee |
| David Martinez | **8** | david martinez |
| Butter Beer | **10** | butter beer |
| Kyoho Wine + Goblet | **16** | kyoho wine **bottle** + goblet |
| Champagne + Champagne Glass | **16** | champagne **bottle** + champagne glass |
| *Dust To Dust* music disc | **36** | the record |

Two observations worth planning around:

- **The two 16-emerald entries are bundles, not single drinks.** They give you a bottle and an empty glass; you pour one into the other. A bottle serves several glasses, so those entries are the cost-efficient ones if you intend to drink more than once.
- **The cups are not sold separately.** `kyoho_wine_cup` and `champagne_cup` never appear on the list — the only way to get a served cup is to pour from the corresponding bottle. In creative you can take them directly.
- **The music disc is the most expensive item in the mod** at 36 emeralds, and it is the only non-drink on the list.

## The list is Java-defined, not datapack-defined

This is the important structural fact. The catalogue is **built in code on `ServerStartingEvent`**: the map is cleared and repopulated with those nine hardcoded entries every time a world or server starts.

Consequences:

- **A datapack cannot change prices or add drinks.** There is no JSON for the wine list; editing files will not help.
- **Another mod can.** Immediately after building the map, the mod fires its own **`WineListInitEvent`** on the NeoForge event bus carrying the mutable map, and then adopts whatever the event handlers left behind. An addon can add, reprice or remove entries there.
- **Changes take effect on server start only.** Because the rebuild is bound to `ServerStartingEvent`, there is no reload path — a `/reload` will not re-run it.

The list can be read back sorted by entry id, which is what gives the menu a stable ordering rather than hash order.

## The menu title comes from another mod's namespace

The bar table builds its menu title from the translation key **`container.bakeries.wine_list`** — the `bakeries` namespace, which is **not this mod**. Sip Moment then defines that key in its *own* language files ("Wine List"), so in a plain installation the title displays correctly.

The risk appears when a mod that genuinely owns that namespace is present. Translation keys are global: if Bakeries — or any addon of it — defines `container.bakeries.wine_list` differently, **whichever resource loads later wins**, and this mod's wine list can silently be retitled. There is no `container.sip_moment.*` key anywhere in the mod.

Nothing breaks — only the title text can differ. See [Good to know](07_technical_and_limits).

[Back to index](index)
