call plug#begin('~/.config/nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'artanikin/vim-synthwave84'
Plug 'preservim/nerdtree'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'sbdchd/neoformat'
Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
call plug#end()

set completeopt=menu,menuone,noselect

lua << END
require('config')
require('lualine').setup()
require("mason").setup()

END

syntax on
set relativenumber

function EnableAutoComplete()
    inoremap " ""<left>
    inoremap ' ''<left>
    inoremap ( ()<left>
    inoremap [ []<left>
    inoremap { {}<left>
    inoremap {<CR> {<CR>}<ESC>O
    inoremap {;<CR> {<CR>};<ESC>O
endfunction

function DisableAutoComplete() abort
    iunmap "
    iunmap '
    iunmap (
    iunmap [
    iunmap {
    iunmap {<CR>
    iunmap {;<CR>
endfunction

command EnableAutoComplete call EnableAutoComplete()
command DisableAutoComplete call DisableAutoComplete()

call EnableAutoComplete()
