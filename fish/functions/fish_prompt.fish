function fish_prompt --description 'Write out the prompt'
  set -l shorter_pwd (string replace -i $HOME '~' $PWD)

  set -l white ededed
  set -l light_blue 384cb5
  set -l pink fd6d98
  set -l cyan 73CBF3

  # OS icon
  echo -nse \uf303 '  '

  # user, host
  bubble \ue0b6 \ue0b4 $light_blue "$(set_color $white)$USER@$hostname"
  
  # working directory
  echo -nse ' ' $(set_color $pink)$shorter_pwd

  # current git branch
  echo -nse $(set_color $cyan; fish_vcs_prompt " [%s]")

  # input...
  echo -nse (set_color fff) ' ' \ueab6 ' '
end
