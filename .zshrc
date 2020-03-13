
source ~/.bash_profile

# export PATH=/Users/zhangronghui/go/bin:/Users/zhangronghui/anaconda3/bin:/Users/zhangronghui/Downloads/spark/hadoop-2.6.0-cdh5.7.0/bin:/Users/zhangronghui/Downloads/spark/spark-2.3.0-bin-hadoop2.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands

export PATH="/usr/local/sbin:$PATH"

export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:/usr/local/opt/ruby/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


source ~/.dotfiles/oh-my-zsh.sh
source ~/.dotfiles/alias.sh
source ~/.dotfiles/powerlevel9k.sh
source ~/.dotfiles/func.sh
source ~/.dotfiles/completion.sh
source ~/.dotfiles/softwares.sh

