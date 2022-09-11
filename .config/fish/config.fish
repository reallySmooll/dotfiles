# MISCELLANEOUS FUNCTIONS
set fish_greeting # Suppress fish greeting message

# START OF ALIASES
#alias "l"="ls --color=auto -la"
alias "ls"="exa -laFh --icons --group-directories-first $argv"
alias "cat"="bat $argv"
alias "install"="yay -S --needed $argv"
alias "uninstall"="yay -Rns $argv"
alias "upgrade"="yay -Syu"
alias "delete_cache"="yay -Scc"
alias "change_res"="xrandr -s $argv"
alias "watch"="mpv --fs --ytdl $argv"
alias "fish_config"="nvim ~/.config/fish/config.fish && source ~/.config/fish/config.fish"
alias "fix_keys"="sudo killall gpg-agent && sudo rm -rf /etc/pacman.d/gnupg && sudo pacman-key --init && sudo pacman-key --populate archlinux"

# START OF FUNCTION FOR "!!" AND "!$"	# "!!" and "!$" functions from bash
function bind_bang
    switch (commandline -t)[-1]
	case "!"
		commandline -t $history[1];
	case "*"
		commandline -i !
   end
end

function bind_dollar
    switch (commandline -t)[-1]
	case "!"
		commandline -t ""
		commandline -f history-token-search-backward
	case "*"
		commandline -i '$'
   end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end

# STARSHIP INITIALIAZATION SCRIPT
starship init fish | source
