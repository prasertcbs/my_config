# export PATH=$HOME/.local/bin $PATH
set PATH $PATH $HOME/.local/bin
export EDITOR=vim
if status is-interactive
    # Commands to run in interactive sessions can go here
    xrandr -s 1920x1080
#    if not xrandr | grep -q 1920x1080
#        xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
#        xrandr --addmode Virtual1 1920x1080_60.00
#    end 
#    xrandr --output Virtual-1 --primary --mode 1920x1080_60.00
    xset b off

    alias ls=exa
    alias ll='ls -al'
    alias l='ls -l'
    # alias lh='ls -a | grep "^\."'
    alias l.='fd -H -d 1 "^\."'
    alias ld='ls -d */'
    alias vim=nvim
    alias tree='exa --tree'
    alias h=history
    alias df='df -h'
    alias cc='cd ~/.config' 

    # tmux
    alias tmuxn='tmux new -s $1'
    alias tmuxa='tmux attach-session -t $1'
    alias tmuxk='tmux kill-session -t $1'

    # Arch linux pacman
    alias pacman='sudo pacman --color auto'
    alias cleanup='sudo pacman -Rns (pacman -Qtdq)'
    alias update='sudo pacman -Syyu'

    set EDITOR /usr/bin/nvim
end
