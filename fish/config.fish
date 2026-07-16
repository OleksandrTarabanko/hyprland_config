if status is-interactive
# Commands to run in interactive sessions can go here
    set fish_greeting
end

starship init fish | source
zoxide init fish --cmd j | source