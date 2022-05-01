#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '




neofetch




export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.emacs.d/bin:$PATH
export LFS=$HOME/mnt/lfs
export PATH=$HOME/.local/bin:$PATH

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

eval "$(thefuck --alias)"
