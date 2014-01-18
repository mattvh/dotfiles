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
set incsearch
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
if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
	colorscheme solarized
endif

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
if filereadable(expand("~/.vim/bundle/nerdtree/plugin/NERD_tree.vim"))
	nmap <leader>nt :NERDTreeToggle <CR>
	let NERDTreeShowHidden=1
endif


"Neocomplete Plugin
if filereadable(expand("~/.vim/bundle/neocomplete/plugin/neocomplete.vim"))

	let g:neocomplete#enable_at_startup = 1
	let g:neocomplete#enable_smart_case = 1
	let g:neocomplete#enable_auto_delimiter = 1
	let g:neocomplete#max_list = 15

	"Disable enter completing, enable for tab
	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	function! s:my_cr_function()
		return neocomplete#close_popup() . "\<CR>"
	endfunction
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

endif


" Statusline
if has('statusline')
	set laststatus=2
	set statusline=%<%f\                     " Filename
	set statusline+=%w%h%m%r                 " Options
	set statusline+=%{fugitive#statusline()} " Git Hotness
	set statusline+=\ [%{&ff}/%Y]            " Filetype
	set statusline+=\ [%{getcwd()}]          " Current dir
	set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file info
endif


"Airline Plugin
if filereadable(expand("~/.vim/bundle/vim-airline/plugin/airline.vim"))
	let g:airline_theme = 'solarized'
	set noshowmode
	let g:airline_left_sep=''
	let g:airline_right_sep=''
endif


"Markdown Plugin
let g:vim_markdown_folding_disabled=1
