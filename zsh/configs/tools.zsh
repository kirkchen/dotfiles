
# Homebrew file wrap
export HOMEBREW_BREWFILE=~/.vim/Brewfile
[[ -f $(brew --prefix)/etc/brew-wrap ]] && source $(brew --prefix)/etc/brew-wrap

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
[[ -d "$HOME/.rbenv" ]] && eval "$(rbenv init -)"

# Nvm
export NVM_DIR="$HOME/.nvm"
[[ -f "/opt/homebrew/opt/nvm/nvm.sh" ]] && source "/opt/homebrew/opt/nvm/nvm.sh"

# Iterm
[[ -f "${HOME}/.iterm2_shell_integration.zsh" ]] && source "${HOME}/.iterm2_shell_integration.zsh"

# fzf
[[ -f "${HOME}/.fzf.zsh" ]] && source ${HOME}/.fzf.zsh
