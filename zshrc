eval "$(starship init zsh)"
export LANG=en_US.UTF-8

for file in ${HOME}/.sh.d/*.sh
do
  source $file
done

export EDITOR=/usr/bin/vim

[[ -f ${HOME}/.Xmodmap ]] && xmodmap ~/.Xmodmap