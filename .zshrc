# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
(cat ~/.cache/wal/sequences &)
powerline-daemon -q
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions" 
zplug "zsh-users/zsh-completions"
#zplug "themes/agnoster", from:oh-my-zsh
setopt prompt_subst # Make sure prompt is able to be generated properly.
zplug "dogrocker/oh-my-zsh-powerline-cute-theme", use:cute-theme.zsh-theme, defer:3 # defer until other plugins like oh-my-zsh is loaded

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
