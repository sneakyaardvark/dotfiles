" Specify dir for plugins
"
call plug#begin('~/.vim/plugged')
" theme
Plug 'aonemd/kuroi.vim'

" show colors with color codes
Plug 'norcalli/nvim-colorizer.lua'

"Plug 'TimUntersberger/neofs'
Plug 'kyazdani42/nvim-web-devicons' "file icons
"Plug 'kyazdani42/nvim-tree.lua'
Plug 'preservim/nerdtree'

Plug 'itchyny/lightline.vim'

Plug 'roryokane/detectindent'

" editing tools
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

set number " add numbers
set cursorline " show cursor location by highlighting line
set nobackup " no backup file created (<file>~)
set noswapfile " no swap file (<file>.swp)
set undodir=/tmp// " set location of undo files (<file>.un~) to /tmp, with dir info as filename (the //)

" search
set incsearch " search while searching
set hlsearch " highlight matches
set ignorecase "ignore case for searching
set smartcase "ignore case IF search is lower case, otherwise case-sensitive

" folding
"set foldenable " ensure folding is enabled
"set foldnestmax=10 " maximum nested fold
"set foldmethod=syntax " fold according to syntax

set autoindent
set copyindent " copy prev line's indent if auto indent doesn't know what to do
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of space per tab when editing
set shiftwidth=4 " number of spaces for autoindent

set t_Co=256
set background=dark
colorscheme kuroi
set termguicolors " needed for colorizer (and some other stuff)
set noshowmode " remove showing mode; it's shown on lightline

" Mappings
let mapleader=","

nnoremap <leader><space> :nohlsearch<CR>


" set lightline colorscheme
let g:lightline = {
	\ 'colorscheme': '16color',
	\ }
" setup colorizer for all files
lua require'colorizer'.setup()
