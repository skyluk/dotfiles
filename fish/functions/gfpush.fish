function gfpush --description 'git push --force origin <current branch>'
  set ref (git symbolic-ref --short HEAD 2> /dev/null)

  if test -n "$ref"
    git push --force origin $ref
  end
end
