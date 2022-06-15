# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH="/Users/luka.zabkar/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Emulate fish dir shortening
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  # virtualenvwrapper
  vi-mode
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
POWERLEVEL9K_MODE="awesome-patched"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
# Fix issues with MITM Corpo network for some NPM packages (Cypress, ...)
NODE_EXTRA_CA_CERTS="$HOME/rca01-si_RootCA.pem"
export NODE_EXTRA_CA_CERTS

# source /usr/local/opt/nvm/nvm.sh

alias dab="docker-compose exec app bash"
alias dab3="docker-compose exec app3 bash"
alias dcs="docker-compose stop"
alias dcu="docker-compose up -d"
alias ddb="docker-compose exec db mysql -u root -p"
alias gpu='git push -u origin "$(git symbolic-ref --short HEAD)"'
alias git-delete-merged='git branch --merged | egrep "BD-[0-9]*" | xargs git branch -d'
alias frm-widgets-dev="docker-compose exec app python manage.py release_manager widgets --back --release-version local_dev --notes dev"
alias frm-widgets-master="docker-compose exec app python manage.py release_manager widgets --back --release-version master-latest --notes master"
alias frm-dashboard-dev="docker-compose exec app python manage.py release_manager dashboard --back --release-version local_dev --notes dev"
alias frm-dashboard-master="docker-compose exec app python manage.py release_manager dashboard --back --release-version master-latest --notes master"
alias frm-onboarding-dev="docker-compose exec app python manage.py release_manager onboarding --back --release-version local_dev --notes dev"
alias frm-onboarding-master="docker-compose exec app python manage.py release_manager onboarding --back --release-version master-latest --notes master"
alias frm-backoffice-dev="docker-compose exec app python manage.py release_manager backoffice --back --release-version local_dev --notes dev"
alias frm-backoffice-master="docker-compose exec app python manage.py release_manager backoffice --back --release-version master-latest --notes master"
alias frm-all-master="frm-dashboard-master && frm-widgets-master && frm-onboarding-master && frm-backoffice-master"
alias frm-all-dev="frm-dashboard-dev && frm-widgets-dev && frm-onboarding-dev && frm-backoffice-dev"
alias fam="frm-all-master"
alias frm-wd=frm-widgets-dev
alias frm-wm=frm-widgets-master
alias frm-dd=frm-dashboard-dev
alias frm-dm=frm-dashboard-master
alias frm-od=frm-onboarding-dev
alias frm-om=frm-onboarding-master
alias frm-bd=frm-backoffice-dev
alias frm-bm=frm-backoffice-master
alias build-emails="cd /Users/luka.zabkar/projects/bitstamp/divisions/fab/notification/templates/email/html/src && yarn prod"

# flow todo env variables
FLOW_ROOT="/Users/$(whoami)/projects/work/"
export FLOW_TODO="${FLOW_ROOT}todo.md"
export FLOW_FILE="${FLOW_ROOT}flow.md"
alias note="${FLOW_ROOT}flow-add-note.sh"
alias todo="${FLOW_ROOT}flow-add-todo.sh"
alias todo-move="${FLOW_ROOT}todo-to-flow.sh"

alias refresh-ssh-fab="pushd ; cd ~/.ssh/ ; curl https://panel.fab.stagebts.net/ssh-config > config.d/staging-fab ; sed -i.bak '/gw.fab/d' ./known_hosts; popd"
alias refresh-ssh-fabtwo="pushd ; cd ~/.ssh/ ; curl https://panel.fabtwo.stagebts.net/ssh-config > config.d/staging-fabtwo ; sed -i.bak '/gw.fabtwo/d' ./known_hosts; popd"
alias refresh-ssh-clients="pushd ; cd ~/.ssh/ ; curl https://panel.clients.stagebts.net/ssh-config > config.d/staging-clients ; sed -i.bak '/gw.clients/d' ./known_hosts; popd"
alias refresh-ssh-ln="pushd ; cd ~/.ssh/ ; curl https://panel.ln.stagebts.net/ssh-config > config.d/staging-ln ; sed -i.bak '/gw.ln/d' ./known_hosts; popd"

alias refresh-ssh-all="refresh-ssh-fab && refresh-ssh-fabtwo && refresh-ssh-clients && refresh-ssh-ln"

alias bts-env="source /Users/$(whoami)/.virtualenvs/bitstamp38/bin/activate"
alias bts-server="bts-env && DJANGO_SETTINGS_MODULE=settings python manage.py runserver 0.0.0.0:8001"
alias bts-shell="bts-env && DJANGO_SETTINGS_MODULE=settings python manage.py shell"
alias bts-test="bts-env && DJANGO_SETTINGS_MODULE=examples.testing.settings_mac python -m pytest -vv -s --reuse-db --create-db"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
