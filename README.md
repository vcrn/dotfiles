# dotfiles
These dotfiles are designed to work on Arch-based Linux systems. They will probably work on other Linux systems too, but some dependencies might need to be installed from unstable channels.

# Install
A script for installing all the dotfiles on Arch based systems is in progress, called `install.sh`. At the moment, it should not be run. 

The script will update the system, install the dependencies and place the content of this repo in the correct locations.

# Dependencies

## Manual installation
All dependencies can be found in `install.sh`. When installing this on a system not based on Arch, some of the dependencies might need to be 
installed by other means than by standard channels or stable versions. Dependencies that are known to be installed as too old versions on 
non-Arch distros for dotfiles to work:
- `neovim` needs to be of version >= 0.7. For the LSP to work, `unzip` and `npm` are needed.
- `i3` needs to be of version >= 4.22

## Functions

## autorandr
`autorandr` is used for automatically setting monitors upon connecting and disconnecting them. A post-hook script in `autorandr/postswitch` is 
being run after the monitor layout changes to correctly set the wallpaper using `feh`. For `autorandr` to work correctly, 
[autorandr](https://github.com/phillipberndt/autorandr) needs to be installed as well as `feh`.
