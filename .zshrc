# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
# zstyle ':vcs_info:git:*' formats 'on branch %b'
zstyle ':vcs_info:git:*' formats '(%b)'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
# PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} $ '
PROMPT=$'%1d\e[0;32m${vcs_info_msg_0_}\e[0m $ ' #working
# PROMPT=$'${PWD/#$HOME/~} \e[0;32m${vcs_info_msg_0_}\e[0m $ '