export PATH=$HOME/bin:$PATH
export GNUPG=$(tty)

unset GREP_OPTIONS
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || \
    eval "$(dircolors -b)" 

alias pullstage3="w3m https://linux.rz.ruhr-uni-bochum.de/download/gentoo-mirror/releases/amd64/autobuilds/current-stage3-amd64-hardened\+nomultilib/"
