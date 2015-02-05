# this script creates symlinks from the home directory to any desired files in ~/dotfiles directory

# Variables
dir=~/dotfiles
files=( vim vimrc tmux.conf zshrc )

# Open to dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "Done"

# Create symlinks from the homedir to any files in the dotfiles directory specified in $files
for file in ${files[@]}; do
	echo "Creating symlinks to $file in home directory ..."
	ln -s $dir/.$file ~/.$file
done

# Check or install zsh
install_zsh() {
  # test to see if zshell is installed. if it is:
  if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    # clone my oh-my-zsh repo from github only if it isnt already
    if [[ ! -d $dir/oh-my-zsh/ ]]; then
      git clone http://github.com/robbyrussell/oh-my-zsh.git
    fi
    # set the default shell to zsh if it isnt currently set to zsh
    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
      chsh -s $(which zsh)
    fi
  else
    # If zsh isn't installed, get the platform of the current machine
    platform=$(uname);
    # If the platform is Linux, try an apt-get to install zsh and then recurse
    if [[ $platform == 'Linux' ]]; then
            sudo apt-get install zsh
            install_zsh
        # If the platform is OS X, tell the user to install zsh :)
        elif [[ $platform == 'Darwin' ]]; then
            echo "Please install zsh, then re-run this script!"
            exit
        fi
  fi
}

install_zsh
