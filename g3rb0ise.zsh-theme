##########################################################################################
#											 #
#											 #
#				     Captain Unix Theme					 #
#					version 1					 #
#				        main Theme					 #
#											 #
#											 #
##########################################################################################

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function get_pwd() {
  print -D $PWD
}

function put_spacing() {
  local git=$(git_prompt_info)
  if [ ${#git} != 0 ]; then
    ((git=${#git} - 10))
  else
    git=0
  fi
  if [ ${#bat} != 0 ]; then
    ((bat = ${#bat} - 18))
  else
    bat=0
  fi

  local termwidth
  (( termwidth = ${COLUMNS} - 3 - ${#HOST} - ${#$(get_pwd)} - ${bat} - ${git} ))

  local spacing=""
  for i in {1..$termwidth}; do
    spacing="${spacing} " 
  done
  echo $spacing
}
function precmd() {

}

PROMPT='$fg[cyan]%n:$fg[yellow]$(get_pwd)$(put_spacing)$(git_prompt_info)
%{$reset_color%}→ '

ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[orange]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"
