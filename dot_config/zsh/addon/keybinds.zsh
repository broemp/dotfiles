bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[3~'  delete-char
bindkey '^[[3;5~' kill-word
bindkey '^H' backward-kill-word
bindkey '5~' kill-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line

# keybinds
bindkey '^ ' autosuggest-accept

export PATH="$HOME/.local/bin":$PATH

if command -v bat &> /dev/null; then
  alias cat="bat -pp"
  alias catt="bat"
fi

function chpwd() {
    emulate -L zsh
    ls -a
}
