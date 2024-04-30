" ACQ's vimrc for amix configuration
" Should be copied to ~/.vim_runtime/my_configs.vim

" Replace buffer edit with qq, quit with q
map <leader>qq :e ~/buffer<cr>
map <leader>q :q<cr>
" Fast edits and source
nnoremap <leader>ev :sp $MYVIMRC<CR>"   edit vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>"   source vimrc
nnoremap <leader>eb :sp ~/.bash_profile<CR>"   edit bash_profile
" Save session and quit, open it with vim -S (overwrites Session.vim)
nnoremap <leader>s :mksession!<CR> :xa<CR>

set visualbell
" set number "show line numbers
set nonumber " don't show line numbers
" set cursorline "show line under cursor position
set showcmd "show latest command in bottom right, useful for <leader> mappings
set mouse=a     "enables use of mouse, also allows Visual Block selection while holding, but disables moving cursor with scrolling :(
" set mouse=nicr
set wildmode=longest:longest,list,full
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
" let g:EditorConfig_indent_style = 'space' " doesn't work, just disable indent_style
" let g:autoclose_on = 0  "disable automatic closing of {}() etc
" let g:pear_tree_smart_openers = 1
" let g:pear_tree_smart_closers = 1
set shortmess-=S  "show search count

colorscheme desert
colorscheme peaksea

" Set backup options
set backup
set writebackup
" set nowb, set noswapfile, set nobackup
set backupdir=~/.vim_runtime/temp_dirs,.
set directory=~/.vim_runtime/temp_dirs,.

" Tab switching keys
map <leader>tr :tabr<cr>
map <leader>tl :tabl<cr>
map <C-h> :tabp<cr>
map <C-l> :tabn<cr>

inoremap jk <esc>
nnoremap FM :set foldmethod=marker<cr>

" Ack.vim
noremap <leader>a :Ack <cword><cr>

" Comment string for ini
autocmd Filetype dosini setlocal commentstring=#\ %s
autocmd Filetype cpp set commentstring=//\ %s
autocmd Filetype cuda set commentstring=//\ %s

" Need to fix tab max length
"set guitablabel=%-0.12t%M

" command! W w !sudo tee % > /dev/null

" Change foldmethod autocmd in filetype for python 
" :nunmap <buffer> F
au FileType python map <buffer> FI :set foldmethod=indent<cr>
map <buffer> FS :set foldmethod=syntax<cr>

" ALE config
" Check Python files with flake8 and pyling
let g:ale_linters = {'python': ['flake8', 'pylint'],}
" Fix Python files with autopep8 and yapf
let g:ale_fixers = {'python': ['autopep8', 'yapf'],}
let g:ale_python_pylint_options = '--rcfile ~/.pylintrc'
" Set the path to the global .flake8 file
let g:python_flake8_options = '--config=~/.flake8'
" let g:ale_python_pylint_change_directory = 0
" let g:ale_python_flake8_change_directory = 0
" let g:ale_python_pylint_use_global=1
" let g:ale_echo_msg_format='[%linter%] [%severity%] %code% %s'
let g:ale_virtualtext_cursor=0

" Ctrlp config
let g:ctrlp_working_path_mode = 'ra' 
