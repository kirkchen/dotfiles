[[ -z "$DOTFILES_PATH" ]] && export DOTFILES_PATH="${0:A:h}"

source "$DOTFILES_PATH/oh-my-zsh.zsh"

for config in $DOTFILES_PATH/zsh/configs/*; do
  source $config
done

# Local config
[[ -f "$HOME/.zshrc.local" ]] && source $HOME/.zshrc.local
