##########################################################################################
#											 #
#											 #
#				     Captain Unix ZSH					 #
#					version 1					 #
#				        main Theme					 #
#											 #
#											 #
##########################################################################################

# --------------------------------- SSH config ----------------------------------------

export SSH_KEY_PATH="~/.ssh/rsa_id"

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
fi

# ---------------------------------------- alias ----------------------------------------

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# --------------------------------- Oh my ZSH config ------------------------------------

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="g3rb0ise"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"
#----------------------------------- SCREEN FETCH-------------------------------------------
#screenfetch

#----------------------------------- LANGUE -------------------------------------------
export LC_ALL="fr_FR.UTF-8"
