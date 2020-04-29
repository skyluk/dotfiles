set -U fish_color_user -o green
set -U fish_color_status red
set -U fish_color_host -o cyan

set -g fish_user_paths "/usr/local/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
#set -g fish_user_paths "~/.rbenv/shims" $fish_user_paths
set -g fish_user_paths "~/bin" $fish_user_paths

function start_agent
  ssh-agent -c | sed 's/^echo/#echo/' > $SSH_ENV
  chmod 600 $SSH_ENV
  . $SSH_ENV > /dev/null
end

setenv XDEBUG_CONFIG 'remote_enable=1 remote_mode=req remote_port=9000 remote_host=127.0.0.1 remote_connect_back=0'
setenv SSH_ENV $HOME/.ssh/environment
setenv GOPATH $HOME/Projects/go
setenv GOBIN $GOPATH/bin

set -g fish_user_paths $GOBIN $fish_user_paths
set -g fish_user_paths "/usr/local/opt/go@1.11/bin" $fish_user_paths

alias git='hub'
alias g='hub'
alias gst='git status'
alias gsl='git stash list'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log'
alias grp='git pull --rebase origin master'

alias gcm='gco master'
alias dc='docker-compose'

alias buf='buffalo'

alias mount_work='~/bin/mount_work'
alias mount_php='sshfs ross@thorin:/media/tank/projects/php ~/mnt/thorin-php/'
alias mount_go='sshfs ross@thorin:/media/tank/projects/go ~/mnt/thorin-go/'
alias mount_py='sshfs ross@thorin:/media/tank/projects/py ~/mnt/thorin-py/'

start_agent

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/google-cloud-sdk/path.fish.inc' ]; . '/usr/local/google-cloud-sdk/path.fish.inc'; end

# Add specific configs for work machine
if [ -f '~/.config/fish/config.fish.wrk' ]; . '~/.config/fish/config.fish.wrk'; end
