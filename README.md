# ArcadeRunner

ArcadeRunner is a fast-paced 2D endless runner built with **Godot 4**.  
You control a runner sprinting across a hazardous landscape, dodging obstacles and trying to survive as long as possible to beat your best score.[web:67]

---

## Features

- Tight, responsive jump controls tuned for keyboard play
- Procedural obstacle spawning for endless runs
- Score that increases over time as you survive
- Persistent **best score** saved between sessions
- Main menu, pause menu, and game‑over screen
- Simple audio system for music and sound effects
- Clean, production‑style Godot project structure (separate scenes for player, obstacles, UI, and systems)[web:49][web:54]

---

## Controls

- **Move / Run**: automatic forward movement
- **Jump**: `Space`
- **Pause / Resume**: `Esc`
- **Menu navigation**: Mouse or `Enter` / `Esc`

You can customize input actions in **Project → Project Settings → Input Map** inside Godot.[web:57]

---

## How to Play

1. Launch the game.
2. From the **Main Menu**, click **Play**.
3. Use **Space** to jump over obstacles and stay alive as long as possible.
4. When you collide with an obstacle, the run ends and the **Game Over** screen shows your current and best scores.
5. Click **Restart** to immediately try again, or **Main Menu** to return to the title screen.

---

## Tech Stack

- **Engine**: Godot Engine 4.x (GDScript)[web:40]
- **Language**: GDScript
- **Platforms**: 
  - Desktop (Windows / macOS / Linux)
  - HTML5 (playable in browser, via Godot’s Web export)[web:65]

---

## Project Structure

Key folders:

- `scenes/`
  - `Main.tscn` – main game scene
  - `player/Player.tscn` – player character
  - `obstacles/Obstacle.tscn` – obstacle prefab
  - `ui/` – HUD, Main Menu, Pause Menu, Game Over UI
- `scripts/`
  - `Player.gd` – player controller
  - `Obstacle.gd` – obstacle behaviour
  - `Main.gd` – game state, score, and flow
  - `HUD.gd`, `PauseMenu.gd`, `GameOverUI.gd` – UI logic
  - `SaveManager.gd` – simple save system using `ConfigFile`[web:87]
- `assets/`
  - Sprites, fonts, audio, and other art assets

This layout follows the Godot documentation’s recommendation to organize by **game domain** (player, enemies, UI, etc.) rather than by node type.[web:49][web:56]

---

## Running the Project Locally

1. Install **Godot 4.x** from the [official download page].[web:40]
2. Clone this repository:

   ```bash
   git clone https://github.com/<your-username>/ArcadeRunner.git
   cd ArcadeRunner
