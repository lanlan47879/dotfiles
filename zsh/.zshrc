# Path to your oh-my-zsh installation.
export ZSH="/Users/alanacquinones/.oh-my-zsh"

# Choose the theme
ZSH_THEME="dracula"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

# -----------------------------------
# ALIASES
# -----------------------------------

alias c='clear'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -p'
alias ls='ls -Gal'
alias f='open -a Finder ./'
alias sys='cd ~/Documents/spring2020/systems'
alias app='cd ~/Documents/spring2020/app\ programming'
alias aoa='cd ~/Documents/spring2020/algorithms'
alias co='cd ~/Documents/spring2020/comp\ org'
alias zshrc='vim ~/.zshrc'
alias szshrc='source ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias chrome='cd /Users/alanacquinones/Library/Application\ Support/Firefox/Profiles/t8hmqxnf.default-release-1588258787024/chrome'

vs() {
    open $1 -a "Visual Studio Code"
}

alias fox01='ssh ded687@fox01.cs.utsa.edu'
alias fox02='ssh ded687@fox02.cs.utsa.edu'
alias fox03='ssh ded687@fox03.cs.utsa.edu'
alias fox04='ssh ded687@fox04.cs.utsa.edu'
alias fox05='ssh ded687@fox05.cs.utsa.edu'
alias fox06='ssh ded687@fox06.cs.utsa.edu'

source $ZSH/oh-my-zsh.sh
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
