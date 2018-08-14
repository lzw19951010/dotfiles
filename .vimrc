" Vundle >>>>>>
    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'bling/vim-airline'
    Plugin 'kien/ctrlp.vim'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'davidhalter/jedi-vim'

    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
" <<<<<< Vundle

" NERDTree >>>>>>
"    autocmd vimenter * NERDTree
    nnoremap tt :NERDTree %:h<CR>
    nnoremap H :bprevious<CR>
    nnoremap L :bnext<CR>
    nnoremap K :bdelete<CR>
" <<<<<< NERDTree

" airline >>>>>>
    set t_Co=256
    set laststatus=2
    let g:airline_powerline_fonts=1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#syntastic#enabled=1
    let g:airline_powerline_fonts=1
    let g:airline_theme='wahaha'
    let g:airline_left_sep = ' '
" <<<<<< airline

" ctrlp >>>>>>
    let g:ctrlp_max_files = 0
    set wildignore+=*_log*,*.a,*.o,*ficus,*unittest,*functest,*.log,*.class,*.jar,*log_info*
    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
    let g:ctrlp_user_command = {
      \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others']
        \ }
      \ }
" <<<<< ctrlp


" solarized >>>>>>
    set background=dark
    colorscheme wahaha
    let g:solarized_termcolors= 256
    let g:solarized_termtrans = 0
    let g:solarized_degrade   = 0
    let g:solarized_bold      = 1
    let g:solarized_underline = 1
    let g:solarized_italic    = 1
    let g:solarized_contrast  = "high"
    let g:solarized_visibility= "high"
" <<<<< solarized

" basic >>>>>>
    syntax on
    set nocompatible
"    set ruler
    set nu
    set scrolloff=3
    set ts=4 sw=4
    set expandtab
    set nobackup
    set noswapfile
    set cindent
    set autoindent
    set backspace=2
    set showmatch
    set smartindent
    set softtabstop=4
    set shiftwidth=4
    set hlsearch
    hi Search term=standout ctermfg=white ctermbg=63
    hi Normal ctermbg=none
    set cursorline
    "set cursorcolumn

    if filereadable($HOME."/ficus/tags")
        set tags=~/ficus/tags
    endif

    if has("autocmd")
        filetype plugin indent on
        augroup vimrcEx
            au!
            autocmd FileType text setlocal textwidth=78
            autocmd BufReadPost *
                        \ if line("'\"") > 1 && line("'\"") <= line("$") |
                        \   exe "normal! g`\"" |
                        \ endif
        augroup END
    endif " has("autocmd")
" <<<<<< basic 

" basic map >>>>>>
    :map <TAB> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
    :map <F3> <C-]>
" <<<<<< basic map

" other >>>>>>
    let g:omni_sql_no_default_maps = 1
" <<<<<< other

" test >>>>>

   ":map <F4> :echo '123'<CR>

" <<<<< test
