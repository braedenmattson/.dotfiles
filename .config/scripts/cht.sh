#!/usr/bin/env bash
selected=`cat ~/.config/scripts/.tmux-cht-languages ~/.config/scripts/.tmux-cht-command | fzf`
if [[ -z $selected ]]; then
    exit 0
fi

read -p "Enter Query: " query

if grep -qs "$selected" ~/.config/scripts/.tmux-cht-languages; then
    query=`echo $query | tr ' ' '+'`
    tmux neww  bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query | bat "
else
    tmux neww v bash -c "curl -s cht.sh/$selected~$query | bat"
fi

