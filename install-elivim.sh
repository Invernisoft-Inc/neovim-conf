#!/bin/bash
SOURCE="install-elivim.sh"
source /usr/lib/elive-tools/functions 1>/dev/null 2>&1 || true

# NEVER set -e, so traps are ignored!
#set -e
# ERR is catched too an inherited in parents, needed
set -E
# catch signals
set -o functrace
shopt -s extdebug
# avoid ! expansion
set +o histexpand
# verbose:
#set -x
sources="$(pwd)"

# elive functions pre {{{
if [[ -n "$NOCOLOR" ]] || ! ((is_interactive)) ; then
    el_c_n=""
    el_c_r=""
    el_c_r2=""
    el_c_g=""
    el_c_g2=""
    el_c_y=""
    el_c_y2=""
    el_c_m=""
    el_c_m2=""
    el_c_c=""
    el_c_c2=""
    el_c_b=""
    el_c_b2=""
    el_c_gr=""
    el_c_gr2=""
    el_c_w=""
    el_c_w2=""

    el_c_blink=""
    el_c_underline=""
    el_c_italic=""
    el_c_bold=""
else
    el_c_gr="\033[1;30m" # Gray color
    el_c_gr2="\033[0;30m" # Gray2 color
    el_c_r="\033[1;31m" # Red color  (orig: red)
    el_c_r2="\033[0;31m" # Red2 color  (orig: red)
    el_c_g="\033[1;32m" # Green color  (orig: green)
    el_c_g2="\033[0;32m" # Green2 color  (orig. green2)
    el_c_y="\033[1;33m" # Yellow color  (orig. yellow)
    el_c_y2="\033[0;33m" # Yellow2 color  (orig. yellow)
    el_c_b="\033[1;34m" # Blue color
    el_c_b2="\033[0;34m" # Blue2 color
    el_c_m="\033[1;35m" # Magenta color
    el_c_m2="\033[0;35m" # Magenta2 color
    el_c_c="\033[1;36m" # Cyan color
    el_c_c2="\033[0;36m" # Cyan2 color
    el_c_w="\033[1;37m" # White
    el_c_w2="\033[0;37m" # White strong
    el_c_n="\033[0;39m" # Normal color  (orig: normal)

    if ((is_console)) ; then
        ## gray's are not visible in console when vga=normal (t460s doesnt configure the good one so it fallbacks to normal), use cyan's instead
        el_c_gr="\033[1;36m" # Gray color
        #el_c_gr2="\033[0;36m" # Gray2 color
    fi
    #else
        #el_c_gr="\033[1;30m" # Gray color
        #el_c_gr2="\033[0;30m" # Gray2 color
    #fi

    el_c_blink="\033[5m" # Blink 'color' effect  (orig. blink)
    el_c_underline="\033[4m" # Underline 'color' effect  (orig. underline)
    el_c_italic="\033[3m" # Italic 'color' effect
    el_c_bold="\033[1m" # Bold 'color' effect
fi

el_debug(){
    if [[ "$EL_DEBUG" -ge 2 ]] ; then
        echo -e "${el_c_c}D: ${el_c_c}${@}${el_c_n}" 1>&2
    fi
}
el_info(){
    echo -e "${el_c_c2}I: ${el_c_c2}${@}${el_c_n}" 1>&2
}
el_warning(){
    echo -e "${el_c_y2}W: ${el_c_y2}${@}${el_c_n}" 1>&2
}
el_error(){
    echo -e "${el_c_r}E: ${el_c_r}${@}${el_c_n}" 1>&2
}

#===  FUNCTION  ================================================================
#          NAME:  el_confirm
#   DESCRIPTION:  ask (console) for confirmation
#    PARAMETERS:  question
#       RETURNS:  true | false
#===============================================================================
el_confirm(){
    # pre {{{
    local reply question flag_glob

    question="$1"

    # }}}
    # return answer {{{

    echo -en "\n$question [y/n]: "
    if [[ -n "$ZSH_VERSION" ]] ; then
        read reply
    else
        read -e reply
    fi

    case "$reply" in
        y|Y|Yes|YES|s|S)
            return  0
            ;;
        n|N|no|NO|nope)
            return  1
            ;;
        *)
            # repeat question until confirmation
            if el_confirm "${el_c_b2}${@}${el_c_n}" ; then
                return 0
            else
                return 1
            fi
            ;;
    esac

    # }}}
}


