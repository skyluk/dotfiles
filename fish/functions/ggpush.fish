function ggpush --description 'git push origin <current branch>'
  set ref (git symbolic-ref --short HEAD 2> /dev/null)

  if test -n "$ref"
    git push origin $ref
  end
end
