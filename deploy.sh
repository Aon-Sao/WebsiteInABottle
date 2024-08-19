#!/usr/bin/env fish

set key $argv[1]
set host $argv[2]

if test "server" != ""(basename $PWD)""
  echo "Running outside of appropriate folder"
  exit
end

# Remove __pycache__ dirs since they're not ingored properly.
find . -type d -name "__pycache__" -print | grep -v .venv | xargs rm -rf

rsync -avz -e "ssh -i $key" --progress --filter=':- .gitignore' ./* ubuntu@$host:/home/ubuntu/server/
