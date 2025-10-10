# Jonny's Dotfiles

To install clone the repository to somewhere in your home directory

```sh
git clone https://github.com/ingalless/dotfiles.git
cd dotfiles
```

## Current Tools

| Category       | Tool      |
| -------------- | --------- |
| OS             | MacOS     |
| Window Manager | Aerospace |
| Shell          | Fish      |
| Terminal       | Alacritty |
| Editor         | Neovim    |
| Multiplexer    | tmux      |

## Usage

Use GNU Stow to set things up.

```bash
# Example setup for scripts, nvim and tmux
stow bin nvim tmux
```

## Neovim

```bash
stow nvim
```

## Fish

### Environment-specific variables

Configure environment-specific variables in `.ji.fish`

```fish
set -gx MY_SPECIAL_VAR "some value"
```

| Name           | Description                                              |
| -------------- | -------------------------------------------------------- |
| TMUX_COPY_TOOL | The copy command to use in tmux (e.g. `pbcopy` on MacOS) |

## Tools to install

- [fish](https://fishshell.com/)
- [stow](https://www.gnu.org/software/stow/)
- Neovim (using [bob](https://github.com/MordechaiHadad/bob))
  - Manually install missing LSPs
- [tmux](https://github.com/tmux/tmux/wiki/Installing)
- [Volta for Node version management](https://volta.sh/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf)
- [cargo-binstall](https://github.com/cargo-bins/cargo-binstall)
  - eza (ls replacement)
  - gitui
  - bat
