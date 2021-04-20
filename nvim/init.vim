set nobackup
if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim/

if dein#load_state('/home/chronos/user/.cache/dein')
  call dein#begin('/home/chronos/user/.cache/dein')
  call dein#add('/home/chronos/user/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
"  call dein#add('Shougo/unite.vim')
  call dein#add('thinca/vim-quickrun')
  call dein#add('mattn/emmet-vim')
  call dein#add('Shougo/vimfiler')
"  call dein#add('Shougo/vimproc', {'build': 'make'})
"  call dein#add('Shougo/vimshell')
  call dein#add('h1mesuke/unite-outline')
"  call dein#add('vim-scripts/EnhCommentify.vim')
"  call dein#add('vim-scripts/open-browser.vim')
"  call dein#add('thinca/vim-ref')
"  call dein#add('vim-scripts/YankRing.vim')
  call dein#add('bling/vim-airline')
  call dein#add('alpaca-tc/alpaca_powertabline')
"  call dein#add('mattn/mkdpreview-vim')
  call dein#add('tyru/eskk.vim')
  call dein#add('tyru/skkdict.vim')
  call dein#add('tomasr/molokai')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('cohama/lexima.vim')
"  call dein#add('davidhalter/jedi-vim')
  call dein#end()
  call dein#save_state()
endif

"if dein#check_install()
"  call dein#install()
"endif
filetype plugin indent on
syntax enable

nnoremap <C-X> n
nnoremap <Tab> <C-W>w
nnoremap <S-Tab> <C-W>W

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set noswapfile
set number
set expandtab
set tabstop=2
set shiftwidth=2

"eskk.vim settings
set imdisable
"let g:eskk#directory = "~/.vim/.eskk"
"let g:eskk#dictionary = { 'path': "~/.vim/.skk-dict/", 'sorted': 0, 'encoding': 'utf-8', }
"let g:eskk#large_dictionary = { 'path': "~/.vim/.skk-ldict/SKK-JISYO.L", 'sorted': 1, 'encoding': 'euc-jp', }
let g:eskk#enable_completion = 1
" eskk
let g:eskk#large_dictionary = {
  \ 'path': "~/.vim/.skk-ldict" . "/SKK-JISYO.L",
  \ 'sorted': 1,
  \ 'encoding': 'euc-jp',
  \}

let g:eskk#enable_completion = 1
let g:eskk#egg_like_newline = 1

"call deoplete#enable()
"source ~/.config/nvim/plugins/deoplete.rc.vim
"source ~/.vimrc
nmap <Leader>q :QuickRun<CR>
"
let g:quickrun_config = {}
let g:quickrun_config['typescript'] = { 'type' : 'typescript/tsc' }
let g:quickrun_config['typescript/tsc'] = {
\   'command': 'tsc',
\   'exec': ['%c --target es2015 --strict %o %s', 'node %s:r.js'],
\   'tempfile': '%{tempname()}.ts',
\   'hook/sweep/files': ['%S:p:r.js'],
\ }

" Use vimfiler instead of default filer.
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
" Open filer
noremap <Leader>f :VimFiler -split -simple -winwidth=30 -no-quit<ENTER>
" Don't let <CR> enter the directory but let it open the directory
autocmd FileType vimfiler nmap <buffer> <CR> <Plug>(vimfiler_expand_or_edit)
" Automatically open vimfiler on start
"autocmd VimEnter * VimFilerExplorer
" If no files are specified, open vimfiler
"autocmd VimEnter * if !argc() | VimFiler | endif

