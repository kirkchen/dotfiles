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