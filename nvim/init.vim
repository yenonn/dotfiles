":lua require'telescope.builtin'.planets{} https://github.com/junegunn/vim-plug
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
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
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
Plug 'nvim-telescope/telescope.nvim'
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
Plug 'puremourning/vimspector'
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
nnoremap <S-l> :bn<CR>
nnoremap <S-h> :bp<CR>
nnoremap <leader>d :bd<CR>
nnoremap <A-l> <C-w><C-l>
nnoremap <A-h> <C-w><C-h>
nnoremap <A-j> <C-w><C-j>
nnoremap <A-k> <C-w><C-k>
nnoremap <leader>q :wq!<CR>
nnoremap <leader>qq :wqa<CR>
nnoremap <leader>vs :vs<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>rr :e!<CR>
"nnoremap <Esc><Esc> :noh<return>
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
inoremap jk <Esc>
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O
inoremap CC <Esc>C
inoremap SS <Esc>S
inoremap DD <Esc>dd
inoremap UU <Esc>u
nnoremap <Esc><Esc> :nohl<CR>
inoremap <C-b> <C-o>h
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
nnoremap <leader>e :NERDTreeToggle<CR>
let NERDTreeCustomOpenArgs = {'file':{'where':'p', 'reuse':'currenttab', 'keepopen':0, 'stay':0}}
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

" Toggleterm
nnoremap <leader>th :ToggleTerm size=10 direction=horizontal<CR>
lua <<EOF
require('toggleterm').setup {
      size = 10,
      open_mapping = [[<c-\>]],
      shading_factor = 2,
      direction = "float",
      float_opts = {
        border = "curved",
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    }
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
EOF

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

" telescope
nnoremap <leader>ff :lua require'telescope.builtin'.find_files{}<CR>
nnoremap <leader>fw :lua require'telescope.builtin'.grep_string{}<CR>
nnoremap <leader>fW :lua require'telescope.builtin'.live_grep{}<CR>
lua <<EOF
local actions = require "telescope.actions"
require('telescope').setup{
  defaults = {
    prompt_prefix = "🔍 ",
    selection_caret = "❯ ",
    path_display = { "truncate" },
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },

    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,

        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        ["<C-c>"] = actions.close,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
      },

      n = {
        ["<esc><esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["H"] = actions.move_to_top,
        ["M"] = actions.move_to_middle,
        ["L"] = actions.move_to_bottom,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,
      },
    },
  },
}
EOF
" treesitter
lua <<EOF
  require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  rainbow = {
    enable = true,
    disable = { "html" },
    extended_mode = false,
    max_file_lines = nil,
  },
  autopairs = { enable = true },
  autotag = { enable = true },
  incremental_selection = { enable = true },
  indent = { enable = false },
}
EOF

" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)

" for normal mode - the word under the cursor
nmap <leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <leader>di <Plug>VimspectorBalloonEval
nmap <leader>dx :call vimspector#Reset()<CR>
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_base_dir=expand('$HOME/.nvim/plugged/vimspector')
let g:vimspector_sidebar_width = 80
let g:vimspector_code_minwidth = 85
let g:vimspector_terminal_minwidth = 75
