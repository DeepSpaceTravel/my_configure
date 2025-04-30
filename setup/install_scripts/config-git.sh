#!/bin/sh

EMAIL=""

git config --global user.name "DeepSpaceTravel"
git config --global user.email $EMAIL

# Set up SSH keys
ssh-keygen -t ed25519 -C $EMAIL
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# Show the public key on the terminal
echo -e "Copy the following SSH key to your clipboard:\n"
cat ~/.ssh/id_ed25519.pub


# Set up GPG keys
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
