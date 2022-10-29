if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'moll/vim-node'
Plug 'idanarye/vim-merginal'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-rooter'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'kovetskiy/sxhkd-vim'
Plug 'chrisbra/csv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'thaerkh/vim-workspace'
Plug 'junegunn/vim-emoji'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-dispatch'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'eliba2/vim-node-inspect'
Plug 'guns/vim-clojure-static'
Plug 'morhetz/gruvbox'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'ruanyl/vim-gh-line'
Plug 'elzr/vim-json'
Plug 'zhamlin/tiler.vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()

filetype plugin indent on

set hlsearch
set number
set autoindent

syntax enable

"" Theme
set background=dark
colorscheme nord

"" Four spaces instead of tab.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

"" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" Basic tab completion
imap <Tab> <C-P>

"" ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|venv\|dist'

"" vim-airline statusline appear all the time
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'

"" syntastic begginer config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""" syntastic checker config
let g:syntastic_rst_checkers = ['rstcheck']

"" rspec.vim
let g:rspec_command = "compiler rspec | set makeprg=zeus | Make rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

"" NerdTree
nnoremap <Leader><C-_> :NERDTreeFocus<CR>

" Two spaces indentation
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2
autocmd Filetype java setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
