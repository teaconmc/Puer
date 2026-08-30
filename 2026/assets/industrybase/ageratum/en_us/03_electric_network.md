---
title: "Electrical Network"
navigation:
  title: "03 Electrical Network"
items:
  - "industrybase:dynamo"
  - "industrybase:creative_dynamo"
  - "industrybase:wire"
  - "industrybase:wire_coil"
  - "industrybase:wire_connector"
  - "industrybase:electric_motor"
  - "industrybase:creative_electric_motor"
---

# Electrical Network

## Dynamo and Electric Motor

<block id="industrybase:dynamo"/>

The Dynamo accepts a mechanical shaft on its **facing side** and exposes electricity on its rear. It adds `2` resistance to the mechanical network and converts speed with:

`electrical power = speed x 2 x pi / 50`

The Electric Motor reverses the interfaces: electricity enters at its rear and mechanical power leaves its facing side. It requests `2.0` electrical power and converts the real input to integer mechanical power. Output changes toward that target by at most `1` per tick, so starting and slowing both take time.

When grid output is below total demand, each input receives a proportional share of available power. The rear electrical faces of both machines expose IndustryBase power and NeoForge energy capabilities, allowing adjacent compatible FE devices.

## Adjacent Wire Blocks

<block id="industrybase:wire"/>

A Wire Block connects on all six sides to other Wire Blocks or to a neighbor exposing IndustryBase power or NeoForge energy on that face. It updates its arms when neighbors change and can be waterlogged.

This is the easiest route to debug: run Wire Blocks from the Dynamo's rear to the Electric Motor's rear. If the wire model has no arm toward a machine, that machine is usually facing the wrong way.

## Wire Connectors and Wire Coils

<item id="industrybase:wire_coil"/>

A Wire Connector exposes electricity only on the facing side marked by its short post. When placed on a machine's valid electrical face, the post should point toward the machine.

A Wire Coil has `256` meters of durability. Use it on two wire-connectable blocks in sequence to create an overhead link:

1. The first use writes an endpoint position to the item, which appears in its tooltip.
2. The second use calculates straight-line Euclidean distance and consumes its integer floor as durability.
3. A successful link clears the stored first endpoint; the tooltip continues to show remaining meters.

The coil directly recognizes blocks implementing the wire-connectable interface. Normal Dynamos and Electric Motors are not such endpoints. The standard route is to place Wire Connectors on both valid machine faces and then link those connectors.

A link longer than the remaining wire preserves the first selection and reports that it is too long. Reusing an existing connection or selecting the same position fails. Breaking a Wire Connector successfully drops one coil for each attached span, with remaining durability set from that span's length.

## Creative variants

The Creative Dynamo supplies a fixed `10.0` electrical power. The Creative Electric Motor supplies a fixed `32` mechanical power. Both are Creative-only testing blocks without Survival recipes.

[Back to the IndustryBase index](index)
