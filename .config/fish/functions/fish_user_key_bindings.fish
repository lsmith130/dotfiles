function fish_user_key_bindings
    fish_vi_key_bindings default
    for mode in default insert visual
        bind -M $mode \cc -m default 'echo; echo '^C'; commandline ""; commandline -f repaint'
        bind -M $mode \ck 'clear; commandline -f repaint'
    end
    bind -M default / -m default _fzf_search_history
    bind -M default \$ -m default accept-autosuggestion
end
