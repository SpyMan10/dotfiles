function em --description 'emacs launcher'
    emacs $argv </dev/null >~/.config/emacs.log 2>&1 &
    disown
end
