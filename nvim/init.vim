let mapleader = " "
colorscheme gruvbox
set background=dark
set mouse+=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set colorcolumn=100

" Installation url sources
" https://github.com/junegunn/vim-plug
"installing the vim plugin
" mkdir ~/.vim/plugged
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" From the vim command windows, prompt :PlugInstall to proceed plugins
" installation
call plug#begin('~/.local/share/nvim/site/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug '907th/vim-auto-save'
Plug 'jiangmiao/auto-pairs'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf.vim'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'f-person/git-blame.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

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
inoremap >> <C-O>A
inoremap << <C-O>I
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

" auto_save config
let g:auto_save = 1
let g:auto_save_events = ["TextChanged", "CursorHold"]

" NERDTree
nnoremap <C-z> :NERDTreeToggle<CR>
let NERDTreeCustomOpenArgs = {'file':{'where':'v','keepopen':1,'stay':1}}
let NERDTreeShowHidden=1

" Floaterm
nnoremap <C-x> :FloatermNew<CR>
let g:floaterm_autoclose = 1

" YAML files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'
set foldlevelstart=20
