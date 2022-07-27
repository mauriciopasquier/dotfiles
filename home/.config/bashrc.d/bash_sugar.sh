export TERMINAL=kitty
export EDITOR=nvim
# Para que ls no cite cosas con espacio.
export QUOTING_STYLE=literal

# Colores!
alias tree='tree -C --dirsfirst'
alias grep='grep --color=auto'

# Human numbers: -h
alias df='df -h'
alias ls='ls --color=always -h --group-directories-first'
alias l='ls -la'
alias ll='ls -l'

# Strictly better.
alias vim='nvim'
alias cat='bat -pp'
alias mutt='neomutt'

# Para que tmux funcione con direnv
alias tmux='direnv exec / tmux'

# Muy verbose
alias R="R --quiet"

# git
alias git="LC_ALL=en_US.UTF-8 git"
