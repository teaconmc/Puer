---
title: "Seating"
navigation:
  title: "05 Seating"
items:
  - "yuushya:classroom_chair"
  - "yuushya:gaming_chair"
  - "yuushya:monobloc"
  - "yuushya:chair"
  - "yuushya:office_chair"
  - "yuushya:bar_stool"
  - "yuushya:bench"
  - "yuushya:park_bench"
  - "yuushya:couch"
  - "yuushya:bicycle"
---

# Seating

## Sitting down

Blocks whose register entry defines a three-value `sit_pos` usage are seats. Right-clicking creates an invisible `yuushya:ride_entity` chair at a position rotated by the block's facing, then mounts the player on it.

Confirmed seat blocks include `classroom_chair`, `gaming_chair`, `monobloc`, the `chair`, `office_chair`, `bar_stool`, `seat`, `park_stool`, `cushion_armchair`, `bench`, `park_bench`, `park_bench_no_handrail`, `couch` and `bicycle` templates, among others.

## Chair entity behaviour

- `yuushya:ride_entity` is invulnerable and cannot be damaged.
- The server removes it when it has no passengers.
- It also removes itself when its location is no longer valid (the block below is air, or the passenger pose is neither standing nor crouching).
- A seat that is already occupied rejects another sitter.

[Back to index](index)
