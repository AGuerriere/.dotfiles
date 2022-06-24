# To let zsh know that the .zshrc is in the .dotfiles folder type the following symlink in the terminal:
# ln -s ~/.dotfiles/.zshrc ~/.zshrc

# -----------------
# if a % appears before the prompt when restoring the session you can stop it with the following three lines
# setopt PROMPT_CR
# setopt PROMPT_SP
# export PROMPT_EOL_MARK=""
# ------------------

# -----------------------------
# Custom prompt with Git update
# -----------------------------
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '[%b]'
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
# PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} 
# > '
PS1='%F{cyan}╔╡%F{cyan}[%n]%F{cyan}:%F{magenta}[%m]%F{cyan}➾%F{green}[%~]%F{default}%F{yellow}${vcs_info_msg_0_}%F{cyan}
╚═╡%F{default}'



# -------
# Aliases
# -------
alias c='code .'
alias o='open .' #Open the current directory in Finder


# Exa ls replacement alias
alias ll='exa -l -g --icons'
alias lla='ll -a'


# ----------------------
# Git Aliases
# ----------------------
alias ga='git add .'
alias gm='git commit -m'
alias gp='git push'
alias gn='gnew'
alias vim='nvim'

# This is a function to automate the creation of new a project folder, 
# git init, create github repo and push
function gnew () { 
    if [ $# -eq 1 ]
    then
        mkdir $1
        cd $1 
        git init
        touch README.md
        git add .
        git commit -m 'first commit'
        git branch -M main
        gh repo create $1 --public
        git remote add origin git@github.com:AGuerriere/$1.git
        git push --set-upstream origin main
    else
        echo "Please specify project name - 1 argument only"
    fi
}

# Create new folder and cd into the folder just created
function mkcd() {
    mkdir $1 && cd $1
}

function lt(){
    exa --tree --level=$1  --icons

}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
