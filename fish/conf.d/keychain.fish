fish_add_path /opt/homebrew/bin

if status is-login
    and status is-interactive
    # To add a key, set -Ua SSH_KEYS_TO_AUTOLOAD keypath
    # To remove a key, set -U --erase SSH_KEYS_TO_AUTOLOAD[N]
    keychain --quiet --eval $SSH_KEYS_TO_AUTOLOAD | source
end
