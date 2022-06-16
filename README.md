# wp-docker

Install wordpress with docker containers.
Declare settings in .env file

images:
wordpress:fpm
adminer
nginx
wp_cli

# How to install
- git clone https://github.com/lmartinezs/wp-docker.git
- cd wp-docker
- Change params in .env file
- sh install.sh

# Open on browser:
- www.domain.com  #domain declarated on .env file
- localhost:10000 #adminer app
