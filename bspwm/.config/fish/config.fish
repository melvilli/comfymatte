# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

function fish_prompt
    set fish_greeting
    set -l last_status $status
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    echo -n ' '
    set_color normal
end

alias ls "ls -a"
alias search "pacman -Ss"
alias install "sudo pacman -S"
alias update "sudo pacman -Syu"
alias remove "sudo pacman -Rns"
alias orphan "pacman -Qdtq"
alias cache "sudo pacman -Sc"
