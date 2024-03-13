" --- Plugins ---

  call plug#begin()

  " File browsing/searching
  Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
  let NERDTreeShowHidden=1

  Plug 'ryanoasis/vim-devicons', { 'on': 'NERDTreeToggle' }
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }
  Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
  :let g:NERDTreeWinSize=45

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Comments
  Plug 'tpope/vim-commentary'

  " Linting
  Plug 'dense-analysis/ale'
  let g:ale_completion_enabled = 1

  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

  " Testing
  Plug 'vim-test/vim-test'
  let test#python#runner = 'pytest'

  " Debugging
  Plug 'puremourning/vimspector'
  let g:vimspector_enable_mappings = 'HUMAN'
  let g:vimspector_base_dir='/home/thom/.vim/plugged/vimspector'

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'airblade/vim-gitgutter'
  let g:gitgutter_sign_priority = 1

  "Appearance
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  let g:airline_theme = 'codedark'
  let g:airline#extensions#ale#enabled=1
  let g:airline#extensions#hunks#enabled=0
  let g:airline_powerline_fonts = 1

  Plug 'tomasiser/vim-code-dark'
  let g:codedark_modern=1

  Plug 'nathanaelkane/vim-indent-guides'
  let g:indent_guides_enable_on_vim_startup = 1
  let g:indent_guides_auto_colors = 0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

  " Autocomplete
  Plug 'ervandew/supertab'
  let g:SuperTabDefaultCompletionType = "<c-n>"

  " Navigation
   Plug 'christoomey/vim-tmux-navigator'
   Plug 'pbogut/fzf-mru.vim'
  
  call plug#end()
" ---

" --- General settings ---
  syntax on
  colorscheme codedark
  set background=dark
  set encoding=UTF-8
  set shiftwidth=2 smarttab expandtab tabstop=2
  set nocompatible
  set nomodeline
  set spelllang=en_gb
  set number relativenumber
  set updatetime=100
  set autowriteall
  set signcolumn=yes

  " Make the vertical divide a bit less ugly
  highlight VertSplit cterm=NONE
  set fillchars+=vert:│

  " Set the cursor in the last known position in buffer
  if has("autocmd")
    augroup vimrcEx
    autocmd!

    autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

    autocmd BufReadPost *.run set filetype=sh

    augroup END
  endif
" ---

" --- Mappings ---

  let mapleader = " "

  nmap <Leader>n :NERDTreeToggle<CR>
  " Show file in NERDTree
  nmap <Leader>s :NERDTreeFind<CR>

  nmap <Leader>f :ALEFix<CR>
  nmap <Leader>g :ALEGoToDefinition<CR>
  " Show <u>sages
  nmap <Leader>u :ALEFindReferences<CR>
  nmap <Leader><CR> :ALECodeAction<CR>
  nmap <Leader>r :ALERename<CR>
  nmap <Leader>lj :ALENext<CR>
  nmap <Leader>lk :ALEPrevious<CR>

  " Run tests
  nmap <silent> <Leader>t :TestNearest<CR>
  nmap <silent> <Leader>T :TestFile<CR>

  " <o>pen file search
  nmap <silent> <Leader>O :Files<CR>
  nmap <silent> <Leader>o :GFiles<CR>
  " show <b>uffers
  nmap <silent> <Leader>b :Buffers<CR>

  " Show MRU with FZF
  nmap <silent> <Leader>m :FZFMru<CR>

  " Jump back and forth
  nmap <Leader>[ <C-o><CR>
  nmap <Leader>] <C-i><CR>

  " Open git blame commit in GitHub
  nmap <Leader>w :.GBrowse<CR>

  " Changes tab completion to tab down the list instead of up the list
  inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
    \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

  inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
    \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" ---
