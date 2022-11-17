echo "Starting app_install.sh"

which -s brew
if [[ $? != 0 ]] ; then
    echo "Installing Brew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Brew has been installed !"

else
    echo "Good news ! Brew already installed and will be updated"
    brew update
fi

echo "Start installing your favorite apps"
# Brew bundle will execute the BrewFile
brew bundle

echo "app_install.sh finished"
