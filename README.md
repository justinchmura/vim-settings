VIM Settings
============

* Adds the Zenburn theme to VIM and the Gnome Terminal
* Installs Pathogen
* Installs the following bundles with Pathogen:

Installation
------------

Change to your home directory

    cd ~/

Clone into `.vim` directory

    git clone https://github.com/dustinboston/vim-settings.git .vim

Link standard vim settings file to the `.vim` directory

    ln -s .vim/vimrc ~/.vimrc

Fetch all bundle submodules

    cd ~/.vim
    git submodule update --init

Configure Zenburn
-----------------

To apply the Zenburn theme to your default Gnome Terminal, run the 
`gnome-terminal-zenburn.sh` script and then follow the prompts.

    cd ~/.vim
    ./gnome-terminal-zenburn.sh


