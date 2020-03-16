function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function node_version() {
  local br
  br=$(node -v)
  test -n "$br" && printf %s "$br" || :
}

# git branch and node version
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[35m\](\$(node_version))\[\033[00m\] $ "

# Linux file colors
export CLICOLOR=1
export LSCOLORS='ExGxBxDxCxEgEdxbxgfxDx'
export LS_COLORS='di=1;34:ln=1;36:so=1;31:pi=1;33:ex=1;32:bd=1;34;46:cd=1;34;43:su=0;41:sg=0;46:tw=35:ow=1;33'

# git branch
# export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export MY_PROFILE="${HOME}/.bash_profile"

alias ll='ls -al'
alias refresh='source ~/.bash_profile'
alias profile='code $MY_PROFILE'
alias projects="cd $HOME/projects;"
# alias saucy='~/Downloads/sc-4.5.3-osx/bin/sc -u UI-Dev -k 956fb15f-3798-4c5a-baa0-be03dab9fc52'
# alias cleanbuild='rm -rf node_modules/ && npm i && m build $1'
# alias createartifact='sh ~/projects/scripts/createArtifact.sh'
# alias fixprecommithook='sh ~/projects/scripts/fixPrecommitHook.sh'
alias simplehttp='python -m SimpleHTTPServer 8000'
# alias sshadd='ssh-add -K ~/.ssh/id_rsa'

export PATH=$PATH:~/.bin:~/projects/scripts/bash-blade/:~/.local/bin
export NVM_DIR="/Users/a108168/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Go to marked symlink
# function jump() {
#   local ret=1;
#   $(which mark);ret=$?

#   if [ $ret -eq 0 ]; then
#     res=$(mark -s "$1");
#     ret=$?; # exit code

#     # return is true and response is not empty
#     if [ $ret -eq 0 -a ! -z res ]; then
#       cd $res
#       ls -al
#     else
#       printf "%s\n" "$res";
#     fi
#   fi
# }

# alias home="$(which mark) && cd $(mark -s home) && ls -al"
# alias home="jump home"