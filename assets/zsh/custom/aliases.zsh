alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"
alias cat="bat"
alias drmi='docker rmi $(docker images -f "dangling=true" -q)'
alias lzd="lazydocker"

EXA_OPTIONS=(
    # DISPLAY OPTIONS
    '--classify' '--color-scale' '--icons'
    # FILTERING AND SORTING OPTIONS
    '--group-directories-first'
    # LONG VIEW OPTIONS
    '--binary' '--group' '--time-style=long-iso' '--git'
)

alias ls="exa"
alias l="exa --long ${EXA_OPTIONS}"
alias ll="exa --long --all --header ${EXA_OPTIONS}"
alias llm="exa --long --all --header --sort=modified ${EXA_OPTIONS}"
alias la="exa -lhHiUmuSa ${EXA_OPTIONS}"
alias lx="exa -lhHiUmuSa@ ${EXA_OPTIONS}"
alias lS="exa -1"
alias lt="exa --tree --level=2"