export ZSH=/Users/andrewcodispoti/.oh-my-zsh
# Path to your oh-my-zsh installation.

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

 #Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-flow)

DEFAULT_USER=whoami

# User configuration

# PATH configuration
export PATH="$PATH:/usr/local/heroku/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/Users/andrewcodispoti/Library/Android/sdk/platform-tools"
export PATH="$PATH:/opt/X11/bin"
export PATH="$PATH:/Library/Tex/texbin"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
 #export MANPATH="/usr/local/man:$MANPATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Make sure to use macvim
alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d -v"

# folder changing aliases
alias dev="cd ~/Documents/Programming"
alias school="cd ~/Google\ Drive/School"
alias 2b="cd ~/Google\ Drive/School/2B/"
alias 3b="cd ~/Google\ Drive/School/3B/"

# Commands for school server
alias cssh="ssh -X acodispo@linux.student.cs.uwaterloo.ca"
alias csshy="ssh -X -Y acodispo@linux.student.cs.uwaterloo.ca" # gui ssh
alias csync="rsync -avz --progress \"$(pwd)\" acodispo@linux.student.cs.uwaterloo.ca:~"
# assuming a synced environment
function crun() {
    ssh acodispo@linux.student.cs.uwaterloo.ca "cd ~/$1; '$@'"
}

alias ls="ls -F -h --color $@"
function clangd() {
    DIFF_FILE=$1
    echo $DIFF_FILE
    nvim -d <(echo "$(clang-format ${DIFF_FILE})") $DIFF_FILE
}

# Latex command
alias latex="pdflatex -interaction=nonstopmode"

# Start and stop a postgresql database
alias postdbstart="pg_ctl start -D /usr/local/var/postgres9.5 -l logfile"
alias postdbstop="pg_ctl stop -D /usr/local/var/postgres9.5"

# Ensure tmux is in color mode.
alias tmux="TERM=screen-256color-bce tmux"

alias re-source="source ~/.zshrc"

export VISUAL=nvim
export EDITOR="$VISUAL"

export PYTHONPATH=

if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

function ff() {
    grep -nrl "$*" .
}

function fl() {
    grep -nr "$*" .
}

function ffi() {
    grep -nirl "$*" .
}

function fli() {
    grep -nir "$*" .
}
export PATH="/usr/local/opt/llvm/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andrewcodispoti/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/andrewcodispoti/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andrewcodispoti/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/andrewcodispoti/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
