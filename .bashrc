# .bashrc

######################
# PERSONAL SETTINGS
######################

# use http proxy
# export https_proxy=http://192.168.9.88:7890 http_proxy=http://192.168.9.88:7890 all_proxy

# use bash-completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# display the history command date and time
export HISTTIMEFORMAT="%F %T "

# use GCC Toolset 11
if [ -f /opt/rh/gcc-toolset-11/enable ]; then
    source /opt/rh/gcc-toolset-11/enable
fi

# use cmake man page
export MANPATH=/opt/cmake-3.29.2-linux-aarch64/man:$MANPATH

# use cmake bash completions
if [ -f /opt/cmake-3.29.2-linux-aarch64/share/bash-completion/completions/cmake ]; then
    . /opt/cmake-3.29.2-linux-aarch64/share/bash-completion/completions/cmake
    # . /opt/cmake-3.29.2-linux-aarch64/share/bash-completion/completions/cpack
    # . /opt/cmake-3.29.2-linux-aarch64/share/bash-completion/completions/ctest
fi

alias cls='clear'
alias py3='python3'

# user define __git_ps1 to display branch name
unset -f __git_ps1 2>/dev/null

__git_ps1() {
    local branch
    branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    [ -n "$branch" ] && echo "($branch)"
}

PS1='\[\e[36m\][\[\e[32m\]\u@\h \e[34m\]\W\[\e[31m\]$(__git_ps1)\[\e[36m\]]\[\e[0m\]\$ '

set colored-stats on

set +o histexpand
