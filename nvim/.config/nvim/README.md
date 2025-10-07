# Ingalless' config

## External Dependencies

- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [fd](https://github.com/sharkdp/fd?tab=readme-ov-file#installation)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Language Setup:
  - If want to write Typescript, you need `npm`
  - If want to write Golang, you will need `go`
  - etc.

## Environment-Specific Configuration

I use this config across a few different environments where things need to change slightly.
To facilitate this, create the `./lua/user/overrides.lua` file and put overrides in there.
This file is added to the git repository but ignored.
