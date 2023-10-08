set fish_greeting
if status is-interactive
    # ctrl-z bind to fg
    bind \cz 'fg 2>/dev/null; commandline -f repaint'
end
set -gx EDITOR nvim
set -gx NEOVIDE_MULTIGRID 1
set -gx NEOVIDE_NO_VSYNC 1