#
# Get a more complete elive-functions
#
if [[ -s "/usr/lib/elive-tools/functions" ]] ; then
    source /usr/lib/elive-tools/functions 1>/dev/null 2>&1 || true
else
    # local copy
    if [[ -s "elive-functions" ]] ; then
        source elive-functions 1>/dev/null 2>&1 || true
    fi
fi

# - elive functions pre }}}
# traps {{{

exit_error(){
    set +x

    # mark a failed step
    echo $$ > "/tmp/.${SOURCE}.failed"

    exit 1
}
exit_ok(){
    signal="$?"
    set +x
    if [[ "$signal" = 0 ]] ; then
        echo -e "${el_c_g}${el_c_blink}Help Elive to continue making amazing things with a grateful donation! - https://www.elivecd.org/donate/${el_c_n}"
    fi
}
trap "exit_error" ERR
trap "exit_ok" EXIT
#trap "exit_error" 1 2 3 6 9 11 13 14 15

# - traps }}}
# checks {{{
if ! [[ -d "${sources}/.git" ]] ; then
    el_error "You need to run this command from the cloned git sources directory, aborting..."
    exit 1
fi

# }}}

#
# Start the installer
#

main(){
    # pre {{{
    local var

    # }}}

    echo -e ""
    el_info "First, make sure that you have these dependencies installed before to continue:"
    echo -e " * NeoVim in version at least 0.8.3"
    echo -e " * Nerd Fonts of your choice installed and set in your Terminal (suggestion: 'JetbrainsMono Nerd Font', version NOT ending in 'Mono') - https://www.nerdfonts.com/"
    echo -e " * RipGrep tool"
    echo -e " * GCC compiler"

    echo -e ""
    echo -e "Note: If you are unable to install NeoVim in a good version on your OS, you can use this very good option to install it:  https://forum.elivelinux.org/t/how-to-install-nix-packages-on-debian-based-systems/3422"
    echo -e ""

    if ! el_confirm "Finish to prepare your system before to proceed with the next step - Continue now?" ; then
        exit 1
    fi

    if [[ -e ~/.config/nvim ]] || [[ -e ~/.local/share/nvim ]] || [[ -e ~/.cache/nvim ]] ; then
        el_error "Existing Nvim configuration found, you must remove first before to continue:"
        echo "rm -rf ~/.config/nvim"
        echo "rm -rf ~/.local/share/nvim"
        echo "rm -rf ~/.cache/nvim"
        echo
        exit 1
    fi

    if el_confirm "Do you want to use Copilot?" ; then
        is_copilot_wanted=1
        if ! [[ -e "$HOME/.config/github-copilot/hosts.json" ]] ; then
            el_warning "Copilot is not yet configured"
            el_info "How to configure Copilot:"
            echo
            echo -e " 1. delete your nvim directories to create a new conf (backup if needed):"
            echo "rm -rf ~/.config/nvim"
            echo "rm -rf ~/.local/share/nvim"
            echo "rm -rf ~/.cache/nvim"
            echo
            echo -e " 2. get the official Copilot plugin:"
            echo -e "git clone https://github.com/github/copilot.vim.git  ~/.config/nvim/pack/github/start/copilot.vim"
            echo
            echo -e " 3. run 'nvim' and run:  :Copilot setup"
            echo
            echo -e " 4. delete again your NeoVim directories in order to continue with our install"
            echo
            echo -e " x. alternatively to all previous steps, you can simply import the dir ~/.config/github-copilot/ to your machine"
            echo
            if ! el_confirm "Ready to continue?" ; then
                exit 1
            fi
        fi
    fi


    set -x

}

#
#  MAIN
#
main "$@"

# vim: set foldmethod=marker :

