export PATH=$HOME/bin:$PATH

unset GREP_OPTIONS
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || \
    eval "$(dircolors -b)" 

alias pullstage3-w3m="w3m https://linux.rz.ruhr-uni-bochum.de/download/gentoo-mirror/releases/amd64/autobuilds/current-stage3-amd64-hardened\+nomultilib/"
alias pullstage3-links="links https://linux.rz.ruhr-uni-bochum.de/download/gentoo-mirror/releases/amd64/autobuilds/current-stage3-amd64-hardened\+nomultilib/"
alias pullstage3-lynx="lynx https://linux.rz.ruhr-uni-bochum.de/download/gentoo-mirror/releases/amd64/autobuilds/current-stage3-amd64-hardened\+nomultilib/"
alias pullstage3-elinks="elinks https://linux.rz.ruhr-uni-bochum.de/download/gentoo-mirror/releases/amd64/autobuilds/current-stage3-amd64-hardened\+nomultilib/"
