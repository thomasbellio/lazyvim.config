#!/usr/bin/zsh
docker exec -ti  -w /home/$USER_NAME/code/$(basename $PWD) -u "$USER_NAME" $CONTAINER_NAME zsh -l
