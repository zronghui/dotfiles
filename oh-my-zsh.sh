
export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_CUSTOM=~/.zsh
plugins=(
  git osx zsh-autosuggestions zsh-syntax-highlighting kubectl
)

eval "$(lua ~/.oh-my-zsh/plugins/z.lua  --init zsh)"

source $ZSH/oh-my-zsh.sh
