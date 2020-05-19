
source ~/.bash_profile
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:/usr/local/opt/ruby/bin:/usr/local/sbin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source ~/dotfiles/oh-my-zsh.sh
source ~/dotfiles/alias.sh
source ~/dotfiles/powerlevel9k.sh
source ~/dotfiles/func.sh
source ~/dotfiles/completion.sh
source ~/dotfiles/softwares.sh
