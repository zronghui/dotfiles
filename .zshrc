
source ~/.bash_profile
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:/usr/local/opt/ruby/bin:/usr/local/sbin:$PATH"
export PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

if [ -d ~/dotfiles/oh-my-zsh.sh ]; then source ~/dotfiles/oh-my-zsh.sh; fi
if [ -d ~/dotfiles/alias.sh ]; then source ~/dotfiles/alias.sh; fi
if [ -d ~/dotfiles/powerlevel9k.sh ]; then source ~/dotfiles/powerlevel9k.sh; fi
if [ -d ~/dotfiles/func.sh ]; then source ~/dotfiles/func.sh; fi
if [ -d ~/dotfiles/completion.sh ]; then source ~/dotfiles/completion.sh; fi
if [ -d ~/dotfiles/softwares.sh ]; then source ~/dotfiles/softwares.sh; fi

# eval "$(starship init zsh)"
export xxxt='/Users/zhangronghui/01Code/zronghui_xxxt'

