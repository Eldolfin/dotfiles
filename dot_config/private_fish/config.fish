set fish_greeting
if status is-interactive
    # ctrl-z bind to fg
    bind \cz 'fg 2>/dev/null; commandline -f repaint'
end
