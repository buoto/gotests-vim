# gotests-vim

Vim plugin for [gotests](https://github.com/cweill/gotests), that allows
you to generate table driven tests easily.

## Usage
Call `:GoTests` to generate a test for the function at the current line or functions selected in visual mode.

Call `:GoTestsAll` to generate tests for all functions in the current buffer.

## Installation
Gotests-vim requires **gotests** to be available in your `$PATH`. Alternatively you
can provide path to **gotests** using `g:gotests_bin` setting.

Plugin installation:
* [Pathogen](https://github.com/tpope/vim-pathogen)
  * `git clone https://github.com/buoto/gotests-vim.git ~/.vim/bundle/gotests-vim`
* [vim-plug](https://github.com/junegunn/vim-plug)
  * `Plug 'buoto/gotests-vim'`
* [NeoBundle](https://github.com/Shougo/neobundle.vim)
  * `NeoBundle 'buoto/gotests-vim'`
* [Vundle](https://github.com/gmarik/vundle)
  * `Plugin 'buoto/gotests-vim'`
* [Vim packages](http://vimhelp.appspot.com/repeat.txt.html#packages) (since Vim 7.4.1528)
  * `git clone https://github.com/buoto/gotests-vim.git ~/.vim/pack/plugins/start/gotests-vim`

## Settings
If you want you can set path to your **gotests** binary if it's not in your path, for example:

    let g:gotests_bin = '/home/user/go/bin/gotests'
    
You can also set custom template directory:

    let g:gotests_template_dir = '/home/user/templates/'
