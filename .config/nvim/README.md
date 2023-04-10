# Set Up

Install `neovim` (V>7) and `Packer`. Then run `nvim lua/core/plugins.lua`, 
followed by `:PackerInstall` or `:PackerSync`.

# Cheat sheet

## From LSP:
* `]d` - next warning/error
* `[d` - previous warning/error
* `<leader>qf` - list quickfixes
* `K` - shows description of object
* `gd` - goto definition of entity
* `gD` - goto declaration of entity
* `gi` - goto implementation
* `gr` - ??

## Window management:
* `<C-i>` - forward
* `<C-o>` - back
* `<leader>sh` - open new window in window, splitting horizontally
* `<leader>sv` - open new window in window, splitting vertically
* `<leader>sx` - close focused window in window
Ctrl + h, j, k or l - moves focus among windows in window
* `<leader>e` - toggle file tree
* `<leader>ef` - Focus file tree (explorer focus (correct?)): 

## Telescope: 
* `<leader>ff` - find files
* `<leader>fg` - live grep
* `<leader>fb` - buffers
* `<leader>fh` - help tags

## Other
* `<leader>l` - remove highlighting
