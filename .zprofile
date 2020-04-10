# git branch
export MY_PROFILE="${HOME}/.zprofile"

alias ll='ls -al'
alias refresh='source ~/.zprofile; source ~/.zshrc'
alias profile='code $MY_PROFILE'
alias projects="cd $HOME/projects;"
# alias saucy='~/Downloads/sc-4.5.3-osx/bin/sc -u UI-Dev -k 956fb15f-3798-4c5a-baa0-be03dab9fc52'
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
