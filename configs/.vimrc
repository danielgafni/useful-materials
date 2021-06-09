let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

	Plug 'arcticicestudio/nord-vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'vim-airline/vim-airline'
	Plug 'cespare/vim-toml'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'ryanoasis/vim-devicons'

call plug#end()

set encoding=UTF-8

let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1
let g:nord_cursor_line_number_background = 1
let g:airline_powerline_fonts = 1

" NERDTree toggle on ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" NERDTree git Nerd Fonts
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let NERDTreeShowHidden=1

set number  " display line numbers on the left

colorscheme nord
