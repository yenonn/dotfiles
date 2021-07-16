set mouse+=a
set undofile
set cursorline
set nocompatible
set noerrorbells
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

" YAML files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'
set foldlevelstart=20

"Lint
let b:ale_linters = ['black']
let b:ale_fixers = ['black']
let b:ale_warn_about_trailing_whitespace = 0
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

" Installation url sources
" https://github.com/junegunn/vim-plug
"installing the vim plugin
" mkdir ~/.vim/plugged
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" From the vim command windows, prompt :PlugInstall to proceed plugins
" installation
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'plasticboy/vim-markdown'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-syntastic/syntastic'
Plug 'psf/black'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '907th/vim-auto-save'
Plug 'jiangmiao/auto-pairs'
Plug 'voldikss/vim-floaterm'
call plug#end()

colorscheme gruvbox
set background=dark

let g:auto_save = 1
let g:auto_save_events = ["TextChanged", "CursorHold"]
autocmd BufWritePre *.py execute ':Black'
let g:black_virtualenv = "~/.vim/plugged/black"

nnoremap <C-x> :FloatermNew<CR>
let g:floaterm_autoclose = 1

let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>z :wincmd \|<CR>
nnoremap <leader>zz :wincmd =<CR>
nnoremap <leader>. :wincmd = \| :wincmd l \| :wincmd \|<CR>
nnoremap <leader>, :wincmd = \| :wincmd h \| :wincmd \|<CR>
nnoremap <leader>n :tabn<CR>
nnoremap <leader>p :tabp<CR>
nnoremap <leader>q :wq!<CR>
nnoremap <leader>vs :vs<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>rr :e!<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" PLUGIN: FZF
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent><leader>f :Files<CR>
nnoremap <C-r> :Rg

imap >> <C-O>A
imap << <C-O>I
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O
inoremap CC <Esc>C
inoremap SS <Esc>S
inoremap DD <Esc>dd
inoremap UU <Esc>u
inoremap <C-b> <C-o>h
inoremap <c-h> <left>
inoremap <C-w> <C-o>w
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-l> <Right>
"inoremap <C-w> <C-O>w
"inoremap <C-b> <C-O>b

nnoremap <C-z> :NERDTreeToggle<CR>
let NERDTreeCustomOpenArgs = {'file':{'where':'v','keepopen':1,'stay':1}}
let NERDTreeShowHidden=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_python_checkers = ['flake8']
let g:syntastic_quiet_messages = { "type": "style" }

"autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
"let g:autopep8_on_save = 1
"let g:autopep8_disable_show_diff=1
"let g:autopep8_ignore="E501,W293"

let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
