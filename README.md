# Jonny's Dotfiles

> Heavily inspired by [this](https://github.com/freekmurze/dotfiles)

To install clone the repository to `.dotfiles` in your home directory, then run the bootstrap script:

```sh
git clone https://github.com/ingalless/dotfiles.git .dotfiles
cd .dotfiles
./bootstrap
```

## Usage

Use GNU Stow to set things up.
```bash
# Example
stow bin
```

## Neovim stowing notes

You have two folders to stow, namely:
* nvim
* nvim-overrides

```bash
stow nvim nvim-overrides
```

## Tools to install

* [zsh](https://ohmyz.sh/)
* [stow](https://www.gnu.org/software/stow/)
* Neovim (maybe use [bob](https://github.com/MordechaiHadad/bob)?)
    * Once neovim is installed and configured, [Mason](https://github.com/williamboman/mason.nvim) handles installing LSPs.
* [tmux](https://github.com/tmux/tmux/wiki/Installing) (but I wouldn't mind trying [zellij](https://github.com/zellij-org/zellij))
* [Volta](https://volta.sh/)
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* [fzf](https://github.com/junegunn/fzf)
* [cargo-binstall](https://github.com/cargo-bins/cargo-binstall)
    * eza
    * gitui
    * bat
