function base64_enc --description 'base64_enc [value]'
  echo -n $argv | base64 -
end
