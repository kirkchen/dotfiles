# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="bullet-train.zsh/bullet-train"

# Bullet-train config
BULLETTRAIN_PROMPT_ORDER=(
  context
  dir
  git
  ruby
  nvm
  cmd_exec_time
)
BULLETTRAIN_NVM_SHOW=true
BULLETTRAIN_GO_SHOW=true
BULLETTRAIN_EXEC_TIME_SHOW=true
BULLETTRAIN_DIR_EXTENDED=2
BULLETTRAIN_GIT_PROMPT_CMD=\${\$(git_prompt_info)//\\//\ \ }
BULLETTRAIN_CONTEXT_HOSTNAME=MacbookPro

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ruby zsh-autosuggestions z alias-tips docker-compose)

source $HOME/.oh-my-zsh/oh-my-zsh.sh