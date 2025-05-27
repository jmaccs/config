function tmux_auto
    if status is-interactive
        and not set -q TMUX
        and command -v tmux >/dev/null

        if not string match -q vscode $TERM_PROGRAM
            tmux new-session -A -s main
        end
    end
end
