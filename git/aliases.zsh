# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

alias gd="git diff"
alias ga="git add"
alias gaa="git add --all"
alias gbd="git branch -D"
alias gst="git status -sb"
alias gca="git commit -a -m"
alias gm="git merge --no-ff"
alias gpt="git push --tags"
alias gp="git push"
alias grh="git reset --hard"
alias gb="git branch"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gba="git branch -a"
alias gchp="git cherry-pick"
alias gl="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gpom="git pull origin master"
alias gcd='cd "`git rev-parse --show-toplevel`"'
alias gc='git add --all && git commit -m'
alias gw='git wtf'
alias gg='git grep'
alias gbig='git rev-list --objects --all | grep "$(git verify-pack -v .git/objects/pack/*.idx | sort -k 3 -n | tail -10 | awk '\''{print$1}'\'')"'
