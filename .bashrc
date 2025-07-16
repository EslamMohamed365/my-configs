#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias prime-run='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia'
alias ll='eza -lha --color=auto --icons=auto'
alias ls='eza -1a --color=auto --icons=auto'
alias la='eza -a --color=auto --icons=auto'
alias lt='eza -a --tree --color=auto --icons=auto'
alias lg="g -A --table --table-style=unicode --file --long"
alias grep='grep --color=auto'
alias timeshift='sudo -E timeshift-gtk'
alias ins='paru -S'
alias uns='paru -Rns'
alias paruinfo="paru -Slq | fzf --multi --preview 'paru -Sii {1}' --preview-window=down:75% | xargs -ro paru -S"
alias yay='paru'
alias nano='nvim'
alias nv='nvim'
alias fishs='asciiquarium'
alias note='tjournal'
alias lg='lazygit'
alias lj='lazyjj'
alias todo='basilk'
alias top='bpytop'
export MANPAGER='nvim +Man!'
export EDITOR=nvim
export VISUAL=nvim
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
eval "$(zoxide init bash)"

#zide
export PATH="$PATH:$HOME/.config/zide/bin"
# Created by `pipx` on 2025-06-30 22:17:21
export PATH="$PATH:/home/eslam/.local/bin"
. "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
