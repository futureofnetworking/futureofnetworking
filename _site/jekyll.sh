#!/bin/bash

# if selinux...
chcon -Rt svirt_sandbox_file_t `pwd`

#docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll \
#  -it -p 127.0.0.1:4000:4000 jekyll/jekyll:pages

export JEKYLL_VERSION=3.5
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  -p 127.0.0.1:4000:4000 \
  -it jekyll/jekyll \
  jekyll serve 
