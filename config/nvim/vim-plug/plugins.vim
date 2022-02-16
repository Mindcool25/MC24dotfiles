" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
		" Discord rich presence
		Plug 'andweeb/presence.nvim'
    " Commenting plugin for ease of commenting
    Plug 'b3nj5m1n/kommentary'
    " Debug stuff
    Plug 'mfussenegger/nvim-dap'
    " Debug stuff autoconfig
    Plug 'rcarriga/nvim-dap-ui'
    " Code completion
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
    Plug 'ms-jpq/coq.thirdparty', {'branch' : '3p'}
    " Startpage stuff
    Plug 'glepnir/dashboard-nvim'
    Plug 'liuchengxu/vim-clap'
    " Vim wiki
    Plug 'lervag/wiki.vim'

    call plug#end()
