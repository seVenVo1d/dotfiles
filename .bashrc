# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# oh-my-posh
# eval "$(oh-my-posh init bash --config ~/.poshthemes/mercury.omp.json)"

# creating and activating virtual environment
alias cvenv='python3 -m venv venv/'
alias avenv='source venv/bin/activate'

# Changing "ls" to "exa"
alias ls='exa -h --color-scale --icons --group-directories-first'       # Directories
alias l.='exa -hd .* --color-scale --icons --group-directories-first'   # Only dotfiles
alias ll='exa -lha --color-scale --icons --group-directories-first'     # Directories and dotfiles
alias ll.='exa -lhd .* --color-scale --icons --group-directories-first' # Directories and dotfiles
alias ld='exa -lhD --color-scale --icons --group-directories-first'     # Long format directories

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
