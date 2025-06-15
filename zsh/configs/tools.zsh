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

# GVM
[[ -s "/Users/kirk.chen/.gvm/scripts/gvm" ]] && source "/Users/kirk.chen/.gvm/scripts/gvm"

# dotnet
[[ -d "$HOME/.dotnet" ]] && export PATH="$HOME/.dotnet:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Windsurf
[[ -d "/Users/kirk.chen/.codeium/windsurf/bin" ]] && export PATH="/Users/kirk.chen/.codeium/windsurf/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/kirk.chen/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac