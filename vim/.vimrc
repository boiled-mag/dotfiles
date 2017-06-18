if !has('gui_running')
    set notimeout
    set ttimeout
    set timeoutlen=100
endif 

set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

set number
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

"ファイルの文字コード自動認識
" 「:e ++enc=文字コード」で再読み込み.
set fileencodings=utf-8,sjis,cp932,iso-2022-jp,euc-jp
"改行コードの自動認識
" 「:e ++ff=改行コード」で再読み込み.
set fileformats=unix,dos,mac

syntax on
colorscheme elflord

