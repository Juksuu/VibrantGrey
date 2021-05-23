# VibrantGrey

A dark greyish neovim colorscheme with some colors :)

Made with [ColorBuddy](https://github.com/tjdevries/colorbuddy.nvim)

![vibrantgrey_example](https://user-images.githubusercontent.com/32743062/119262676-b8112100-bbe4-11eb-850c-1d1cb3b0603b.png)

## Features

 + supports latest neovim 0.5 features like LSP

### Language support

 + HTML
 + Scss / Css
 + Svelte
 + Lua
 + Typescript

### Plugin support

 + [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
 + [LSP Saga](https://github.com/glepnir/lspsaga.nvim)
 + [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
 + [Git Gutter](https://github.com/airblade/vim-gitgutter)
 + [Fugitive](https://github.com/tpope/vim-fugitive)

## Installation

This requires neovim >= 0.5 and [ColorBuddy](https://github.com/tjdevries/colorbuddy.nvim)


Install theme with prefered package manager:

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'Juksuu/VibrantGrey'
use 'tjdevries/colorbuddy.nvim'
```

```lua
require('colorbuddy').colorscheme('vibrantgrey')
```
