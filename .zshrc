# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle :compinstall filename '/home/brent/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install

# source aliases
ALIASFILE=~/.aliases
source $ALIASFILE
function aa() {
    if [[ -z $1 || -z $2 || $# -gt 2 ]]; then
        echo "[ aa - Add Alias ]"
        echo "usage: $0 alias 'command'"
    else
        echo "alias $1='$2'" >> $ALIASFILE
        source $ALIASFILE
        echo "alias $1 ADDED to $ALIASFILE"
    fi
}

# syntax highlighting
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/catppuccin_frappe-zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

EDITOR=$(which nvim)

# Add starship prompt
eval "$(starship init zsh)"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# Add rust to the path
export PATH=$PATH:$HOME/.cargo/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

