function fish_prompt --description 'Write out the prompt'
  set -l shorter_pwd (string replace -i $HOME '~' $PWD)

  set -l usr_seg_color 8395f1
  set -l pwd_seg_color fd6d98
  set -l git_seg_color 73CBF3

  echo -nse (set_color $usr_seg_color) $USER ' ' (set_color $pwd_seg_color) $shorter_pwd (set_color $git_seg_color;fish_vcs_prompt) ' ' (set_color fff) \uf105 ' '
end
