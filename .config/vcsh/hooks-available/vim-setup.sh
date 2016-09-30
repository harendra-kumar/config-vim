#!/bin/bash

#HVN_INSTALL_URL=https://raw.githubusercontent.com/harendra-kumar/haskell-vim-now/master/install.sh
#HVN_REPO=https://www.github.com/harendra-kumar/haskell-vim-now
HVN_INSTALL_URL=/vol/hosts/cueball/workspace/github/haskell-vim-now/install.sh
HVN_REPO=/vol/hosts/cueball/workspace/github/haskell-vim-now
POWERLINE_FONT_REPO=https://github.com/powerline/fonts.git

HVN_DIR=~/.config/haskell-vim-now
HCONFIG=~/.config/config-vim

set -o pipefail

# $1: envvar
check_boolean_var() {
  local var=$(eval "echo \$$1")
  if test -n "$var" -a "$var" != y
  then
    >&2 echo "Error: Boolean envvar [$1] can only be empty or 'y'"
    exit 1
  fi
  echo "ENV: [$1=$var]"
}

# $1: command
function run_verbose() {
  echo "$*"
  /bin/bash -c "$*"
}

# XXX need to change users of this API before committing
# $1: command
function run_verbose_errexit() {
  run_verbose "$*"
  if test $? -ne 0
  then
    echo "Command failed. Exiting."
    exit 1
  fi
}

install_vim_local() {
  # Setup custom symlinks
  run_verbose_errexit ln -snfF $HCONFIG/vimrc.local $HVN_DIR/vimrc.local
  run_verbose_errexit ln -snfF $HCONFIG/plugins.vim $HVN_DIR/plugins.vim

  # Now install any extra local plugins
  vim -E -u ~/.vimrc +PlugUpgrade +PlugUpdate +PlugClean! +qall
}

install_powerline() {
  # Install powerline fonts
  font_dir=${HVN_DIR}/powerline-fonts
  run_verbose_errexit git clone ${POWERLINE_FONT_REPO} ${font_dir}
  run_verbose_errexit ${font_dir}/install.sh
  rm -rf ${font_dir}
}

# XXX changes the current dir
install_ycm() {
    # TODO - install dependencies first
    # Compile YouCompleteMe
    run_verbose_errexit cd ~/.vim/bundle/YouCompleteMe
    run_verbose_errexit git submodule update --init --recursive
    run_verbose_errexit ./install.py --clang-completer
}

# stack setup uses git which will not work correctly because of GIT_DIR being
# set and exported by vcsh.
unset GIT_DIR

while test -n "$1"
do
  case $1 in
    -f) FORCE=true; shift;;
    *) echo "Usage: $0: [-f]" && exit 1;;
  esac
done

if test ! -e $HVN_DIR -o -n "$FORCE"
then
  check_boolean_var CONFIG_VIM_ALL
  test -z "$CONFIG_VIM_ALL" || CONFIG_VIM_HASKELL=y
  test -z "$CONFIG_VIM_ALL" || CONFIG_VIM_YCM=y

  check_boolean_var CONFIG_VIM_HASKELL
  check_boolean_var CONFIG_VIM_YCM

  # Install haskell-vim-now
  export HVN_REPO
  test -z "$CONFIG_VIM_HASKELL" && export HVN_INSTALL_BASIC=y
  # bash <(wget -q -O- $HVN_INSTALL_URL) || exit 1
  bash $HVN_INSTALL_URL || exit 1

  install_vim_local
  install_powerline
  test -n "$CONFIG_VIM_YCM" && install_ycm
else
  echo "$HVN_DIR exists. You can use \"$0 -f\" to force setup again."
fi
