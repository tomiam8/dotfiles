
#History setup
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZ

setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt share_history
setopt auto_cd
setopt correct_all
setopt auto_list
setopt auto_menu
setopt always_to_end

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate #enable approximate matches for completion


#Color alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#taken from matty
alias v='vim'
alias py='python3'
alias clip='xclip -selection "clipboard"'

git() {
    if [[ $@ == "log" ]]; then
        command git log --graph
   else
        command git "$@"
    fi
}

#Mine
if [ $TERM = "xterm-kitty" ]; then
    alias nt='2>/dev/null 1>/dev/null kitty --single-instance --directory "`pwd`" &'
else
    alias nt='2>/dev/null 1>/dev/null open -a iTerm "`pwd`"'
fi
mkcd() {
    mkdir -p "${1}"
    cd "${1}"
}
rmkdir () {
    rm -r "${1}"
    mkdir "${1}"
}
gitacp () {
    git add .
    git commit -a -m "${1}"
    git push
}
alias sudo='sudo '
alias jfmsu='git add -A && git commit -m "just fuck my shit up" && git push -F'
alias ls='echo -e "\\033[1;31m\n========\\nUse exa!!!\\n==========\033[0m" &&ls '
alias el='exa -a -l --git --no-permissions --no-user --no-filesize --time-style default --group-directories-first --color automatic'

PS1="%F{green}[%* %F{blue}%1d%F{green}]%%%f "

#quick cd alias
alias cdp='cd ~/OneDrive/2022/thesis/proofs'
alias cdt='cd ~/OneDrive/2022/thesis'
alias cdi='cd ~/OneDrive/2022/semester_2/INFO1113'
alias cdo='cd ~/OneDrive/2022/semester_2/COMP3530'

export GRB_LICENSE_FILE=/Users/tom/util/gurobi/gurobi.lic
#Let iperender work
export PATH=$PATH:/Applications/Ipe.app/Contents/MacOS
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
