# Oh My Posh
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/config.json)"

set -a
source ~/.config/.env
set +a

export XDG_CONFIG_HOME="$HOME/.config"
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_STYLE_OVERRIDE=kvantum

# -------------------------------
# History Settings
# -------------------------------

HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

# -------------------------------
# zoxide
# -------------------------------

eval "$(zoxide init zsh)"

# Optional: replace cd
# alias cd='z'

# -------------------------------
# Useful Aliases
# -------------------------------

alias ls='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias gstatus='git status'
alias gadd='git add .'
alias gcom='git commit -m'
alias gpush='git push'
alias glog='git log --oneline --graph --decorate'
alias gpull='git pull'

# -------------------------------
# FZF integration (if installed)
# -------------------------------

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# -------------------------------
# Better Prompt (simple & clean)
# -------------------------------

autoload -Uz colors && colors
PROMPT='%F{cyan}%n@%m%f %F{yellow}%~%f %# '

# -------------------------------
# Bindings 
# -------------------------------

# Esc key to backwards kill line
bindkey '^[^?' backward-kill-line

# Ctrl+Backspace delete previous word
bindkey '^H' backward-kill-word

# Ctrl+U delete whole line
bindkey '^U' kill-whole-line

# Ctrl+Arrow navigation (if terminal supports it)
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
