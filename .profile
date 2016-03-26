PATH="${HOME}/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/sbin"
PATH="${PATH}:/usr/local/bin"
export PATH

FORTUNE_PATH="${HOME}/.fortune:/usr/share/games/fortune"
export FORTUNE_PATH

ENV=$HOME/.shrc;	export ENV
BLOCKSIZE=K;		export BLOCKSIZE
EDITOR=vi;			export EDITOR
PAGER=less;			export PAGER
BROWSER=seamonkey;	export BROWSER

#=== some usefull aliases ===>
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -FGh'
alias su='su -m'

if [ -f /usr/local/bin/vim ]; then
	alias vi='vim'
fi

#=== shell options ===>
shopt -s cdspell
shopt -s cdable_vars
shopt -s checkhash
shopt -s checkwinsize
shopt -s sourcepath
shopt -s cmdhist
shopt -s histappend histreedit histverify
shopt -s extglob

#=== less options ===>
LESS="-R";                             export LESS

#=== seting up the command history ===>
HISTFILE="${HOME}/.history";           export HISTFILE
HISTCONTROL="ignoredups,erasedups";    export HISTCONTROL
HISTIGNORE="&:[bf]g:ls*:cd";           export HISTIGNORE
HISTSIZE=500;                          export HISTSIZE
HISTFILESIZE=500;                      export HISTFILESIZE
PROMPT_COMMAND='history -a';           export PROMPT_COMMAND

#=== color definitions ===>
if [ -f ${HOME}/.colors ]; then
	source ${HOME}/.colors
fi

#=== seting up the shell prompt ===>
#PS1="\n${purple}╓─[ "
#case $( id -u ) in
#	0) PS1="${PS1}${red}\u${brown}@${red}$(hostname)";;
#	*) PS1="${PS1}${green}\u${brown}@${green}$(hostname)";;
#esac
#PS1="${PS1}${purple} ]\n"
#PS1="${PS1}${darkgray}  ( ${cyan}\w ${darkgray})\n"
#PS1="${PS1}${purple}╙─${nc}\\$ "
#export PS1

PS1="${purple}╓──${darkgray}( ${cyan}\w ${darkgray})\n${purple}╙─[ "
case `id -u` in
	0) PS1="${PS1}${red}\u${brown}@${red}`hostname`";;
	*) PS1="${PS1}${green}\u${brown}@${green}`hostname`";;
esac
PS1="${PS1}${purple} ]${nc}\\$ "
export PS1

