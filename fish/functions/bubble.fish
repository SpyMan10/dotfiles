function bubble -d 'Print formatted bubble using unicode special characters (aka. powerline).'
  set -l __start $argv[1]
  set -l __start_bg_color $argv[2]
  set -l __end $argv[3]
  set -l __end_bg_color $argv[4]

  set -l __color $argv[5]

  echo -nse (set_color -b $__start_bg_color)(set_color $__color)$__start
  echo -nse (set_color -b $__color)$argv[6]
  echo -nse (set_color $__color)(set_color -b $__end_bg_color)$__end(set_color normal)(set_color -b normal)
end