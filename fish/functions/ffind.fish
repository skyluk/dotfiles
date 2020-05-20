function ffind --description 'find ./ -iname [file]'
  if test -n "$argv"
    find ./ -iname $argv
  end
end
