#!/bin/bash

# MacSetup
#
# Greg's vim configuration for MacOS. Use it at your own risk!
#
# * Adds this folder to the system as symlink $HOME/vim
# * Replaces .vim, .viminfo, etc with syminks pointing to this folder.

if [ ! "$1" == "force" ]; then
  echo "Are you sure?"
  echo
  echo "This script will blow away your vim configration and replace it with symlinks to the vim"
  echo "configurations in this folder."
  echo 
  echo "Take a look at this setup script first to make sure you feel"
  echo "confident about this!"
  echo 
  echo "Run '$0 force' if you want to run it anyway"
  exit 0
fi

backup()
{
  file="$1"
  backup_file="$file~"

  if [ -e ~/$file -a ! -e ~/$backup_file ]; then
    echo "* Backing up ~/$file as ~/$backup_file"
    cp -a ~/$file ~/$backup_file
  fi
}

copy_file()
{
  file="$1"

  backup $file
  
  echo "* Creating new '~/$file'"
  cp $config_path/$file ~/$file 
}

full_link()
{
  source_path="$1"
  target_link="$2"

  backup $target_link

  echo "* Creating ~/$target_link symlink"
  if [ -e ~/$target_link ]; then
    rm -rf ~/$target_link
  fi
  ln -s $config_path/$source_path ~/$target_link
}

link_to_config()
{
  file="$1"

  full_link $file $file  
}

###############################################

echo
echo "Setting up unix configurations..."
echo

. get_script_path.sh
config_path=$script_path

if [ "$config_path" != "$HOME/vim/." ]; then
  full_link . vim
fi

link_to_config .vim
link_to_config .viminfo
link_to_config .vimmer
link_to_config .vimrc
link_to_config .gvimrc
