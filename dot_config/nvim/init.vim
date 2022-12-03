set nocompatible

call plug#begin()

Plug 'VundleVim/Vundle.vim'

Plug 'preservim/nerdtree' " file explorer
Plug 'vim-airline/vim-airline' " status bar style

" autocompletion
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'

" coc.vim 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" auto close brackets
Plug 'tmsvg/pear-tree'

Plug 'ThePrimeagen/vim-be-good'

call plug#end()

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" enable auto indent and syntax
filetype indent plugin on
syntax on

" typing features
set backspace=indent,eol,start  " correct usage of backspace
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
if has('mouse')
  set mouse=a
endif

set clipboard=unnamedplus



" set copilot to use node v16
let g:copilot_node_command = '~/.nvm/versions/node/v16.18.0/bin/node'
" set copilot to use CTRL+J to autocomplete
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
        let g:copilot_no_tab_map = v:true

" style
set ruler
set laststatus=2  " always show status line
set confirm  " confirm prompt for certain actions
set hidden " allows opening new buffers without saving
set number " line number

" disable beeps and bells
set visualbell
set t_vb=

" search
set hlsearch " highlight
set ignorecase " case insensitive
set smartcase

" vim command autocomplete
set wildmenu
set showcmd

" case insensitive search
set ignorecase
set smartcase

" folding for certain file types
autocmd FileType python setlocal foldmethod=indent
autocmd FileType python setlocal foldlevel=0
autocmd FileType python setlocal foldnestmax=1
autocmd FileType c setlocal foldmethod=indent
autocmd FileType c setlocal foldlevel=0
autocmd FileType c setlocal foldnestmax=1

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" line numbers
set relativenumber

" disable macro recording
" map q <Nop>

" disable partial file write, this has caused me to lose big files
" and it's never been useful
cabbrev <expr> w getcmdtype()==':' && getcmdline() == "'<,'>w" ? '<c-u>w' : 'w'

" autocomplete list options
" set completeopt=longest,menuone,popuphidden
" set completepopup=highlight:Pmenu,border:off
" autocomplete suggestions menu colors
highlight Pmenu ctermbg=gray
highlight PmenuSel ctermbg=lightblue
" use tab for autocomplete suggestions
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" shortcuts
set pastetoggle=<F11> " pasting is hard on urxvt
" shortcuts for enabling file explorer
map <F5> :NERDTreeToggle<CR>
map <F6> :NERDTreeFocus<CR>
" switch between C and header
map <F4> :A<CR>

" Airline theme and icons
let g:airline#extensions#tabline#enabled = 1

" use ascii symnols for status bar
let g:airline_symbols_ascii = 1

" map vimairline symbols
" unicode symbols
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.colnr = ' | c'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' | '
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
