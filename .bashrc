#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

alias ls="ls -h --color=auto"
alias b="mvn spring-boot:run"


function search_for {
        find . -exec grep -il $1 {} \;
}

function cpp_compile {
        g++ -std=c++0x -Wall $1
}

function make_tv {
	xrandr --output LVDS1 --mode 1366x768 --output VGA1 --mode 1360x768 --right-of LVDS1
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
	local   LIGHT_RED="\[\033[1;31m\]"
  local       BLACK="\[\033[0;00m\]"

	export PS1="\[\033[01;32m\]\u@\h \[\033[00;31m\]\W$LIGHT_RED\$(parse_git_branch) \[\033[00;31m\]$ \[\033[00m\]"
}
proml
