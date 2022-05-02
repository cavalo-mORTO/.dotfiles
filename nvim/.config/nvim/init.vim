set tabstop=4 shiftwidth=4 expandtab " replace tabs with spaces

set splitbelow splitright " split more naturally

set nowrap! " don't wrap lines

set mouse=a
set number

set undofile

set swapfile

set backup
set writebackup
set backupdir=$HOME/.local/share/nvim/backup

set termguicolors
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16

au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

let g:csv_nomap_up=1
let g:csv_nomap_down=1

" Remember cursor position
augroup vimrc-remember-cursor-position
    autocmd!
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

call plug#begin()
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'soywod/himalaya', {'rtp': 'vim'}
call plug#end()

lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
    indent = {
        enable = true
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
}
EOF
