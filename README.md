# vim-gotests

Vim plugin for [gotests](https://github.com/cweill/gotests), plugin that allows
you to generate table driven tests easily.

## Usage
Type `:GoTests` to generate test for function in current line or functions in
text selected in visual mode.

## Installation
Vim-gotests requires **gotests** to be available in your `$PATH`. Alternatively you
can provide path to **gotests** using `g:gotests_bin` setting.
Plugin installation:
*  [Pathogen](https://github.com/tpope/vim-pathogen)
  * `git clone https://github.com/buoto/vim-gotests.git ~/.vim/bundle/vim-gotests`
*  [vim-plug](https://github.com/junegunn/vim-plug)
  * `Plug 'buoto/vim-gotests'`
*  [NeoBundle](https://github.com/Shougo/neobundle.vim)
  * `NeoBundle 'buoto/vim-gotests'`
*  [Vundle](https://github.com/gmarik/vundle)
  * `Plugin 'buoto/vim-gotests'`
*  [Vim packages](http://vimhelp.appspot.com/repeat.txt.html#packages) (since Vim 7.4.1528)
  * `git clone https://github.com/buoto/vim-gotests.git ~/.vim/pack/plugins/start/vim-gotests`

## Settings
If you want you can set path to your **gotests** binary if it's not in your path, for example:

    let g:gotests_bin = '/home/user/go/bin/gotests'
