# ubuntu-24-debmirror
# debmirror


refactored to use an external config file - 
modify example.debmirror.conf and put in ./config/debmirror.conf

run with:

docker run -v ./repo:/debmirror -v ./config:/status s3tupw1zard/debmirror:latest

