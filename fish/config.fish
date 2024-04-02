# Remove the standard fish greeting
set -g fish_greeting

#set -U fish_color_user -o green
#set -U fish_color_status red
#set -U fish_color_host -o cyan

fish_add_path /usr/local/bin
fish_add_path /usr/local/sbin
fish_add_path /opt/homebrew/bin

setenv XDEBUG_CONFIG 'remote_enable=1 remote_mode=req remote_port=9000 remote_host=127.0.0.1 remote_connect_back=0'
setenv SSH_ENV $HOME/.ssh/environment
setenv XDG_CONFIG_HOME ~/.config

set -l hname (hostname)

# update PATH for the Google Cloud SDK.
if test -f '/usr/local/google-cloud-sdk/path.fish.inc'
    . '/usr/local/google-cloud-sdk/path.fish.inc'
end

# Machine specific configs
if test -f ~/.config/fish/{$hname}.fish.inc
    . ~/.config/fish/{$hname}.fish.inc
end
