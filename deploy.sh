#!/usr/bin/env fish

set key $argv[1]
set host $argv[2]

if test "server" != ""(basename $PWD)""
  echo "Running outside of appropriate folder"
  exit
end

rsync -avz -e "ssh -i $key" --progress ./* ubuntu@$host:/home/ubuntu/server/
