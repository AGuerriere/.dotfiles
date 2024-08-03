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
alias vim='nvim'
alias v='vim .'


# Exa ls replacement alias
alias ll='eza -l -g --icons'
alias lla='ll -a'


# ----------------------
# Git Aliases
# ----------------------
alias ga='git add .'
alias gm='git commit -m'
alias gp='git push'
alias gl='git pull'
alias gn='gnew'


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


function gsdeploy(){
    glab mr create --fill
    glab mr merge
    az webapp deployment source sync --name Get-sociable-prelive --resource-group get-sociable-prelive
}

# Create new folder and cd into the folder just created
function mkcd() {
    mkdir $1 && cd $1
}

function lt(){
    exa --tree --level=$1  --icons

}

# Needed for fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="${HOME}/.pyenv/shims:${PATH}"

# Path needed for homebrew
export PATH="/usr/local/sbin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias m269-23j='cd "/Users/antonioguerriere/My Drive/University/Stage 2/M269/m269-23j";source /Users/antonioguerriere/venvs/m269-23j/bin/activate'
alias nb='jupyter notebook &'
alias allowed='python3.10 "/Users/antonioguerriere/My Drive/University/Stage 2/M269/m269-23j/allowed.py" -c "/Users/antonioguerriere/My Drive/University/Stage 2/M269/m269-23j/m269.json"'
alias m269-23j='cd "/Users/antonioguerriere/My Drive/University/Stage 2/M269/m269-23j";source /Users/antonioguerriere/venvs/m269-23j/bin/activate'
alias nb='jupyter notebook &'
alias allowed='python3.10 "/Users/antonioguerriere/My Drive/University/Stage 2/M269/m269-23j/allowed.py" -c "/Users/antonioguerriere/My Drive/University/Stage 2/M269/m269-23j/m269.json"'
alias m269-23j='cd "/Users/antonioguerriere/My Drive/University/Stage 2/M269/m269-23j";source /Users/antonioguerriere/venvs/m269-23j/bin/activate'
alias nb='jupyter notebook &'
alias allowed='python3.10 "/Users/antonioguerriere/My Drive/University/Stage 2/M269/m269-23j/allowed.py" -c "/Users/antonioguerriere/My Drive/University/Stage 2/M269/m269-23j/m269.json"'
alias m269-23j='cd "/Users/antonioguerriere/My Drive/University/Stage 2/Temp/M269-23J";source /Users/antonioguerriere/venvs/m269-23j/bin/activate'
alias nb='jupyter notebook &'
alias allowed='python3.10 "/Users/antonioguerriere/My Drive/University/Stage 2/Temp/M269-23J/allowed.py" -c "/Users/antonioguerriere/My Drive/University/Stage 2/Temp/M269-23J/m269.json"'
alias testM269='cd "/Users/antonioguerriere/My Drive/University/Stage 2/M269/m269-23j";source /Users/antonioguerriere/venvs/testM269/bin/activate'
alias nb='jupyter notebook &'
alias allowed='python3.10 "/Users/antonioguerriere/My Drive/University/Stage 2/M269/m269-23j/allowed.py" -c "/Users/antonioguerriere/My Drive/University/Stage 2/M269/m269-23j/m269.json"'


# Set unlimited zsh command history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000000000
SAVEHIST=1000000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
