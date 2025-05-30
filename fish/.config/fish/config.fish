# Configure Jira CLI
# Put the below in .zprofile or .zshenv
# export JIRA_URL='https://org.atlassian.net'
# export JIRA_API_TOKEN=""

set -gx EDITOR 'nvim'
set -gx MANWIDTH 120
set -g fish_greeting

# abbr --add zs "zed-sessionizer"
alias v "nvim"
alias vim "nvim"
alias ts "tmux-sessionizer"
alias ta "tmux attach"
alias zs "zellij-sessionizer"
alias za "zellij attach"
alias e "exit"
alias n "nb"
alias ls "eza"
alias ll "eza -lh"
alias tree "eza -aT"
alias lg "lazygit"
alias gdone "git-close-branch"

abbr --add v. "nvim ."
abbr --add art "php artisan"
abbr --add dcu "docker compose up -d"
abbr --add dcd "docker compose down"
abbr --add dlog "docker container logs -f"
abbr --add dcls "docker container ls"
abbr --add dc "docker compose"
abbr --add c "composer"
abbr --add clip "xclip -selection c"

# Git
abbr --add gc "git commit"
abbr --add ga "git add"
abbr --add gd "git diff"
abbr --add gb "git branch"

fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/scripts
fish_add_path $HOME/.dotnet/tools
fish_add_path $HOME/.local/lua-language-server/bin
fish_add_path $HOME/.dotnet
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/share/bob/nvim-bin
fish_add_path /opt/homebrew/bin

# volta
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin:$PATH"

# Zellij sessionizer binding
# bindkey -s ^f "zellij-sessionizer\n"

