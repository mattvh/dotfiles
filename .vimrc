"Vundle
if filereadable(expand("~/.vimbundles"))
	source ~/.vimbundles
endif

"General
set nocompatible
filetype indent plugin on

set hidden
set wildmenu
set showcmd
set hlsearch
set nomodeline

set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set ruler
set number
set notimeout ttimeout ttimeoutlen=200
set nobackup
set noswapfile
set virtualedit=onemore

"Colors
syntax on
set background=dark
colorscheme solarized

"Tabs
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

"Spelling
set spell spelllang=en_us

"GUI Mode
set guifont=Menlo:h13

"Paste mode, for pasting large blocks of text from other apps
set pastetoggle=<F2>

"Map Command+] and Command+[ to indentation commands
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

"Switch to working dir when opening a new buffer
autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

"NERDTree Plugin
nmap <leader>nt :NERDTreeToggle <CR>
let NERDTreeShowHidden=1

"Neocomplete Plugin
let g:neocomplete#enable_at_startup = 1
