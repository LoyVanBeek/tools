alias notebook="(pushd .; cd ~/notebooks/ ; jupyter notebook; popd)"
alias resource="source ~/.bashrc"
function find-replace {
	ack-grep --print0 -irl '$1' | xargs -0 -L1 sed  -i 's/$1/$2/g'
}

alias gti=git

alias LS="ls -laFh"

alias continue-branch='charm $(git diff master --name-only)'  # Open all files changed in the current branch wrt master in PyCharm

function progress_dd(){
        infile=$1
	outfile=$2
	sudo -v
	sudo dd if=$infile | pv -s $(stat --printf="%s" $infile) | sudo dd of=$outfile
}

if command -v bat >/dev/null 2>&1; then
    alias cat=bat
fi

function record-window {
        DATE=$(date +"%Y_%m_%d_%H_%M_%S")
	recordmydesktop --windowid=$(wmctrl -l | grep $1 | awk '{print $1}') -o ~/Videos/$1_$DATE.mp4 --no-sound
        mv ~/Videos/$1_$DATE.mp4.ogv ~/Videos/$1_$DATE.mp4
	#ffmpeg -i ~/Videos/$1_$DATE.ogv -c:v libx264 -preset veryslow -crf 22 -c:a libmp3lame -qscale:a 2 -ac 2 -ar 44100 ~/Videos/$1_$DATE.mp4
}

alias ping='grc ping'
alias ifconfig='grc ifconfig'
alias netstat='grc netstat'

alias "c=xclip -selection clipboard"
alias "v=xclip -o"
