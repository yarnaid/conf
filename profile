export PATH="/Applications/MongoDB.app/Contents/Resources/Vendor/mongodb:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export LC_ALL=en_US.UTF-8
# export LANG=en_US.UTF-8
export LANG=C
export HOMEBREW_GITHUB_API_TOKEN=e7d1514999a658372f7f496158aef26ae28caf5c
export DATABASE_URL=postgres:///$(whoami)
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export NVM_DIR="/Users/yarnaid/.nvm"
export GOPATH=$HOME/.golang
export PATH=$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH="/usr/local/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
# export JAVA_HOME=`/usr/libexec/java_home -v 1.9`
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin"

# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# cd () {
#     if (( $# == 0 ))
#     then
#         builtin cd $VIRTUAL_ENV
#     else
#         builtin cd "$@"
#     fi
# }
# 
# cd


# function workon_cwd {
#     # Check that this is a Git repo
#     GIT_DIR=`git rev-parse --git-dir 2> /dev/null`
#     if [ $? == 0 ]; then
#         # Find the repo root and check for virtualenv name override
#         GIT_DIR=`\cd $GIT_DIR; pwd`
#         PROJECT_ROOT=`dirname "$GIT_DIR"`
#         ENV_NAME=`basename "$PROJECT_ROOT"`
#         if [ -f "$PROJECT_ROOT/.venv" ]; then
#             ENV_NAME=`cat "$PROJECT_ROOT/.venv"`
#         fi
#         # Activate the environment only if it is not already active
#         if [ "$VIRTUAL_ENV" != "$WORKON_HOME/$ENV_NAME" ]; then
#             if [ -e "$WORKON_HOME/$ENV_NAME/bin/activate" ]; then
#                 workon "$ENV_NAME" && export CD_VIRTUAL_ENV="$ENV_NAME"
#             fi
#         fi
#     elif [ $CD_VIRTUAL_ENV ]; then
#         # We've just left the repo, deactivate the environment
#         # Note: this only happens if the virtualenv was activated automatically
#         deactivate && unset CD_VIRTUAL_ENV
#     fi
# }
# 
# # New cd function that does the virtualenv magic
# function venv_cd {
#     cd "$@" && workon_cwd
# }

# alias cd="venv_cd"
