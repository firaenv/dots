# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/zaney/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

# Archive Extraction
# Usage: ex <file>
ex ()
{
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)	tar xjf $1	;;
			*.tar.gz)	tar xzf $1	;;
			*.bz2)		bunzip2 $1	;;
			*.rar)		unrar x $1	;;
			*.gz)		gunzip $1	;;
			*.tar)		tar xf $1	;;
			*.tbz2)		tar xjf $1	;;
			*.tgz)		tar xzf $1	;;
			*.zip)		unzip $1	;;
			*.7z)		7z x $1		;;
			*.tar.xz)	tar xf $1	;;
			*.tar.zst)	unzstd $1	;;
			*)		echo "'$1' cannot be extracted via ex()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

## ALIASES ##

# navigation
alias ..='cd ..'
alias ...='cd ../..'

alias ls='lsd'
alias p='doas pacman'

# vim
alias v='vim'

# Add Color
alias grep='grep --color=auto'
