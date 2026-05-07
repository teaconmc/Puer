---
title: Getting started
navigation:
  title: Getting started
---

# Getting started

Obtain the `worldcomment:comment_tool` (comment tool, stacks to 1, tools & utilities tab) and the `worldcomment:placeable_comment` placeable comment marker.

## Posting a comment

While holding the comment tool, run `/wc` or `/wc send` to open the comment-sending flow (`CommentToolItem.Client.triggerCommentSend`), anchoring your note (optionally with a screenshot) at your current world position. The entry is stored by the server and replicated to players near it; visitors at the same coordinates can read the notes left in the world.

## Browsing comments

`/wc list` opens the comment list screen (`CommentListScreen`) to review the published entries at a location or range.

## Placeable comments

The `placeable_comment` is a world-placed comment marker whose metadata is embedded through the `worldcomment:placeable_comment_meta` data component; placement requests are confirmed through the server network packet (`PacketRequestPlacementC2S`).

## Client capabilities

Comments are fetched per chunk/region on the client (`PacketRegionRequestC2S` / `PacketRegionDataS2C`); images can be uploaded with comments, thumbnailed and downloaded for display (`PacketImageUpload*` / `PacketImageDownload*`), and emoji are provided by `EmojiRegistry`. Screenshots are captured via the `Screenshot` utility.

[Back to index](index)