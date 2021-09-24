# Bullet-train config
BULLETTRAIN_PROMPT_ORDER=(
  context
  dir
  git
  ruby
  nvm
  # go
  # time
  cmd_exec_time
)
BULLETTRAIN_NVM_SHOW=true
BULLETTRAIN_GO_SHOW=true
BULLETTRAIN_EXEC_TIME_SHOW=true
BULLETTRAIN_DIR_EXTENDED=2
BULLETTRAIN_GIT_PROMPT_CMD=\${\$(git_prompt_info)//\\//\ \ }
BULLETTRAIN_CONTEXT_HOSTNAME=MacbookPro

# Tmux
export EDITOR=vim

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerline"
ZSH_THEME="bullet-train.zsh/bullet-train"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ruby zsh-autosuggestions extract z alias-tips docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Git Alias
unalias gb
alias gbr="git branch"
alias gcbr="git rev-parse --abbrev-ref HEAD"
alias gpsu="git push --set-upstream origin \$(git rev-parse --abbrev-ref HEAD)"
alias gcoi="git checkout \$(git branch | cut -c 3- | pick)"
alias gmi="git merge \$(git branch | cut -c 3- | pick)"
alias gmdb="f() { if [ -z \$1 ]; then echo 'Please assign branch namespace.'; else git branch | awk -F. '/'"\$1"'/{print}' | xargs -I {} git branch -D {}; fi }; f"
alias gdt="git difftool"
alias ,,="cd \$(git rev-parse --show-toplevel)"

# Tools
alias mux="tmuxinator"
alias ctags="`brew --prefix`/bin/ctags"
alias t="tig"
alias ts="tig status"
alias cat='bat'

# Kubernetes
alias kctxi="kctx \$(kubectl config get-contexts -o name | pick)"
alias knsi="kns \$(kubectl get namespace -o name | cut -d'/' -f2 | pick)"

# BBS
alias ptt="ssh bbsu@ptt.cc"
alias ptt2="ssh bbsu@ptt2.cc"

# Editor
alias e="$EDITOR"

# exa
alias ls='exa'
alias ll='exa -lbFa --git --sort=Name'
alias lt='exa --tree --level=2'

# Visual Studio Code
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

# Now
function now {
  echo $(date -u '+%Y%m%d%H%M%S')
}

# fixup: git auto rebase from specific commit
function fixup {
  if [[ $# = 0 ]]
  then
    echo "No argument supplied"
  else
    echo "Committing..."
    git commit -m "fixup! ${1}" --no-verify > /dev/null
    echo "Attempting to stash working directory..."
    stashResult=$(git stash)
    echo "Rebasing on top of ${1}"
    git rebase -i "${1}^" --autosquash
    if [ "$stashResult" != "No local changes to save" ]
    then
      echo "Popping from stash"
      git stash pop > /dev/null
    fi
  fi
}

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

# Local config
[[ -f "$HOME/.zshrc.local" ]] && source $HOME/.zshrc.local