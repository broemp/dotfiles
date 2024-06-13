#!/bin/sh
# HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export PATH="$HOME/.local/bin":$PATH
export PATH="$HOME/.local/share/cargo/bin":$PATH
export MANPAGER='nvim +Man!'
export MANWIDTH=999
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/share/go/bin:$PATH
export GOPATH=$HOME/.local/share/go
export PATH=$HOME/.fnm:$PATH
export PATH="$HOME/.local/share/neovim/bin":$PATH
export CLUTTER_BACKEND=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export XDG_SESSION_TYPE=sway
export SDL_VIDEODRIVER=wayland

#Firefox
export MOZ_ENABLE_WAYLAND=1
export MOZ_WEBRENDER=1

#Qt
export QT_QPA_PLATFORM=wayland-egl
export QT_WAYLAND_FORCE_DPI=physical
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

eval "$(fnm env)"
eval "$(zoxide init zsh)"

# bemenu catpuccin theme
export BEMENU_OPTS='-i -l 20 --fb "#1e1e2e" --ff "#94e2d5" --nb "#1e1e2e" --nf "#f5e0dc" --tb "#1e1e2e" --hb "#1e1e2e" --tf "#cba6f7" --hf "#89b4fa" --nf "#f5e0dc" --af "#f5e0dc" --ab "#1e1e2e"'
export BEMENU_BACKEND='wayland'
export BEMENU_SCALE='2'

# Conda
export CONDA_PKGS_DIRS="$HOME/.local/share/conda/"
export CONDA_ENVS_PATH="$HOME/.local/share/conda/"

# pnpm
export PNPM_HOME=$HOME/.config/pnpm
export PATH="$HOME/.config/pnpm":$PATH

#nvm
export NVM_DIR="$XDG_DATA_HOME"/nvm

#java 
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

#Python
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"

#Xinit
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

#Flutter
export CHROME_EXECUTABLE=/sbin/google-chrome-stable

# Electron28 wayland
export ELECTRON_OZONE_PLATFORM_HINT=auto

#nnn Filemanager
# https://github.com/jarun/nnn/tree/master/plugins#installation
export NNN_PLUG='f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview;p:preview-tui'
export NNN_ICONLOOKUP=1

#EZA
export EZA_ICONS_AUTO=1
