# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# fi

# EKM aliases
alias dfh='df -h; showTimeVar'
alias easygit='findRMBackup; setTimeVar ; git add .; git commit -m "$TIME_VAR"'
alias emacsnw='emacs -nw'
alias ekmdate='date  +%Y-%m-%d\ %H:%M:%S\ %A\ %Z\ %z'
alias findBackup='find . -name "*~"'
alias findRMBackup='find . -name "*~" -exec rm -v {} \;'
alias igrep='grep -i'
alias launch-nm-applet='dbus-launch nm-applet &'
alias ls='ls -F --color=never'
alias mkdirpv='mkdir --parents --verbose'
alias mvv='mv -v'
alias nanoc='nano --const'
alias phistory='history | cut -c 8-'
alias psFire='ps -deaf | grep fire; echo `date +%Y-%m-%d_%H.%M.%S`'
alias randpw='< /dev/urandom tr -dc _A-Z-a-z-0-9\+\.- | head -c${1:-20};echo;'
alias runKawa='/home/ericm/jar.files/kawa-2.4/bin/kawa'
alias setTimeVar='TIME_VAR=`date +%Y-%m-%d_%H.%M.%S`'
alias showTimeVar='echo `date +%Y-%m-%d_%H.%M.%S`'
alias sup='su --preserve-environment'
alias testDisk='dmesg | cat >> dmesg.test.txt'
alias vgrep='grep -v'

# Go
# Should this be GOROOT or  GOPATH
# export GOROOT=$HOME/go
# export GOPATH=/home/ericm/work/gopath
# export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Thunderbird
export NSPR_LOG_MODULES=pop3:5,smtp:5,timestamp
export NSPR_LOG_FILE=/home/ericm/github/groovy_email/log/thunderbird.log
export GECKO_SEPARATE_NSPR_LOGS=1

#- Java
# export JAVA_HOME=/usr/local/java/jdk1.7.0
# export JDK_HOME=/usr/local/java/jdk1.7.0
# jdk1.8.0_05
export JAVA_HOME=/usr/local/java/jdk-9
export JDK_HOME=/usr/local/java/jdk-9
CLASSPATH=.:$JAVA_HOME/jre/lib/rt.jar
# alias netbeans='/usr/local/netbeans-7.2.1/bin/netbeans'
export ANT_HOME=/home/ericm/jarFiles/apache-ant-1.9.6
export MAVEN_HOME=/home/ericm/jarFiles/apache-maven-3.2.3
#- export PATH=$JAVA_HOME/bin:$PATH
RACKET_HOME=$HOME/racket/bin
PATH=$MAVEN_HOME/bin:$JAVA_HOME/bin:/zEKM/android-sdk-linux/tools:$RACKET_HOME:$ANT_HOME/bin:$PATH

#- for git
export EDITOR=nano
alias jedit='java -jar /home/ericm/jar.files/jEdit/5.4.0/jedit.jar'
export BOOT_CLOJURE_VERSION=1.8.0

# This is a good place to source rvm v v v
#  [[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"  # This loads RVM into a shell session.
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#- EOF
# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# export GEM_AUTHORITY_PATH=/home/ericm/tmp/ruby.events/gems


# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#THIS MUST BE AT THE END OF THE FILE FOR SDK TO WORK!!!
#  export SDKMAN_DIR="/home/ericm/.sdkman" && source "/home/ericm/.sdkman/bin/sdkman-init.sh"
[[ -s "/home/ericm/.sdkman/bin/sdkman-init.sh" ]] && source "/home/ericm/.sdkman/bin/sdkman-init.sh"
