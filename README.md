VIM Settings
============

* Adds the Zenburn theme to VIM and the Gnome Terminal
* Installs the following plugins:
    * [pathogen](https://github.com/tpope/vim-pathogen) - autoloading of plugins
    * [vim-polyglot](https://github.com/sheerun/vim-polyglot) - language support
    * [nerdtree](https://github.com/scrooloose/nerdtree) - source tree view
    * [nerdcommenter](https://github.com/scrooloose/nerdcommenter) - toggle comments
    * [ctrlp](https://github.com/ctrlpvim/ctrlp.vim) - search for files with ctrlp
    * vim-airline
    * vim-airline-themes
    * vim-fugitive

Usage
-----

*General*

* `\c`: toggle comments
* `ctrl+p`: search for a file

*NERDTree*

* `t`: Open the selected file in a new tab
* `i`: Open the selected file in a horizontal split window
* `s`: Open the selected file in a vertical split window
* `I`: Toggle hidden files
* `m`: Show the NERD Tree menu
* `R`: Refresh the tree, useful if files change outside of Vim

Installation
------------

Change to your home directory

    cd ~/

Clone into `.vim` directory

    git clone https://github.com/justinchmura/vim-settings.git .vim

Link standard vim settings file to the `.vim` directory

    ln -s .vim/vimrc ~/.vimrc

Fetch all bundle submodules

    cd ~/.vim
    git submodule init
    git submodule update

Configure Zenburn
-----------------

To apply the Zenburn theme to your default Gnome Terminal, run the 
`gnome-terminal-zenburn.sh` script and then follow the prompts.

    cd ~/.vim
    ./gnome-terminal-zenburn.sh


