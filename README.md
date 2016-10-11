## My vim config
My personal vim configuration repository based on
[haskell-vim-now](https://github.com/begriffs/haskell-vim-now) and designed to
be used via [vcsh](https://github.com/RichiH/vcsh), a git based aggregating
configuration manager for homedirs. The config is quite general, readily usable
and known to work at least on Mac and Debian Linux.

## Disclaimer
USE AT YOUR OWN RISK:
* Replaces old vim config but backs up old files to `.orig` before overwriting.
* Installs some required packages automatically using `sudo` and the package
  manager. In case of Haskell, installs tools in ~/.local/bin using `stack`.

## Install

```
# Use the following envvars to install optional components
# See pre-requisites section first
# To include all (haskell, ycm) optional components
# export CONFIG_VIM_FULL=y
# To include individual optional components
# export CONFIG_VIM_HASKELL=y
# export CONFIG_VIM_YCM=y

# See troubleshooting section below if you face trouble
# My patched version of vcsh is needed
wget -qO- https://raw.githubusercontent.com/harendra-kumar/vcsh/harendra/vcsh > vcsh
./vcsh clone https://github.com/harendra-kumar/config-init
./vcsh clone https://github.com/harendra-kumar/config-vim
```

### Vim Cheat Sheet

After installing, type `,vh` (stands for vim help) in vim command mode to
display a cheatsheet in a separate window as well as in the browser. This is my
personal list of reference commands organized by vim help sections, you can
edit the file opened by this command and put your own favorite commands in it.

### Customizations

* `~/.config/config-vim/vimrc.local`
* `~/.config/config-vim/plugins.vim`
* `~/.config/config-vim/cheatsheet.txt`

### Troubleshooting/Reinstall

If installation is interrupted after successful cloning, use
`~/.config/vcsh/hooks-available/vim-setup.sh -f` to setup again after fixing
the problem.  You can use the same command to reinstall or update the
config later.

To start from scratch you can also use, `rm -rf ~/.config/haskell-vim-now`
before invoking vim-setup.sh.

## Pre-requisites (For Optional Components)

### For YouCompleteMe (YCM) support (Optional)
#### Linux
* Make sure you have vim with python support. Check using `vim --version
 | grep +python`. I use `vim-gtk` package on Debian.
 ```
 sudo apt-get install vim-gtk
 ```
* Install C toolchain, cmake and python headers (for YouCompleteMe). On Ubuntu/Debian:
```
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
```

#### Mac
* Install MacVim (Latest version) with python support enabled and make
  sure you are picking up MacVim binary on your PATH.
* Xcode (CLI tools) for building C source (`xcode-select --install`)
* Install `cmake` using homebrew (`brew install cmake`) or macports (`port install cmake`).

### For Haskell support (Optional)
* Requires [stack](https://www.haskellstack.org)

## Pushing your (git) changes to config
Create your own git clone of the repo and use `vcsh clone` from that if
you would like to push your changes to the config.

## Uninstall

```
vcsh delete config-vim
vcsh delete config-init
rm -rf ~/.config/haskell-vim-now
```

Manually restore any backups of your old files (.orig) created by install.

## Feedback
Any fixes, suggestions on better configuration options are welcome!
