# Staship
export STARTSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

set -a
source ~/.config/.env
set +a
