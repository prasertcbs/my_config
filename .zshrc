export EDITOR=vim
# Alt + right
bindkey "^[[1;3C" forward-word

# Alt + left
bindkey "^[[1;3D" backward-word

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/zelda/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="muse"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
plugins=(git 
  zsh-autosuggestions 
  zsh-completions
  zsh-z
  zsh-syntax-highlighting 
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls=exa
# alias ls='ls --color=auto'
# alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
# alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias l='ls -al'
alias ll='ls -l'
# alias lh='ls -a | grep "^\."'
alias l.='fd -H -d 1 "^\."'
alias la='l.'
alias ld='ls -d */'
alias df='df -h'

alias h=history
alias h0='history | cut -c 8-'

alias rg='rg -i'

alias cc='cd ~/.config'

# Debian apt
alias apt='sudo apt'
alias cleanup='sudo apt autoremove'
alias update='sudo apt update && sudo apt upgrade'

alias fcl='fortune | cowsay | lolcat'

# tmux
alias tmuxn='tmux new -s $1'
alias tmuxa='tmux attach-session -t $1'
alias tmuxk='tmux kill-session -t $1'

# docker alias
alias dcup='docker-compose up -d'
alias dcdw='docker-compose down'

alias dps='docker container ls -a'
alias dimg='docker images ls'

# alias drun_pg='docker run --rm --name pegasus -d -e POSTGRES_PASSWORD=banana -p 5432:5432 postgres'

# xrandr display resolution
if xrandr | grep -q 1920x1080
then
   xrandr --output Virtual1 --primary --mode 1920x1080_60.00
else
   xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
   xrandr --addmode Virtual1 1920x1080_60.00
   xrandr --output Virtual1 --primary --mode 1920x1080_60.00
fi

#source /home/zelda/.config/broot/launcher/bash/br

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/zelda/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/zelda/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/zelda/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/zelda/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

