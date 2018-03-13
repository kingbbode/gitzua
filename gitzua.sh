#!/bin/bash

which git &> /dev/null
if [ "$?" != "0" ]; then
    echo "git is not installed..."
    exit 1
fi

find_git_host() {
  ALL_HOST=$(cat .ssh/config| grep 'Host ' | awk '{print $2}')

  for host in $ALL_HOST; do 
    if [[ "$(ssh -G $host | grep user | awk '{print $2}' | head -n 1)" = "git" ]]; then
      HOSTS="$host $HOSTS"
    fi; 	
  done

  echo "${HOSTS}"
}

create_info() {
  printf "email : "
  read email
  #TODO: validation
  printf "name : "
  read name
  #TODO: validation
  echo "$email $name"
  ssh-keygen -t rsa -C "$email" -f ~/.ssh/id_rsa_gitzua_$name
}

find_git_host
create_info
