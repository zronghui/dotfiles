#!/usr/bin/env bash

## 控制cd命令的行为
## get rid of command not found ##
alias cd..='cd ..'
## a quick way to get out of current directory ##
alias ..='cd ..'
# zsh 自带以下alias
#alias ...='cd ../../../'
#alias ....='cd ../../../../'
#alias .....='cd ../../../../'
#alias .4='cd ../../../../'
#alias .5='cd ../.././../..'

## 命令加默认参数
alias bc='bc -l' # 让计算器默认开启math库
alias mkdir='mkdir -p' # 自动创建父目录
alias mv='mv -i' # 移动，复制文件显示详细信息
alias cp='cp -i'
alias ln='ln -i'
alias wget='wget -c' #默认断点续传
alias df='df -H' # human df查看磁盘使用情况
alias du='du -h' # du 查看当前目录各个文件、目录占用大小，-s （sum）总大小
alias ping='ping -c 5' # ping 5次停止

## 命令缩写
alias h="history -30 | tr -s ' ' |cut -d' ' -f2-" # mac -f2- centos -f3- 因为 centos 开头多个空格
alias c='clear' # ctrl + l 快捷键

## 创建一系列新命令
alias path='echo -e ${PATH//:/\\n}' # 显示变量PATH,并将：替换为回车
alias now='date +"%T"' # 时分秒
alias nowtime=now
alias nowdate='date +"%Y-%d-%m"'# 年月日
alias header='curl -I' # get web server headers #
alias checknet='curl -I http://www.baidu.com' # 检查网络连通性
alias checkproxy='curl -I http://www.google.com' # 检查 proxy
alias psmem10='ps aux | sort -nr -k 4 | head' # mem占用前10
alias pscpu10='ps aux | sort -nr -k 3 | head' # cpu占用前10
alias speed='speedtest-cli --simple' #测速 （需安装speedtest-cli）
alias ipe='curl ipinfo.io/ip' # 查看公网ip（???）
alias ipi='ipconfig getifaddr en0' # 查看ip地址
alias untar='tar -zxvf'
alias getpass='openssl rand -base64 6' # 8位密码

# 错误纠正
alias 。。='..'


# k8s
[ -f ~/dotfiles/kubectl_aliases.sh ] && source ~/dotfiles/kubectl_aliases.sh
alias kdev="kubectl --cluster kubernetes-dev --user kubernetes-admin -n"
alias ktest="kdev data-test"
alias kprod="kubectl --cluster kubernetes --user dev -n data-prod"
alias kstaging="kubectl --cluster kubernetes --user dev -n data-staging"

# ssh
alias sshcpui='ssh -CAXY determined-cori.zhangronghui.brw@bj-a-internal.brainpp.cn'
alias sshgpui='ssh -CAXY goofy-mestorf.zhangronghui.brc@bj-a-internal.brainpp.cn'
alias sshcpu='ssh -CAXY determined-cori.zhangronghui.brw@bj-a.brainpp.cn'
alias sshgpu='ssh -CAXY goofy-mestorf.zhangronghui.brc@bj-a.brainpp.cn'

export cpui='determined-cori.zhangronghui.brw@bj-a-internal.brainpp.cn'
export cpu='determined-cori.zhangronghui.brw@bj-a.brainpp.cn'
export gpui='goofy-mestorf.zhangronghui.brc@bj-a-internal.brainpp.cn'
export gpu='goofy-mestorf.zhangronghui.brc@bj-a.brainpp.cn'

#快速启动、结束MySQL服务, 可以使用alias命令
alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop'

# alias ytdl='cd "/Users/zhangronghui/ytdl"; python3 main.py'
# alias ytdl="youtube-dl --proxy 'socks5://127.0.0.1:1086' --write-auto-sub --sub-lang en,cn -f bestvideo+bestaudio -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'"
# alias rm=rmtrash
alias py="python3 main.py"
# alias tabcopyToMdLink="python3 '/Volumes/Data/PycharmProjects/private/22 tabcopyToMdLink/main.py'"

# 常用命令的替代工具
alias ls='colorls -A'
alias lc='colorls -lA --sd'
alias npm='cnpm'
#alias grep='ag'
alias cat='bat'
alias top='htop'

# mycli -uroot -pkang0322
# 替代 mysql -uroot -p

# 查看 json 文件
# fx package-lock.json

alias wget='axel -n 32'
alias pip='pip3'
alias python=python3
alias ppython='pipenv run python'

hexoDir=~/01Code/hexo/hexo-theme-icarus-removeif
# hexod hexos 见 func.sh
# alias hexod='cd $hexoDir && ./categories.sh && hexo g && hexo d;gaa;gcmsg "auto commit";gp;cd -'
# alias hexos='cd $hexoDir && ./categories.sh && hexo g && hexo s;cd -'
alias hexon='cd $hexoDir && hexo new'

alias uncurl='pbpaste | uncurl | pbcopy'
alias gaaCmsgP='gaa;gcmsg "auto commit";gp'

# 选择正确版本的软件
alias rsync=/usr/local/bin/rsync
#
alias cotEdit="open -a 'CotEditor'"
alias you-get="you-get --playlist"

alias vscode='open -a /Applications/Visual\ Studio\ Code.app'
alias pycharm='open -a /Applications/PyCharm.app'
alias idea='open -a /Applications/IntelliJ\ IDEA.app'

# docker
alias docker-clean-unused='docker system prune --all --force --volumes'
alias docker-clean-all='docker stop $(docker container ls -a -q) && docker system prune --all --force --volumes'
