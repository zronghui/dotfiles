
function lazygit() {
	git status .
	git add .
	git commit -m "$1"
	git push origin HEAD
}

function find() {
	if [ $# = 1 ];
	then
		command find . -iname "*$@*"
	else
		command find "$@"
	fi
}

fysay(){fy $1; say $1; fy $1 | sed -n '6p' | cut -d' ' -f2 |say}
getAudio(){ffmpeg -i $1.$2 -vn $1.mp3}
hanzi-convert-s(){hanzi-convert -o $1.chs.$2 -s $1.$2}
retry(){while ! $1; do
           sleep $2
       done}
mcd() { mkdir -p "$1"; cd "$1";} # 创建目录并进入
cls() { cd "$1"; ls;} # cd and ls

hexoDir=~/01Code/hexo/hexo-theme-icarus-removeif
function hexod() {
	cd $hexoDir
	ag '<img src="/Users/zhangronghui' ./source/_posts
	if [ $? = 1 ];
	then
		# 没有本地图片
		./categories.sh && hexo g && hexo d;gaa;gcmsg "auto commit";gp;cd -
	else
		ag '<img src="/Users/zhangronghui' -l  ./source/_posts | xargs -I _ open _
	fi
}
function hexos() {
	cd $hexoDir
	ag '<img src="/Users/zhangronghui' ./source/_posts
	if [ $? = 1 ];
	then
		# 没有本地图片
		./categories.sh && hexo g && hexo s;cd -
	else
		ag '<img src="/Users/zhangronghui' -l  ./source/_posts | xargs -I _ open _
	fi
}
