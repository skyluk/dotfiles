function ggpull --description 'git pull origin <current branch>'
  set ref (git symbolic-ref --short HEAD 2> /dev/null)

  if test -n "$ref"
    git pull origin $ref
  end
end
