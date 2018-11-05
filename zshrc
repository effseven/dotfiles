source /home/mbonner/bin/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle sharat87/pip-app

antigen theme robbyrussell

antigen apply

export EDITOR='nvim'
alias vi='nvim'
export PATH=/home/mbonner/.pyenv/bin:/home/mbonner/bin:$PATH
export PATH=/home/mbonner/.nimble/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

