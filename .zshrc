
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/braeden/.zshrc'


#status bar
#xsetroot -name $STATUS &
#sh ~/.config/scripts/statusbar.sh &
#
#fzf
export FZF_DEFAULT_OPTS='--bind=ctrl-k:up,ctrl-j:down'
#variables
export SHELL=/usr/bin/zsh

# pywal
# (cat ~/.cache/wal/sequences &)
#tmux
export EDITOR=nvim


autoload -Uz compinit
compinit
# End of lines added by compinstall
. "$HOME/.cargo/env"

#aliases
alias sshadd='eval "$(ssh-agent -s)" && ssh-add ~/.credentials.git'
alias cphome='sh ~/.config/scripts/savehome.sh'
alias blueztui='bluetuith'
alias newt='tmux attach -t projects'
alias start='tmux new -s projects -c ~/projects'
alias lights='sudo chmod -R 777 /sys/class/backlight/intel_backlight'
alias lincebi='sudo sh ~/.config/scripts/lincebi.sh '
alias activatevenv='source ~/.venvs_py/bin/activate'
alias changebg='sudo python3 $HOME/.config/scripts/random_wall.py'
alias setbg='sudo sh $HOME/.config/scripts/setbg.sh'
alias opac='sudo sh $HOME/.config/scripts/change_opacity.sh'
alias bluetooth='sudo sh $HOME/.config/scripts/bluetooth.sh'
alias pycharm='sh ~/Downloads/apps/pycharm-community-2023.2.3/bin/pycharm.sh'
alias rustrover='sh ~/Downloads/apps/RustRover-232.9921.62/bin/rustrover.sh'
alias hx='helix'
alias shx='sudo helix'
alias randbg='sudo python3 $HOME/.config/scripts/change_wall.py'
alias img='nsxiv'
alias chrome='devour google-chrome-stable'
alias edge='devour microsoft-edge-stable'
alias discord='devour flatpak run com.discordapp.Discord'
alias pacman='sudo pacman'
alias la='exa -a'
alias lx='ls -ax --time=access'
alias lv='ls -auhoF'
alias vim='nvim'


# #color
export LS_COLORS="$(vivid generate ~/.config/vivid/themes/color.yml)"
export LS_OPTIONS='--color=auto'

# eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'

#prompt
PS1='%F{blue}%~ %(?.%F{green}.%F{red})%#%f '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/braeden/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/braeden/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/braeden/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/braeden/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
bindkey -M viins '^f' vi-cmd-mode

#source $HOME/.local/share/broot/launcher/bash/1

#PATH

export HOME=/home/braeden
export PATH=$PATH:/home/braeden/mblocks/target/release
