# Jonny's Dotfiles

To install clone the repository to somewhere in your home directory

```sh
git clone https://github.com/ingalless/dotfiles.git
cd dotfiles
```

## Usage

Use GNU Stow to set things up.
```bash
# Example setup for scripts, nvim and tmux
stow bin nvim tmux
```

## Neovim

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
