
# Homebrew file wrap
export HOMEBREW_BREWFILE=~/.vim/Brewfile
[[ -f $(brew --prefix)/etc/brew-wrap ]] && source $(brew --prefix)/etc/brew-wrap

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Nvm
export NVM_DIR="$HOME/.nvm"
[[ -f "/usr/local/opt/nvm/nvm.sh" ]] && source "/usr/local/opt/nvm/nvm.sh"

# Iterm
[[ -f "${HOME}/.iterm2_shell_integration.zsh" ]] && source "${HOME}/.iterm2_shell_integration.zsh"

# fzf
[[ -f "${HOME}/.fzf.zsh" ]] && source ${HOME}/.fzf.zsh
