HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTSIZE=10000
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS

eval "$(starship init zsh)"
eval "$(fasd --init auto)"

export LANG=en_US.UTF-8

for file in ${HOME}/.sh.d/*.sh
do
  source $file
done

export EDITOR=/usr/bin/vim

[[ -f ${HOME}/.Xmodmap ]] && xmodmap ~/.Xmodmap
