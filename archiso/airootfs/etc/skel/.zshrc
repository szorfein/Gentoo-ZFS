# path
export PATH=$HOME/bin:$PATH

# alias
alias pullstage3-w3m="w3m https://linux.rz.ruhr-uni-bochum.de/download/gentoo-mirror/releases/amd64/autobuilds/current-stage3-amd64-hardened\+nomultilib/"
alias pullstage3-links="links https://linux.rz.ruhr-uni-bochum.de/download/gentoo-mirror/releases/amd64/autobuilds/current-stage3-amd64-hardened\+nomultilib/"
alias pullstage3-lynx="lynx https://linux.rz.ruhr-uni-bochum.de/download/gentoo-mirror/releases/amd64/autobuilds/current-stage3-amd64-hardened\+nomultilib/"
alias pullstage3-elinks="elinks https://linux.rz.ruhr-uni-bochum.de/download/gentoo-mirror/releases/amd64/autobuilds/current-stage3-amd64-hardened\+nomultilib/"

# dircolor
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || \
    eval "$(dircolors -b)" 

# less color
man() {
    LESS_TERMCAP_mb=$'\e[0;31m' \
        LESS_TERMCAP_md=$'\e[01;35m' \
        LESS_TERMCAP_me=$'\e[0m' \
        LESS_TERMCAP_se=$'\e[0m' \
        LESS_TERMCAP_so=$'\e[01;31;31m' \
        LESS_TERMCAP_ue=$'\e[0m' \
        LESS_TERMCAP_us=$'\e[0;36m' \
        command man "$@"
}
