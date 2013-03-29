VIM Settings
============

* Adds the Zenburn theme to VIM and the Gnome Terminal
* Installs Pathogen
* Installs the following bundles with Pathogen:
  * [CoffeeScript](https://github.com/kchmck/vim-coffee-script) -
    CoffeeScript syntax, indenting, and compiling support
  * [Literate CoffeeScript](https://github.com/mintplant/vim-literate-coffeescript) -
    Literate CoffeeScript syntax highlighting
  * [Markdown](https://github.com/plasticboy/vim-markdown.git) -
    Markdown syntax highlighting
  * [Nerd Commenter](https://github.com/scrooloose/nerdcommenter) -
    Code commenting
  * [Nerd Tree](https://github.com/scrooloose/nerdtree) - File browser

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


