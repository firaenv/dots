# Add directories to PATH if they don't exist already
for dir in "${HOME}"/.scripts/ "${HOME}"/.scripts/*/ "${HOME}"/.local/share/npm/bin; do
	[ -n "${PATH##*${dir%/}*}" ] && PATH="${PATH}:${dir}"
done


export PATH
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export TERMINAL="alacritty"
export BROWSER="qutebrowser"
export EDITOR="vim"
