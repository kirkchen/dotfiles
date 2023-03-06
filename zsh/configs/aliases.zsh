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