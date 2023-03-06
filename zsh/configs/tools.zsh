# Homebrew
[[ -f "/opt/homebrew/bin/brew" ]] && eval "$(/opt/homebrew/bin/brew shellenv)"

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

# Jetbrains
[[ -d "$HOME/.jetbrains" ]] && export PATH="$HOME/.jetbrains:$PATH"
