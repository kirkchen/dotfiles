source ~/.vim/oh-my-zsh.zsh

for config in ~/.vim/zsh/configs/*; do
  source $config
done

# Local config
[[ -f "$HOME/.zshrc.local" ]] && source $HOME/.zshrc.local