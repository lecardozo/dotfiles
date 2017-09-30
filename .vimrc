set nocompatible
syntax enable 
filetype indent plugin on
	
au BufNewFile,BufRead Snakefile set filetype=snakemake
au BufNewFile,BufRead *.rules set filetype=snakemake
au BufNewFile,BufRead *.snakefile set filetype=snakemake
au BufNewFile,BufRead *.snake set filetype=snakemake

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'jalvesaq/R-Vim-runtime'
Plugin 'vim-scripts/Vim-R-plugin'
Plugin 'ervandew/supertab'
Plugin 'honza/vim-snippets'
Plugin 'Townk/vim-autoclose' 
Plugin 'scrooloose/nerdtree' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set number
set ruler
set t_ut=

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Lines added by the Vim-R-plugin command :RpluginConfig (2014-Dec-11 16:43):
" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
    inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
endif
" Press the space bar to send lines (in Normal mode) and selections to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

" Force Vim to use 256 colors if running in a capable terminal emulator:
if &term =~ "xterm" || &term =~ "256" || $DISPLAY != "" || $HAS_256_COLORS == "yes"
    set t_Co=256
endif

" There are hundreds of color schemes for Vim on the internet, but you can
" start with color schemes already installed.
" Click on GVim menu bar "Edit / Color scheme" to know the name of your
" preferred color scheme, then, remove the double quote (which is a comment
" character, like the # is for R language) and replace the value "not_defined"
" below:

noremap <C-T> :NERDTreeToggle<CR> 
set laststatus=2
colorscheme badwolf
