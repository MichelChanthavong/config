echo "Starting app_install.sh"

########## Install all application through Brew ##########
which -s brew
if [[ $? != 0 ]] ; then
    echo "Installing Brew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Brew has been installed !"
fi

echo "Start installing your favorite apps"
brew bundle

########## Create SSH key ##########

RSA_SSH_KEY_TYPE=~/.ssh/id_rsa.pub
ECDSA_SSH_KEY_TYPE=~/.ssh/id_ecdsa.pub
ED25519_SSH_KEY_TYPE=~/.ssh/id_ed25519.pub

if [[ ! -f $RSA_SSH_KEY_TYPE ]] || [[ ! -f $ED25519_SSH_KEY_TYPE ]] || [[ ! -f $ECDSA_SSH_KEY_TYPE ]] ; then
    # TODO Add a "Want to create a SSH key ?" 
    echo  "Seems that there is not SSH key on your computer. Please enter your GitHub email address"
    read YOUR_GITHUB_MAIL
    ssh-keygen -t ed25519 -C $YOUR_GITHUB_MAIL 
fi

echo "app_install.sh finished"
