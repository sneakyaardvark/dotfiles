""" Vim-Plug {
call plug#begin('~/.vim/plugged')

Plug 'aonemd/kuroi.vim' " theme

Plug 'norcalli/nvim-colorizer.lua' " show colors with color codes

"Plug 'TimUntersberger/neofs'
Plug 'kyazdani42/nvim-web-devicons' "file icons
"Plug 'kyazdani42/nvim-tree.lua'
Plug 'preservim/nerdtree' " file tree viewer

Plug 'sunjon/shade.nvim' " dims inactive windows

Plug 'itchyny/lightline.vim' "statusline

Plug 'roryokane/detectindent'

""" editing tools
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()
""" }

""" View
set number " add numbers
set cursorline " show cursor location by highlighting line

""" Files
set nobackup " no backup file created (<file>~)
set noswapfile " no swap file (<file>.swp)
set undodir=/tmp// " set location of undo files (<file>.un~) to /tmp, with dir info as filename (the //)

""" Search
set incsearch " search while searching
set hlsearch " highlight matches
set ignorecase "ignore case for searching
set smartcase "ignore case IF search is lower case, otherwise case-sensitive

""" Folding
"set foldenable " ensure folding is enabled
"set foldnestmax=10 " maximum nested fold
"set foldmethod=syntax " fold according to syntax

""" Indent
set autoindent
set copyindent " copy prev line's indent if auto indent doesn't know what to do
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of space per tab when editing
set shiftwidth=4 " number of spaces for autoindent

""" Colors
set t_Co=256
set background=dark
colorscheme kuroi
set termguicolors " needed for colorizer (and some other stuff)

""" Other
set noshowmode " remove showing mode; it's shown on lightline

""" Mappings
let mapleader=","

nnoremap <leader><space> :nohlsearch<CR>

""" Plugin Settings

" set lightline colorscheme
let g:lightline = {
	\ 'colorscheme': '16color',
	\ }

" setup colorizer for all files
lua require'colorizer'.setup()
