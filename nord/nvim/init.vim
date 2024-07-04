" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible
set clipboard+=unnamedplus
" Set Dein base path (required)
let s:dein_base = '/home/Belisarius/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '/home/Belisarius/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('nvim-lua/plenary.nvim')
call dein#add('nvim-telescope/telescope.nvim')
call dein#add('nvim-treesitter/nvim-treesitter')
call dein#add('sharkdp/fd')
"call dein#remove('nvimdev/dashboard-nvim')
call dein#add('frabjous/knap')
call dein#add('tanloong/interlaced.nvim')
call dein#add('HakonHarnes/img-clip.nvim')
call dein#add("potamides/pantran.nvim")
"Python
call dein#add('python-mode/python-mode')
call dein#add('davidhalter/jedi-vim')
"Syntax
call dein#add('sheerun/vim-polyglot')
call dein#add('utilyre/barbecue.nvim') 
"File Explorer
"call dein#add('scrooloose/NERDTREE')
call dein#add('dinhhuy258/sfm.nvim')
call dein#add('ekickx/clipboard-image.nvim')
"TREESITTER plugins
call dein#add('tree-sitter/tree-sitter-css')
call dein#add('tree-sitter-grammars/tree-sitter-csv')
call dein#add('tree-sitter/tree-sitter-html')
call dein#add('tree-sitter/tree-sitter-java')
call dein#add('latex-lsp/tree-sitter-latex')
call dein#add('tree-sitter/tree-sitter-python')
call dein#add('tree-sitter/tree-sitter-cpp')
call dein#add('tree-sitter-grammars/tree-sitter-arduino')
"THEMES
call dein#add('shaunsingh/nord.nvim')
"call dein#add('gbprod/nord.nvim')
colorscheme nord
" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax enable

" Uncomment if you want to install not-installed plugins on startup.
"if dein#check_install()
" call dein#install()
"endif
