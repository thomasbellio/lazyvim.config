#!/usr/bin/zsh
docker exec -ti  -e SSH_AUTH_SOCK=${SSH_AUTH_SOCK}  -w /home/$USER_NAME/code/$(basename $PWD) -u "$USER_NAME" $CONTAINER_NAME zsh -l
