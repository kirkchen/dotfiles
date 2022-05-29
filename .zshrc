export DOTFILES_PATH=~/.dotfiles

source "$DOTFILES_PATH/oh-my-zsh.zsh"

for config in $DOTFILES_PATH/zsh/configs/*; do
  source $config
done

# Local config
[[ -f "$HOME/.zshrc.local" ]] && source $HOME/.zshrc.local
