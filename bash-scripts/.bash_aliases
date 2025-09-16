# File: $HOME/.bash_aliases
# THIS FILE IS A USER-CUSTOM BASHRC FILE TO KEEP CLEAN THE DEFAULT ~/.barshrc FILE.
# PUT THERE ANY CUSTOM CODE MANUALLY ADDED BY YOU

# Add a new line at the end of the command prompt
#PS1=${PS1}\\n
# PS1=${PS1%?}
# # PS1=${PS1%?}\n'$ '
# PS1="echo -e ${PS1%?}\n$ "
## Commenti per vecchio codice


##### ALIASES FUNCTIONS #####
## alias oldglo2="git log --oneline | sed -n '2p' | cut -d ' ' -f1"
alias gloo="git log --oneline"
alias gloo2="git log --oneline | sed -n '2p' | sed 's/ .*//' | cat"
# glo2qq() {
#   $(gloo2) 2> /dev/null | sed -n '2p' | sed 's/ .*//' | cat
# }

# Non mi funzionava bene gre2, da non usare
# alias gre2="git reset $(gloo2)"
# # gre2qq() {
# #   git reset $(gloo2)
# # }

alias gpuf="git push -f"


# Commenti multilinea
<<COMMENTO
Prova commento
COMMENTO
