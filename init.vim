" vim-plug Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline-themes'

" Initialise plugin system
call plug#end()

" ==================END PLUGINS=============

" Settings
" Spellcheck, underline misspelled words
hi clear SpellBad
hi SpellBad cterm=underline

" Associate vim-pandoc-syntax with necessary file types
augroup pandoc_syntax
        au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

" Other customizations
" Set table mode to markdown-compatible
let g:table_mode_corner='|'
" Integrate Powerline Fonts
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 1

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
