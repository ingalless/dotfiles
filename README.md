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
