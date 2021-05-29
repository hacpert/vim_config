syntax on

syntax enable
set laststatus=2 
set exrc
set relativenumber
set nu
set noshowmode
set nohlsearch
set hidden
set noerrorbells
set encoding=utf-8
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set nowrap
"set smartcase
set noswapfile
set nobackup
set mouse=a
set smartindent
set number
set smarttab
set cindent
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
"  set termguicolors
set signcolumn=yes
" always uses spaces instead of tab characters


set spell spelllang=en_us
set spellfile=~/.vim/spell/en.utf-8.add

set colorcolumn=80
highlight colorcolumn ctermbg=0 guibg=lightgrey


highlight Normal guibg=none
highlight NonText guibg=none
set bg=dark
set t_Co=256

set background=dark
if version >=700 
 
endif

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'

" spelling words 
" Plug 'micarmst/vim-spellsync'
" Plug 'inkarkat/vim-spellcheck'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'christoomey/vim-tmux-navigator'

" Plug 'gruvbox-community/gruvbox'
" Plug 'morhetz/gruvbox'
Plug 'gruvbox-material/vim', {'as': 'gruvbox-material'}

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'neoclide/coc-rls'
Plug 'fannheyward/coc-pyright'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'


Plug 'mxw/vim-jsx'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'stsewd/fzf-checkout.vim' 

Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/completion-nvim'

Plug 'rust-lang/rust.vim'
Plug 'tweekmonster/gofmt.vim'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'

Plug 'junegunn/gv.vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-dispatch'
Plug 'theprimeagen/vim-be-good'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-projectionist'

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'
" Initialize plugin system

Plug 'itchyny/vim-gitbranch'

Plug 'jiangmiao/auto-pairs'
" Plug 'ludovicchabant/vim-gutentags'

" autocomplete https://github.com/Shougo/deoplete.nvim

Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif

"Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
"" do not forget to install jedi
"Plug 'deoplete-plugins/deoplete-jedi'
"" do not forget to install solargraph
"Plug 'uplus/deoplete-solargraph'

Plug 'dense-analysis/ale' 

Plug 'vim-test/vim-test'
Plug 'AndrewRadev/tagalong.vim'


"  import cost required
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }

" package json update
Plug 'meain/vim-package-info', { 'do': 'npm install' }

call plug#end()

let g:coc_global_extensions = [
\ 'coc-json',
\ 'coc-tsserver',
\ 'coc-prettier',
\ 'coc-eslint',
\ 'coc-git',
\ 'coc-flow',
\ 'coc-html',
\ 'coc-css',
\ 'coc-flutter',
\ 'coc-flutter-tools',
\ 'coc-kite',
\ 'coc-pyright',
\ 'coc-diagnostic'
\ ]

let mapleader = " "

inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']
command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')


let g:gruvbox_material_background = 'hard'

colorscheme gruvbox-material
" colorscheme gruvbox

" set background=dark termguicolors cursorline
 
" hi! Normal ctermbg=NONE guibg=NONE
" hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE


" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
      wincmd p
  endif
endfunction

" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" search files 
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

" Remap for do codeAction
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
noremap <leader>pg <cmd>Telescope git_files<cr>
noremap <leader>ps <cmd>Telescope grep_string<cr>

" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>pg <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>ps <cmd>lua require('telescope.builtin').grep_string()<cr>

"nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For >")})<CR>

" GFiles
nnoremap <leader>fg :Files<CR>
nnoremap <leader>fa :Ag<CR>

" flutter config 
let g:dart_format_on_save = 1
let g:dart_style_guide = 2
" let g:dartfmt_options
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" safe files
noremap <Leader>s :w<CR>
noremap <Leader>q :q<CR>
noremap <Leader>r :CocCommand Flutter.run<CR>


" git fugitive keysmap
nmap <leader>gu :diffget //3<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gs :G<CR>


let g:kite_supported_languages = ['*']

" javascript Plug
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1


"let g:deoplete#enable_at_startup = 1


" git checkout
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

noremap <leader>gc :GCheckout<CR>


" kite 
"
let g:kite_previous_placeholder = '<C-H>'
let g:kite_next_placeholder = '<C-L>'



" flow
"

set nocompatible
filetype off

filetype plugin indent on

nnoremap <leader>t :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('&lt;cword&gt;')
  else
    call CocAction('doHover')
  endif
endfunction


" Equivalent to the above.
let b:ale_linters = {'javascript': ['eslint', 'prettier']}

nmap <silent> <C-g> <Plug>(ale_previous_wrap)
nmap <silent> <C-d> <Plug>(ale_next_wrap)

let g:ale_fixers = {
\   'javascript': ['eslint','prettier'],
\   'css': ['prettier'],
\}

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

let g:ale_linters = {
 \  'javascript': ['flow-language-server', 'eslint', 'prettier'],
 \  'jsx': ['prettier', 'eslint']
\} 

" instead of having ~/.vim/coc-settings.json
let s:LSP_CONFIG = {
\  'flow': {
\    'command': exepath('flow'),
\    'args': ['lsp'],
\    'filetypes': ['javascript', 'javascriptreact'],
\    'initializationOptions': {},
\    'requireRootPattern': 1,
\    'settings': {},
\    'rootPatterns': ['.flowconfig']
\  }
\}


let s:languageservers = {}
for [lsp, config] in items(s:LSP_CONFIG)
  let s:not_empty_cmd = !empty(get(config, 'command'))
  if s:not_empty_cmd | let s:languageservers[lsp] = config | endif
endfor

if !empty(s:languageservers)
  call coc#config('languageserver', s:languageservers)
  endif

" testing vim
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

let g:test#javascript#runner = 'jest'

augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:airline#extensions#ale#enabled = 1 

" If you want to use ALE only for linting,
" you can explicitly disable LSP tools
let g:ale_disable_lsp = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
" let g:ale_open_list = 1
" let g:ale_keep_list_window_open = 1
 
" Use different highlighting to point out problems
let g:ale_set_highlights = 1

" Use the sign column (far left) to point out problems
let g:ale_set_signs = 1

" Symbols to use if g:ale_set_signs is enabled
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠️'


hi link ALEErrorSign   GruvboxRed 
hi link ALEWarningSign GruvboxYellow 

hi Error   cterm=bold gui=bold
hi Warning cterm=bold gui=bold

nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr> 


let g:gutentags_cache_dir="~/.cache/nvim/tagfiles/" 

set clipboard=unnamed
set showcmd
set path=.,src
" set path+=**
" set wildmenu
"

" import cost auto on buffer
augroup import_cost_auto_run
  autocmd!
  autocmd InsertLeave *.js,*.jsx,*.ts,*.tsx ImportCost
  autocmd BufEnter *.js,*.jsx,*.ts,*.tsx ImportCost
  "autocmd CursorHold *.js,*.jsx,*.ts,*.tsx ImportCost
augroup END
