alias copy='xclip -sel clip'
alias unquote='awk '"'"'{print substr($0, 2, length($0)-2)}'"'"''

###########################
### 1Password Functions ###
###########################

alias op-login='op signin my; eval $(op signin my)'

op-get-pass() {
    op get item "$1" | jq '.details.fields[] | select(.designation=="password").value'
}

op-get-user() {
    op get item "$1" | jq '.details.fields[] | select(.designation=="username").value'
}

op-list-items() {
    op list items --vault="$1" | jq '.[].overview.title'
}

###########################
### Git Functions ###
###########################

# Undo a git push
alias undopush="git push -f origin HEAD^:master"
# undo a commit
alias uncommit="git reset --soft HEAD^"
