set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-pathogen'
Plugin 'whatyouhide/vim-gotham'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
Plugin 'tpope/vim-repeat'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-indent'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'christoomey/vim-sort-motion'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'szw/vim-tags'
Plugin 'tpope/vim-rvm'
Plugin 'countoren/WSearch'
Plugin 'gioele/vim-autoswap'
Plugin 'tmhedberg/matchit'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'sickill/vim-pasta'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'tpope/vim-scriptease'
Plugin 'tpope/vim-vinegar'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on

" Setting theme
syntax enable
"set background=light
"colorscheme solarized
colorscheme gotham
colorscheme gotham256
set t_Co=256

" change the current pane to tmux already opend with autoswap
let g:autoswap_detect_tmux = 1

set number " show the current line number"
set relativenumber
map <C-n> :NERDTreeToggle<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:tmux_navigator_no_mappings = 1


nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>


"tmux navigaor no mappings

let g:tmux_navigator_save_on_switch = 1

" Fugitive
autocmd QuickFixCmdPost *grep* cwindow

if has("autocmd")
	  " Enable filetype detection
	     filetype plugin indent on
	      " Restore cursor position
	         autocmd BufReadPost *
	             \ if line("'\"") > 1 && line("'\"") <= line("$") |
	      \   exe "normal! g`\"" |
	      \ endif
  endif
  if &t_Co > 2 || has("gui_running")
	    " Enable syntax highlighting
	       syntax on
	       endif

autocmd BufRead,BufNewFile *.md setlocal spell

set complete+=kspell

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"emmet remap key
let g:user_emmet_leader_key='<C-Z>'

"set textwidth=80
"set colorcolumn=+1

"alternatively
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

set runtimepath^=~/.vim/bundle/ctrlp.vim
set clipboard+=unnamed

nnoremap ; :
nnoremap : ;
Bundle 'wakatime/vim-wakatime'

"airline
set laststatus=2
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

autocmd Filetype gitcommit setlocal spell textwidth=72
