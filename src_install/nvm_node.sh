#!/bin/bash

NVM_V=v0.35.2
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/${NVM_V}/install.sh | bash

# install latest node
nvm install stable --latest-npm

