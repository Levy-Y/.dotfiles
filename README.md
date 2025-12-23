# Dotfiles

My flake based Home-Manager dotfiles.

## Architecture

Configuration is modularized under the `programs/` directory:

* **`common/`**: Shared configurations and defaults.
* **`gui/`**: Graphical applications and their configuration/theming.
* **`terminal/`**: Terminal emulators, shells, and CLI utilities.

## Managed Programs

| Application | Type |
| :--- | :--- |
| **WezTerm** | Terminal |
| **Kitty** | Terminal |
| **Zsh** | Shell |
| **AWS CLI** | CLI |
| **Bat** | CLI |
| **Btop** | CLI |
| **Git** | CLI |
| **Yazi** | CLI |
| **Ulauncher** | GUI |
| **Vesktop** | GUI |
| **VS Code** | GUI |
| **Bitwarden** | GUI |

## Installation

Apply the configuration:

```bash
home-manager switch --flake .#your_username
```

Update dependencies:

```bash
nix flake update
```

## Structure
```
├── flake.nix             # Entry point flake
├── home.nix              # Home Manager configuration
└── programs              # Modules
    ├── gui               # GUI apps
    ├── terminal          # Shell & Emulators
    └── tools             # CLI Utilities
```