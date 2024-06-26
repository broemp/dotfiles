#!/bin/sh
alias j='z'
alias f='zi'
alias g='lazygit'
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
if command -v chezmoi &> /dev/null
then
  alias nvimrc='chezmoi edit ~/.config/nvim/'
else
  alias nvimrc='nvim ~/.config/nvim/'
fi

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 -c AT,DE,NL,LU --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -r'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# For when keys break
alias archlinx-fix-keys="sudo pacman-key --init && sudo pacman-key --populate archlinux && sudo pacman-key --refresh-keys"

alias m="git checkout master"

if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

# ls
alias l='eza'
alias sl='eza'
alias ls='eza'
alias ll='eza -l'
alias la='eza -a'
alias lla='eza -la'

# wifi
alias wifi='nmtui-connect'

# Cat
alias cat='bat'

alias suvim='sudo -E -s nvim'
alias dockre='docker'

alias bton='sudo systemctl start bluetooth.service'
alias blon='sudo systemctl start bluetooth.service'
alias btoff='sudo systemctl stop bluetooth.service'
alias bloff='sudo systemctl stop bluetooth.service'

# Fuck NPM
if command -v pnpm &> /dev/null; then
  alias npm=pnpm
  alias npx=pnpx
fi

#nnn
alias nnn='nnn -a'

if command -v bat &> /dev/null; then
  alias cat="bat -pp"
  alias catt="bat"
fi

