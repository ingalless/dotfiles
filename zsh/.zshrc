# Configure Jira CLI
# Put the below in .zprofile or .zshenv
# export JIRA_URL='https://org.atlassian.net'
# export JIRA_API_TOKEN=""

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="refined"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export BROWSER='/usr/bin/google-chrome-stable'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias v="nvim"
alias v.="nvim ."
alias art="php artisan"
alias ts="tmux-sessionizer"
alias zs="zed-sessionizer"
alias ta="tmux attach"
# alias zs="zellij-sessionizer"
# alias za="zellij attach"
alias dcu="docker compose up -d"
alias dcd="docker compose down"
# alias dce="docker exec -it"
alias dlog="docker container logs -f"
alias dcls="docker container ls"
alias dc="docker compose"
alias e="exit"
alias c="composer"
alias clip="xclip -selection c"
alias gdone="git-close-branch"
alias bb="bitbucket-helpers"
alias n="nb"
alias ls="eza"
alias ll="eza -lh"
alias tree="eza -aT"

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/scripts:$PATH
export PATH=$HOME/.dotnet/tools:$PATH
export PATH=$HOME/.local/lua-language-server/bin:$PATH
export PATH=$HOME/.dotnet:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/share/bob/nvim-bin:$PATH
export PATH=/opt/homebrew/bin:$PATH

# bun completions
[ -s "/home/ingalless/.bun/_bun" ] && source "/home/ingalless/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
