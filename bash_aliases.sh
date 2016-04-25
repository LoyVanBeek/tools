alias notebook="(pushd .; cd ~/notebooks/ ; ipython notebook; popd)&"
alias resource="source ~/.bashrc"
function find-replace {
	ack-grep --print0 -irl '$1' | xargs -0 -L1 sed  -i 's/$1/$2/g'
}