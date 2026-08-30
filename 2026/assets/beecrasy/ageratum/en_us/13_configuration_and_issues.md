---
title: "Configuration and Known Issues"
navigation:
  title: "13 Configuration and Known Issues"
---

# Configuration and Known Issues

Beecrasy uses server configuration. Important defaults are: average lifespan `12000`, hive interval `100 ticks`, working radius `3`, flower radius `4`, flower rate `1`, larva survival `600` seconds, mutation chance `0.075`, Sequencer honey `25 mB`, Sequencer energy `5000 FE`, and Sequencer input limit `640 FE/t`. A multiplayer server should publish any changed values to its players.

## Current-version notes

- Wild nests and starter bees have no world generation. Mod flowers also do not generate directly, but an operating hive can transform grass or ferns into 9 of them.
- Apite, Bumblebee Jasper, and base Pheromone have no output sources, leaving several mid- and late-game recipes unreachable.
- Invalid environment can latch. Only reinserting a non-empty queen into a queen slot requests another check; other slot changes do nothing.
- The natural End-genome branch is unreachable because it checks the Nether twice.
- The block Sequencer may use the wrong client menu type.
- Bee City does not transform ordinary spreadable comb into capability blocks, and its lit state does not turn off.
- The bundled Apistle content remains placeholder material.

## Debug commands

`/beecrasy` can inspect or edit held genomes, edit products, trigger MIDI, and display the calendar. It currently has no permission requirement and should not be exposed directly to ordinary server players. It is useful for administrators repairing data or verifying mechanics, but back up affected items and the world first.

[Back to the Beecrasy index](index)
