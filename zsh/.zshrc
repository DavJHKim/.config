# Oh My Posh
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/config.json)"

set -a
source ~/.config/.env
set +a

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

alias ll='ls -lah'
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
