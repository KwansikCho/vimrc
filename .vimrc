set nocompatible
set number
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin() 
Plugin 'gmarik/Vundle.vim' "required
Plugin 'tpope/vim-fugitive' "required 
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'wesleyche/srcexpl'
Plugin 'kien/ctrlp.vim'
Plugin 'a.vim'
call vundle#end()            
filetype plugin indent on " Put your non-Plugin stuff after this line
set background=dark
colorscheme solarized

" // ctags, cscope, /usr/bin/mkscope.mk
set tags=./tags
set csprg=/usr/local/bin/cscope
set csto=0
set cst
set nocsverb
cs add cscope.out
set csverb

" // NERDTree
autocmd vimenter * NERDTree

" // shortcut
nmap <F9> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :SrcExplToggle<CR>

" // NerdTree Settings
" // Set the height
let g:NERDTreeWinSize = 30

" // TagBar Settungs
" // Set the height
let Tlist_WinWidth = 23

" // Scouce Explorer Settings
" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 
" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 
" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 
" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 
" // In order to avoid conflicts, the Source Explorer should know what
" plugins
" // except itself are using buffers. And you need add their buffer names
" into
" // below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = [ "__Tag_List__", "_NERD_tree_" ]
" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1
" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files'
" to 
" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 
" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 
" // Set "<F3>" key for displaying the previous definition in the jump list 
let g:SrcExpl_prevDefKey = "<F3>" 
" // Set "<F4>" key for displaying the next definition in the jump list 
let g:SrcExpl_nextDefKey = "<F4>"
