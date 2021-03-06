# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# System defaults
  export PLATFORM=$(uname -s)
  export DOTFILES="$HOME/dotfiles"

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

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

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
plugins=(git autojump)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/bin:/usr/sbin:/sbin:/usr/games:/usr/local/mysql/bin"
# export MANPATH="/usr/local/man:$MANPATH"
  export PATH=$HOME/mongodb/bin:$PATH
  export PATH=$HOME/mongodb/mongodb-linux-x86_64-3.4.4/bin:$PATH

  export GOROOT=$HOME/go
  #export GOPATH=$HOME/GoWorkspace
  export GOPATH=$HOME/common/src/go
  
  #export GOPATH=$HOME/common/src/go
  
  export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias python='python3'
alias p='python3'

alias mv='mv -v'
alias cp='cp -vr'
alias rm='rm -vr'

alias tmux='tmux -2'
alias pg='ps -e | grep'
alias op='nautilus .'
# alias op='dolphin .'

alias ep='echo $path | python2.7 -c "for i in raw_input().split(): print i"'

alias vv='vim $DOTFILES/vimrc'
alias vt='vim $DOTFILES/tmux.conf'
alias vz='vim $DOTFILES/zshrc'
alias sz='source ~/.zshrc'
alias td='vim ~/Nutstore/to-do.txt'

alias t2x='tmux show-buffer | xclip -selection clipboard'
alias x2t='tmux set-buffer "$(xclip -o)"'

if [ "$shellx" = "zshx" ]; then
	alias -s c=vim
	alias -s h=vim
	alias -s cpp=vim
	alias -s hpp=vim
	alias -s md=vim
	alias -s sh=vim
	alias -s py=vim
	alias -s conf=vim
fi

alias gtag='ctags -R; cscope-indexer -r'
alias dtag='rm tags cscope.files cscope.out'

# autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
