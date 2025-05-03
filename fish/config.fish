function fish_greeting
    echo Rise and shine, (set_color yellow)comrade(set_color normal). It\'s time to get to work.
end

if status is-interactive
    set -l img (find ~/Pictures/disco -type f | shuf -n 1);
    fastfetch -c ~/.config/fastfetch/config.jsonc --logo-type chafa --logo-padding-left 2 --logo-height 25 -l $img
end

set -g fish_greeting
alias meow 'timeout 3s chafa -f symbols --symbols ascii -c 240 --scale max --align center ~/Downloads/hahacat.gif'
