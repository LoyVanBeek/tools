# Set up Git config

# git prompt
source ~/tools/bash_git.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
# Explicitly unset color (default anyhow). Use 1 to set it.
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_DESCRIBE_STYLE="branch"
GIT_PS1_SHOWUPSTREAM="auto git"

# PROMPT_COMMAND='__git_ps1 "[\[\033[01;34m\]\w\[\033[00m\]]" "\n'\
# '${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\$ "'

PS1='[\[\033[01;34m\]\w\[\033[00m\]]$(__git_ps1)\n'\
'${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \$ '

# Editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Diff tools, see handy_tool.md to install diff-so-fancy
if command -v diff-so-fancy >/dev/null 2>&1; then
	# If diff-so-fancy is installed, set git to use it
	git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
	
	git config --global color.ui true

	git config --global color.diff-highlight.oldNormal    "red bold"
	git config --global color.diff-highlight.oldHighlight "red bold 52"
	git config --global color.diff-highlight.newNormal    "green bold"
	git config --global color.diff-highlight.newHighlight "green bold 22"

	git config --global color.diff.meta       "yellow"
	git config --global color.diff.frag       "magenta bold"
	git config --global color.diff.commit     "yellow bold"
	git config --global color.diff.old        "red bold"
	git config --global color.diff.new        "green bold"
	git config --global color.diff.whitespace "red reverse"
fi

# When pulling, default to git pull --rebase
git config --global pull.rebase true

# Enable git rerere: https://www.git-scm.com/book/en/v2/Git-Tools-Rerere
git config --global rerere.enabled true