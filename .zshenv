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
alias activatevenv='source ~/.venvs_py/bin/activate'
alias bluetooth='sudo sh $HOME/.config/scripts/bluetooth.sh'
alias blueztui='bluetuith'
alias brainstorm='~/Downloads/apps/brainstorm3/bin/R2022b/brainstorm3.command /home/braeden/Downloads/apps/MATLAB_R2022b/R2022b/'
alias brainsuite='devour ~/Downloads/apps/BrainSuite23a/bin/BrainSuite23a'
alias chrome='devour google-chrome-stable'
alias changebg='python3 $HOME/.config/scripts/random_wall.py'
alias discord='devour ~/Downloads/apps/Discord/Discord'
alias dcm2nii='~/Downloads/apps/mricron/Resources/dcm2niix'
alias edge='devour microsoft-edge-stable'
alias hx='helix'
alias img='nsxiv'
alias la='exa -a'
alias lx='ls -ax --time=access'
alias lv='ls -auhoF'
alias lights='sudo chmod -R 777 /sys/class/backlight/intel_backlight'
alias lincebi='sudo sh ~/.config/scripts/lincebi.sh '
alias mricron='~/Downloads/apps/mricron/MRIcron'
alias newt='tmux attach -t projects'
alias opac='sudo sh $HOME/.config/scripts/change_opacity.sh'
alias pacman='sudo pacman'
alias pycharm='sh ~/Downloads/apps/pycharm-community-2023.2.3/bin/pycharm.sh'
alias savehome='sh ~/.config/scripts/savehome.sh'
alias setbg='sh $HOME/.config/scripts/setbg.sh'
alias shx='sudo helix'
alias sshadd='eval "$(ssh-agent -s)" && ssh-add ~/.credentials.git'
alias start='tmux new -s projects -c ~/projects'
alias svim='sudoedit'
alias randbg='python3 $HOME/.config/scripts/change_wall.py'
alias rustrover='sh ~/Downloads/apps/RustRover-232.9921.62/bin/rustrover.sh'
alias vim='nvim'


# #color
export LS_COLORS="$(vivid generate ~/.config/vivid/themes/color.yml)"
export LS_OPTIONS='--color=auto'

# eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'

#prompt
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{23}%f%%F{23}%F{110}%F{23}[%F{101}%b%F{23}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{116}:%F{116}%r'

zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[116]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
# dark red = 88
PS1='$(vcs_info_wrapper)%F{1}%1~ %F{178}|%f '

bindkey -M viins '^f' vi-cmd-mode

#source $HOME/.local/share/broot/launcher/bash/1

#PATH

export HOME=/home/braeden
export PATH=$PATH:/home/braeden/mblocks/target/release
