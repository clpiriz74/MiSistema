# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# --- MEJORAS DE AUTOCOMPLETADO (TAB) ---
 
# Si el autocompletado tiene varias opciones, la primera pulsación de Tab muestra la lista.
# La segunda pulsación empieza a recorrer las opciones en un menú.
bind 'set show-all-if-ambiguous on'
bind 'set menu-complete-display-prefix on'
bind '"\t": menu-complete'
 
# Ignorar mayúsculas y minúsculas al autocompletar con Tab
bind 'set completion-ignore-case on'
 
alias ls='lsd'
alias cat='bat'
alias grep='grep --color=auto'
alias xi='sudo xbps-install -S'
alias xu='sudo xbps-install -Su'
alias xq='xbps-query -Rs'
alias xr='sudo xbps-remove -R'
alias xo='sudo xbps-remove -O'
alias vim='/usr/bin/vim-normal'
 
if [[ $EUID -eq 0 ]]; then
  # Prompt para root (rojo)
  PS1='\[\e[1;31m\][\u@\h \[\e[1;34m\]\w\[\e[0m\]\[\e[1;31m\]]\n# \[\e[0m\]'
else
  # Prompt para usuarios normales (verde)
  PS1='\[\e[1;32m\][\u@\h \[\e[1;34m\]\w\[\e[0m\]\[\e[1;32m\]]\n$ \[\e[0m\]'
fi
 
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
