function base64_dec --description 'base64_dec [value]'
  echo -n $argv | base64 -D -
end
