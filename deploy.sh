#!/bin/bash

# ssh-agent 
# ssh-add ~/.ssh/andxyz-deployer
# ssh-add ~/.ssh/andxyz-wedding
# chmod +x ./deploy.sh
# ./deploy.sh

set -e
git push origin -f && git push github -f && bundle exec cap deploy
