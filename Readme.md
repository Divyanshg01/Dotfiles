## My Current Setup

TERMINAL -> kitty + zsh + ohmyposh

EDITOR -> nvim + tmux

DESKTOP ENV -> hyprland+hyprpaper+rofi(wayland fork) + waybar

Current Theme of TMUX and Nvim is Gruvbox

## Notes

    - Curently using vtsls instead of tsserver for js/ts lsp

## Packages for Neovim

```bash
sudo pacman -S stylua gdb clang grep prettier clang gcc clang python tidy python-black cppcheck mypy shaderc sqlfluff eslint eslint_d typescript-language-server
```

```bash
paru -S hadolint-bin python-gersemi sql-formatter cbfmt checkmake cmake-lint golangci-lint spectral-cli
```

```bash
cargo install cbfmt
```

## For DebugAdapters

1. Create a folder by the name of "debugAdapters"
2. Inside of which add protocols for different debugAdaptors (by seeing nvim/lua/plugins/debugging.lua)

CPP Debugger => [vscode-cpptools](https://github.com/Microsoft/vscode-cpptools)

## Some Other Dependencies

```bash
pip install cmakelang sqlfluff
sudo pacman -S lua-jsregexp
```

## For Latex Functionality

```bash
sudo pacman -S texlive
paru -S biber
```

you will also need zathura pdf viewer with poppler pdf backend

```bash
sudo pacman -S zathura
```

Also manually Install the latex Treesitter parser

```bash
:TSInstall latex
```

## For annotation

```bash
paru -S gromit-mpx-git
```


