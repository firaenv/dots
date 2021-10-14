# Add directories to PATH if they don't exist already
for dir in "${HOME}"/.local/bin/ "${HOME}"/.local/bin/*/ "${HOME}"/.local/share/npm/bin; do
	[ -n "${PATH##*${dir%/}*}" ] && PATH="${PATH}:${dir}"
done

export SCRIPTDIR=$HOME/.local/share/scriptdeps
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export TERMINAL="alacritty"
export BROWSER="qutebrowser"
export EDITOR="vim"

[[ -f ~/.bashrc ]] && . ~/.bashrc

### OPENBSD ###
# PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
# export PATH HOME TERM
