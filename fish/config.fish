function fish_greeting
    echo (set_color yellow)"You can do this."(set_color normal)
end
#Rise and shine, (set_color yellow)comrade(set_color normal). It\'s time to get to work.

if status is-interactive
    fastfetch -c ~/.config/fastfetch/config.jsonc -l ~/.config/fastfetch/logo.txt
end

set -g fish_greeting
#set bell-style none
alias meow 'timeout 3s chafa -f symbols --symbols ascii -c 240 --scale max --align center ~/Downloads/hahacat.gif'
