---
title: "Simple Path Finder"
navigation:
  title: "Simple Path Finder"
---

# Simple Path Finder

Simple Path Finder is a NeoForge 26.1 navigation helper. It stores a walkable navigation graph per dimension, supports server-side pathfinding by default, and renders the computed path on the client. The Navigation item builds or removes graph layers, the Navigation Brush repairs edges, the Locator and Path Finder Block provide reusable destinations, and the Debug Navigation Stick exposes the graph for inspection.

## Reading Order

1. [Getting Started](01_getting_started): the creative tab, registered contents, controls and locator unbinding.
2. [Navigation Item](02_navigation_item): modes, layers, the settings screen and creative-mode gating.
3. [Navigation Brush and Barrier](03_nav_brush_and_barrier): edge repair, weight editing and invisible barriers.
4. [Navigation Links](04_navigation_links): connecting non-adjacent positions with Normal, Teleport and Vehicle link labels.
5. [Locator and Path Finder Block](05_locator_and_path_finder_block): binding reusable targets and triggering navigation from a block.
6. [Pathfinding and Rendering](06_pathfinding_and_rendering): server-side and client-side computation, progress, path lines and debug visualization.
7. [Commands and Configuration](07_commands_and_configuration): admin commands, config keys, per-player distance settings and deployment notes.

## At a Glance

| Item | Current Implementation |
|:---|:---|
| Mod ID | `simple_path_finder` |
| Source target | Minecraft 26.1.2 / NeoForge 26.1.2.43-beta |
| Creative tab | `simple_path_finder` |
| Registered items | `simple_path_finder:debug_nav`, `simple_path_finder:navigation`, `simple_path_finder:locator`, `simple_path_finder:nav_brush`, `simple_path_finder:path_finder_block`, `simple_path_finder:navigation_barrier` |
| Registered blocks | `simple_path_finder:path_finder_block`, `simple_path_finder:navigation_barrier` |
| Block entity | `simple_path_finder:path_finder_block` |
| Data components | `simple_path_finder:navigation_mode`, `simple_path_finder:locator`, `simple_path_finder:nav_brush`, `simple_path_finder:link_creation`, `simple_path_finder:link_type` |
| Attachments | `simple_path_finder:locator_data`, `simple_path_finder:player_block_distance` |
| Per-dimension saved data | `simple_path_finder:simple_path_finder_data` |
| Network payloads | `simple_path_finder:sync_level_nav`, `simple_path_finder:sync_single_chunk`, `simple_path_finder:player_location`, `simple_path_finder:pathfinding_result`, `simple_path_finder:pathfinding_request`, `simple_path_finder:update_item_properties`, `simple_path_finder:sync_block_distance_config` |
| Admin commands | `/spf admin ...`; alias `/simple_path_finder` |
| Client commands | `/spf nav`, `/spf navserver`; aliases `/nav`, `/navserver` |
| Keybindings | None registered |
| Config | Server `NavConfig`; client `ClientConfig` |

::: note
The mod computes and renders a navigation path. It does not move the player automatically, and link types are stored path labels rather than implemented teleport or vehicle movement.
:::
