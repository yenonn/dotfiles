" https://github.com/junegunn/vim-plug
"installing the vim plugin
" mkdir -p ~/.nvim/plugged
" mkdir -p ~/.nvim/autoload
" mkdir -p ~/.nvim/colors
" curl -fLo ~/.nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" From the vim command windows, prompt :PlugInstall to proceed plugins
" installation
call plug#begin('~/.nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'arzg/vim-colors-xcode'
Plug 'tomasr/molokai'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
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
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'tpope/vim-commentary'
Plug 'lewis6991/gitsigns.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'nvim-lua/plenary.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ggandor/lightspeed.nvim'
Plug 'lfilho/cosco.vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'hashivim/vim-terraform'
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'tpope/vim-surround'
call plug#end()

let mapleader=" "
set encoding=UTF-8
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
set splitright
set colorcolumn=100

let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1

" colorscheme
" colorscheme gruvbox
" colorscheme nord 
" colorscheme embark
" colorscheme xcodedarkhc
colorscheme molokai
" let g:molokai_original = 1
" colorscheme dracula
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>z :wincmd \|<CR>
nnoremap <leader>zz :wincmd =<CR>
nnoremap <leader>. :wincmd = \| :wincmd l \| :wincmd \|<CR>
nnoremap <leader>, :wincmd = \| :wincmd h \| :wincmd \|<CR>
nnoremap <silent> <C-n> :tabNext<CR>  
nnoremap <leader>n :bn<CR>
nnoremap <leader>N :bp<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>qq :wqa<CR>
nnoremap <leader>vs :vs<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>rr :e!<CR>
nnoremap <Esc><Esc> :noh<return>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
" nnoremap K :m .-2<CR>==
" nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
vnoremap L xp`[v`]
vnoremap H xhhp`[v`]
vnoremap zz <Esc>
inoremap zz <Esc>
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
noremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" auto_save config
let g:auto_save = 1
let g:auto_save_events = ["TextChanged", "CursorHold", "InsertLeave"]

" NERDTree
nnoremap <C-z> :NERDTreeToggle<CR>
let NERDTreeCustomOpenArgs = {'file':{'where':'v', 'reuse':'currenttab', 'keepopen':1, 'stay':0}}
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" auto open NERDTree
" autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists ("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Trigger help from devicons for more options
" :help devicons
let g:webdevicons_enable = 1
let g:webDevIconsOS = 'Linux'
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

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
nnoremap <silent> <C-p> :Files <CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-c> :Commits<CR>
nnoremap <silent> <C-b> :Buffers<CR>
nnoremap <silent> <C-r> :registers<CR>
nnoremap <C-f> :Rg<CR>
command! -bang -bar -nargs=? -complete=dir Cd
    \ call fzf#run(fzf#wrap(
    \ {'source': 'find '.( empty("<args>") ? ( <bang>0 ? "~" : "." ) : "<args>" ) .' -type d', tj
    \ 'sink': 'cd'}))

" Auto adding semicolon for javascript/typescript
nmap <F9> :AutoCommaOrSemiColonToggle<CR>
let g:go_fmt_autosave = 0
nnoremap gd :call CocActionAsync('jumpDefinition')<CR>
nnoremap gD :call CocActionAsync('jumpDeclaration')<CR>
nnoremap gr :call CocActionAsync('jumpReferences')<CR>
nnoremap gh :call CocActionAsync('doHover')<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
