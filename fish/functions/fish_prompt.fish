function fish_prompt --description 'Write out the prompt'
    # Transient prompt support.
    if contains -- --final-rendering $argv
        echo -nse (set_color fff) \uf303 ' ' \uf460 ' '
        return
    end

    set -l shorter_pwd (string replace -i $HOME '~' $PWD)

    # Colors
    set -l white ededed
    set -l black 000
    set -l light_blue 384cb5
    set -l pink fd6d98
    set -l cyan 73CBF3
    set -l light_cyan 64b6fa

    # Arch icon
    bubble \ue0b6 normal \ue0b0 $light_blue $white (set_color $light_blue)\uf303' '
    # echo -nse \uf303 ' '

    # User@Host
    if test $show_hostname_in_prompt -eq 1
        bubble ' ' $light_blue \ue0bc $light_cyan $light_blue "$(set_color $white)$USER "
        bubble ' ' $light_cyan \ue0b4 normal $light_cyan "$(set_color $black)$hostname "
    else
        bubble ' ' $light_blue \ue0b4 normal $light_blue "$(set_color $white)$USER "
    end
    # Working directory
    echo -nse ' ' $(set_color $pink)$shorter_pwd

    # Current git branch
    echo -nse $(set_color $cyan; fish_vcs_prompt " \uf126 %s")

    # Input...
    echo -nse (set_color fff) ' ' \u276f ' '
end
