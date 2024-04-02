function init_keychain
    # To add a key, set -Ua SSH_KEYS_TO_AUTOLOAD keypath
    # To remove a key, set -U --erase SSH_KEYS_TO_AUTOLOAD[N]
    echo $SSH_KEYS_TO_AUTOLOAD
    keychain --quiet --eval $SSH_KEYS_TO_AUTOLOAD | source
end
