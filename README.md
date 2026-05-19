# Hollowfang Trade

**A trading card game built with Godot 3.x.**

> **[Play in your browser](https://daily19.github.io/HollowfangTrade/)**

---

## About

Hollowfang Trade is a single-player card game featuring animated pixel-art monsters. Build a deck, play cards to the board, and manage resources to outmanoeuvre your opponent.

- **10 unique monsters** across two sets with distinct stats and abilities
- **Full deck builder** — filter, browse, and construct your deck from the card library
- **Animated card art** — idle sprite animations on every monster card
- **Drag-and-drop** card play, targeting arrows, and token system
- **Grid-based board** with automatic and manual placement modes

---

## How to Play

1. Open the game and choose **SinglePlayerDemo** to jump straight in, or
2. Visit **DeckBuilder** to construct a custom deck before playing.

Cards have three stats: **Cost** (to play), **Attack**, and **HP**. Pay credits to play monsters from your hand to the board.

---

## Card Sets

| Set | Cards |
|-----|-------|
| Hollowfang Set 1 | Ashclaw Wisp, Thornback Crawler, Mirewyrm Hatchling, Blazefang Stalker, Duskmantle Sentinel |
| Hollowfang Set 2 | Veilwing Spectre, Stoneback Golem, Swampfang Drake, Frostmantle Sprite, Embercrest Chimera |

---

## Running Locally

Requires **Godot 3.x** (tested on 3.5).

```
git clone https://github.com/DAILY19/HollowfangTrade.git
```

Open `project.godot` in the Godot editor and press **F5** to run.

---

## Project Structure

```
src/core/      # Godot Card Game Framework (do not modify)
src/custom/    # Hollowfang Trade game logic and scenes
assets/        # Sprites, card backs, tokens, audio, VFX
```

---

## Licenses

See [LICENSE](LICENSE) for full details. In brief:

- **Game code** - AGPL-3.0
- **GUT test framework** - MIT
- **Fonts** (Comfortaa) - OFL-1.1
- **Monster art** - ElvGames custom license (personal/commercial use permitted, no resale of raw assets)
- **Audio** - ElvGames + Pegonthetrack custom license

---

*Built on the [Godot Card Game Framework](https://github.com/db0/godot-card-game-framework) by db0.*