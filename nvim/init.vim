" Installation url sources
" https://github.com/junegunn/vim-plug
"installing the vim plugin
" mkdir ~/.nvim/plugged
" curl -fLo ~/.nvim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" From the vim command windows, prompt :PlugInstall to proceed plugins
" installation
call plug#begin('~/.nvim/plugged')
" Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug '907th/vim-auto-save'
Plug 'jiangmiao/auto-pairs'
Plug 'voldikss/vim-floaterm'
" Installation url sources
" https://github.com/junegunn/vim-plug
"installing the vim plugin
" mkdir ~/.nvim/plugged
" curl -fLo ~/.nvim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" From the vim command windows, prompt :PlugInstall to proceed plugins
" installation
call plug#begin('~/.nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go'
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

let mapleader=" "
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

" colorscheme
colorscheme gruvbox
" colorscheme nord

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>z :wincmd \|<CR>
nnoremap <leader>zz :wincmd =<CR>
nnoremap <leader>. :wincmd = \| :wincmd l \| :wincmd \|<CR>
nnoremap <leader>, :wincmd = \| :wincmd h \| :wincmd \|<CR>
nnoremap <leader>n :bn<CR>
nnoremap <silent> <C-n> :tabNext<CR>  
nnoremap <leader>p :bp<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>q :wq!<CR>
nnoremap <leader>qq :qa!<CR>
nnoremap <leader>vs :vs<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>rr :e!<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O
inoremap CC <Esc>C
inoremap SS <Esc>S
inoremap DD <Esc>dd
inoremap UU <Esc>u
inoremap <C-b> <C-o>h
inoremap <C-h> <left>
inoremap <C-w> <C-o>w
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

" Copy to clipboard
vnoremap  y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" auto_save config
let g:auto_save = 1
let g:auto_save_events = ["TextChanged", "CursorHold"]

" NERDTree
nnoremap <C-z> :NERDTreeToggle<CR>
let NERDTreeCustomOpenArgs = {'file':{'where':'v', 'reuse':'currenttab', 'keepopen':1, 'stay':0}}
let NERDTreeShowHidden=1
" auto open NERDTree
" autocmd VimEnter * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists ("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Floaterm
nnoremap <C-x> :FloatermNew! cd %:p:h<CR>
let g:floaterm_autoclose = 1

" YAML files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'
set foldlevelstart=20

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'default'

" fzf find
" nnoremap <silent> <C-t> :Files %:p:h<CR>
nnoremap <silent> <C-t> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-c> :Commits<CR>
nnoremap <silent> <C-b> :Buffers<CR>
nnoremap <silent> <C-r> :registers<CR>
nnoremap <C-f> :Rg<CR>
command! -bang -bar -nargs=? -complete=dir Cd
    \ call fzf#run(fzf#wrap(
    \ {'source': 'find '.( empty("<args>") ? ( <bang>0 ? "~" : "." ) : "<args>" ) .' -type d',
    \ 'sink': 'cd'}))

" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tg <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>th <cmd>Telescope help_tags<cr>
nnoremap <leader>tj <cmd>Telescope jumplist<cr>

" Using Lua functions
nnoremap <leader>tf <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>tg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>tb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>th <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>tj <cmd>lua require('telescope.builtin').jumplist()<cr>
Plug 'junegunn/fzf.vim'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'f-person/git-blame.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go'
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

let mapleader=" "
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

" colorscheme
colorscheme gruvbox
" colorscheme nord

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>z :wincmd \|<CR>
nnoremap <leader>zz :wincmd =<CR>
nnoremap <leader>. :wincmd = \| :wincmd l \| :wincmd \|<CR>
nnoremap <leader>, :wincmd = \| :wincmd h \| :wincmd \|<CR>
nnoremap <leader>n :bn<CR>
nnoremap <silent> <C-n> :tabNext<CR>  
nnoremap <leader>p :bp<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>q :wq!<CR>
nnoremap <leader>qq :qa!<CR>
nnoremap <leader>vs :vs<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>rr :e!<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O
inoremap CC <Esc>C
inoremap SS <Esc>S
inoremap DD <Esc>dd
inoremap UU <Esc>u
inoremap <C-b> <C-o>h
inoremap <C-h> <left>
inoremap <C-w> <C-o>w
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

" Copy to clipboard
vnoremap  y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" auto_save config
let g:auto_save = 1
let g:auto_save_events = ["TextChanged", "CursorHold"]

" NERDTree
nnoremap <C-z> :NERDTreeToggle<CR>
let NERDTreeCustomOpenArgs = {'file':{'where':'v', 'reuse':'currenttab', 'keepopen':1, 'stay':0}}
let NERDTreeShowHidden=1
" auto open NERDTree
" autocmd VimEnter * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists ("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Floaterm
nnoremap <C-x> :FloatermNew! cd %:p:h<CR>
let g:floaterm_autoclose = 1

" YAML files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'
set foldlevelstart=20

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'default'

" fzf find
" nnoremap <silent> <C-t> :Files %:p:h<CR>
nnoremap <silent> <C-t> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-c> :Commits<CR>
nnoremap <silent> <C-b> :Buffers<CR>
nnoremap <silent> <C-r> :registers<CR>
nnoremap <C-f> :Rg<CR>
command! -bang -bar -nargs=? -complete=dir Cd
    \ call fzf#run(fzf#wrap(
    \ {'source': 'find '.( empty("<args>") ? ( <bang>0 ? "~" : "." ) : "<args>" ) .' -type d',
    \ 'sink': 'cd'}))

" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tg <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>th <cmd>Telescope help_tags<cr>
nnoremap <leader>tj <cmd>Telescope jumplist<cr>

" Using Lua functions
nnoremap <leader>tf <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>tg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>tb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>th <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>tj <cmd>lua require('telescope.builtin').jumplist()<cr>
