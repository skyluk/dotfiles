# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
set -U fish_color_user -o green
set -U fish_color_status red
set -U fish_color_host -o cyan

setenv SSH_ENV $HOME/.ssh/environment
setenv GOPATH $HOME/go
setenv GOBIN $GOPATH/bin
setenv CARGOBIN $HOME/.cargo/bin

setenv PATH $PATH $GOBIN $CARGOBIN /usr/local/go/bin

function ssql
  psql -U sparkfun -h $argv
end

function ggpull --description 'git pull origin <current_branch>'
  set branch (git rev-parse --abbrev-ref HEAD)

  if test $status -eq 0
    git pull origin $branch
  end
end

function ggpush --description 'git push origin <current_branch>'
  set branch (git rev-parse --abbrev-ref HEAD)

  if test $status -eq 0
    git push origin $branch
  end
end

function ggrev --description 'git rev'
  git rev-parse HEAD
end

function start_agent                                                                                                                                                                    
  ssh-agent -c | sed 's/^echo/#echo/' > $SSH_ENV
  chmod 600 $SSH_ENV 
  . $SSH_ENV > /dev/null
end

function ttail
  sudo tail -F $argv
end

alias g=git
alias gst="g status"
alias gsl="g stash list"
alias gb="g branch"
alias gco="g checkout"
alias gcm="gco master"
alias gd="g diff"
alias gl="g log"

alias ack="ack-grep"

alias task=sparktask
alias gen="sparktask sparkgen"

start_agent
