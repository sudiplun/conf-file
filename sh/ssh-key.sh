#!/bin/bash
read -p  "Enter SSH key Name: " key_name
eval "$(ssh-agent -s)" && ssh-add ~/.ssh/"$key_name"
