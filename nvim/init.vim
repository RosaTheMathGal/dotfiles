""" Plugins--------------------------------------------------------------------- {{{1
function! PackInit() abort
	packadd minpac

	call minpac#init({'verbose': 3})
	call minpac#add('k-takata/minpac', { 'type': 'opt'})

        " Vimwiki
        cal minpac#add('vimwiki/vimwiki')

	" My version of shades of purple theme
	call minpac#add('RosaTheMathGal/shades-of-purple.vim')

	" Haskell
	call minpac#add('neovimhaskell/haskell-vim')
endfunction

" Commands for managing plugins
command! PackClean call PackInit() | call minpac#clean()
command! PackUpdate call PackInit() | call minpac#update('', { 'do': 'call minpac#status()' })

""" Colors & Syntax------------------------------------------------------------- {{{1
set termguicolors
colorscheme shades_of_purple

let g:tex_flavor = "latex"

""" Workflow config------------------------------------------------------------- {{{1

" Allows switching buffers without saving
set hidden

" More intuitive splits
set splitbelow
set splitright

" Sets so 2 lines always surround the cursor
set scrolloff=2

" Search is insensitive unless there are capitals in the query
set ignorecase
set smartcase

set path=.,**

""" Formating config------------------------------------------------------------ {{{1

" Sets tab to 2 spaces
set expandtab
set shiftwidth=2
set softtabstop=2

" Display line number
set number

" Highlight all search results in a file
set hlsearch


""" Mapings--------------------------------------------------------------------- {{{1

" Toggles relativenumber on/off
noremap <C-n> :setlocal relativenumber!<cr>

" Ctrl-L now clears highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<cr><C-l>

" Better buffer
nnoremap <Space>b :ls<CR>:b<Space>
