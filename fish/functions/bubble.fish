function bubble -d 'Print formatted bubble using unicode special characters (aka. powerline).' 
  set -l __start $argv[1]
  set -l __end $argv[2]
  set -l __color $argv[3]

  echo -nse (set_color $__color)$__start
  echo -nse (set_color -b $__color)$argv[4]
  echo -nse (set_color $__color)(set_color -b normal)$__end(set_color normal)
end