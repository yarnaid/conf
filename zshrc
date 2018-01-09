# if [[ -v ZSH_PROF ]]; then
#   zmodload zsh/zprof
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
if [ -d /home ]; then
  HM=/home
else
  HM=/Users
fi

export ZSH=${HM}/yarnaid/.oh-my-zsh
source ~/.profile

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
ZSH_THEME="avit"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	common-aliases
	django
	docker
	fabric
	git
	gitfast
	git_remote_branch
	github
	httpie
	history
	node
	npm
	osx
	perms
	pip
	python
	sublime
	urltools
	wd
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


test -e "${HOME}/.iterm1_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

if [ -d /Users ]; then
  bindkey -e
  bindkey '[C' forward-word
  bindkey '[D' backward-word
fi


### Added by Zplugin's installer
source "${HM}/yarnaid/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk
# Binary release in archive, from Github-releases page; after automatic unpacking it provides command "fzf"

zplugin ice from"gh-r" as"command"; zplugin light junegunn/fzf-bin

# One other binary release, it needs renaming from `docker-compose-Linux-x86_64`.
# Used also `bpick' which selects Linux packages – in this case not needed, Zplugin
# automatically narrows down the releases by grepping uname etc.

# zplugin ice from"gh-r" bpick"*linux*" as"command" mv"docker* -> docker-compose"; zplugin light docker/compose

# Scripts that are built at install (there's single default make target, "install", and
# it constructs scripts by cat-ting a few files). The make ice could also be:
# `make"install PREFIX=${ZPLGM[HOME_DIR]}/cmd"`, if "install" wouldn't be default target

zplugin ice pick'${ZPLGM[HOME_DIR]}/cmd/bin/git-*' as"command" make'PREFIX=${ZPLGM[HOME_DIR]}/cmd'
zplugin light tj/git-extras


# Load the pure theme, with zsh-async that's bundled with it
: zplugin ice pick"async.zsh" src"pure.zsh"; : zplugin light sindresorhus/pure

# This one to be ran just once, in interactive session

# zplugin creinstall %HOME/my_completions  # Handle completions without loading any plugin, see "clist" command

zplugin ice wait'1'
zplugin light zdharma/fast-syntax-highlighting
zplugin ice wait'1'
zplugin light psprint/zsh-navigation-tools
zplugin ice wait'1'
zplugin light djui/alias-tips
zplugin ice wait'1'
zplugin light zdharma/history-search-multi-word
zplugin ice wait'1'
zplugin light zsh-users/zsh-autosuggestions
zplugin ice wait'1'
zplugin light zsh-users/zsh-completions
zplugin ice wait'1'
zplugin light zsh-users/zsh-docker
zplugin ice wait'1'
zplugin light zsh-users/zsh-history-substring-search
zplugin ice wait'1'
zplugin light zsh-users/zsh-syntax-highlighting
zplugin ice wait'1'
zplugin light zdharma/zui
zplugin ice wait'1'
zplugin light zdharma/zplugin-crasis
### END PLUGINS ###

if [ -f "/usr/local/opt/zsh-git-prompt/zshrc.sh" ]; then
  source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f "${HM}/yarnaid/Documents/google-cloud-sdk/path.zsh.inc" ]; then source "${HM}/yarnaid/Documents/google-cloud-sdk/path.zsh.inc"; fi
if [ -f /usr/share/google-cloud-sdk/completion.zsh.inc ]; then source /usr/share/google-cloud-sdk/completion.zsh.inc; fi

# The next line enables shell command completion for gcloud.
if [ -f "${HM}/yarnaid/Documents/google-cloud-sdk/completion.zsh.inc" ]; then source "${HM}/yarnaid/Documents/google-cloud-sdk/completion.zsh.inc"; fi

source <(helm completion zsh)
source <(minikube completion zsh)
source <(kubectl completion zsh)
