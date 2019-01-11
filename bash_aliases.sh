alias notebook="(pushd .; cd ~/notebooks/ ; ipython notebook; popd)"
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
	recordmydesktop --windowid=$(wmctrl -l | grep $1 | awk '{print $1}') -o ~/Videos/$1_$(date +"%Y_%m_%d_%H_%M_%S").ogv
}

alias ping='grc ping'
alias ifconfig='grc ifconfig'
alias netstat='grc netstat'
