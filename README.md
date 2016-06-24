cisco.vim
=========

Vim syntax for cisco configuration (`show run` or `show start`) files.

before
------

![config_before](http://momota.github.io/images/20160624_cisco-config_before.png)

after
-----

![config_after](http://momota.github.io/images/20160624_cisco-config_after.png)

Author
======

[momota](https://github.com/momota)

License
=======

[MIT](http://opensource.org/licenses/MIT)


Installation
============

Manually
--------

1. Put all files under $VIM.

Pathogen
--------

1. Install with the following command.

        git clone https://github.com/momota/cisco.vim ~/.vim/bundle/cisco.vim

[NeoBundle](https://github.com/Shougo/neobundle.vim)
----------------------------------------------------

1. Add the following configuration to your `.vimrc`.

        NeoBundle 'momota/cisco.vim'

2. Install with `:NeoBundleInstall`.


Usage
=====

Save cisco configuration file as `*.cisco`.

Or execute `:set ft=cisco`
