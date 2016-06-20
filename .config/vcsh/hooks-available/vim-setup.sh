#!/bin/bash

POWERLINE_FONT_REPO=https://github.com/powerline/fonts.git

HVN_DIR=~/.config/haskell-vim-now
HCONFIG=~/.config/vim-config

while test -n "$1"
do
  case $1 in
    -f) FORCE=true; shift;;
    *) echo "Usage: $0: [-f]" && exit 1;;
  esac
done

if test ! -e $HVN_DIR -o -n "$FORCE"
then
  # Install haskell-vim-now
  bash <(wget -q -O- http://git.io/haskell-vim-now) || exit 1

  # Setup custom symlinks
  ln -snfF $HCONFIG/vimrc.local $HVN_DIR/vimrc.local
  ln -snfF $HCONFIG/plugins.vim $HVN_DIR/plugins.vim

  # Now install any extra local plugins
  vim -E -u ~/.vimrc +PlugUpgrade +PlugUpdate +PlugClean! +qall

  # Compile YouCompleteMe
  cd ~/.vim/bundle/YouCompleteMe || exit 1
  git submodule update --init --recursive
  ./install.py --clang-completer

  # Install powerline fonts
  font_dir=${HVN_DIR}/powerline-fonts
  git clone ${POWERLINE_FONT_REPO} ${font_dir}
  ${font_dir}/install.sh
  rm -rf ${font_dir}
else
  echo "$HVN_DIR exists. You can use \"$0 -f\" to force setup again."
fi
