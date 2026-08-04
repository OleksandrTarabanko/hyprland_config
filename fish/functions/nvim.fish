function nvim
    if set -q KITTY_WINDOW_ID
        kitty @ set-spacing --match "id:$KITTY_WINDOW_ID" padding=0
        kitty @ set-colors --match "id:$KITTY_WINDOW_ID" background=#000000
        kitty @ set-colors --match "id:$KITTY_WINDOW_ID" foreground=#e8e8e8
        command nvim $argv
        kitty @ set-spacing --match "id:$KITTY_WINDOW_ID" padding=20
        kitty @ set-colors --match "id:$KITTY_WINDOW_ID" background=#e8e8e8
    else
        command nvim $argv
    end
end
