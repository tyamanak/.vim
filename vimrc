"Neo Bundle Plugin manager-------------------------------------------------

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" lightline ステータスバーの装飾
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'

" iceberg カラースキーム
NeoBundle 'cocopon/iceberg.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"for edit------------------------------------------------------------------

" ｊとｋの入力をESCキーにremap 
inoremap jk <ESC>
vnoremap jk <ESC> 

" バッファやレジスタ内で使用する文字コードを設定
set encoding=utf-8

" C-X,C-Aを強制的に10進数認識させる
set nrformats=

" タブの展開するスペースの個数
set tabstop=4

" インデントを考慮して改行
set smartindent              

" インデントのスペースの数
set shiftwidth=4

" 矩形選択をテキストがないところにも適用
set virtualedit=block

" コマンドライン補完
set wildmenu

" 括弧入力時の対応する括弧を表示
set showmatch

"for appearance------------------------------------------------------------

" シンタックスハイライトをONに
syntax enable

" カラースキーム設定
colorscheme iceberg

" ダーク系のカラースキームを使う
set background=dark

" カーソルラインを表示
set cursorline

" タブ表示ON
set showtabline=2

" ステータスライン表示
set laststatus=2

" 行番号を表示
set number

"for search----------------------------------------------------------------

" 検索結果のハイライトをON
set hlsearch

" 検索時の大文字・小文字を区別しない
set ignorecase

" 検索時、大文字を入力した場合のみ、大文字小文字を区別
set smartcase

" 文字を入力する度に、その時点でのマッチしたテキストをハイライト
set incsearch

