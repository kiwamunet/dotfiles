""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""

" 内部文字コードUTF-8
set encoding=utf-8
" 読み込み時にどの文字コードとして読み込むかを指定する
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
" 日本語の文字コードを自動判別し、UTF-8環境で編集や表示が可能となります。
set fileformats=unix,dos,mac
" スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
set noswapfile
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2
" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" 入力中のコマンドを表示する
set showcmd
" 小文字のみで検索したときに大文字小文字を無視する
set smartcase
" 検索結果をハイライト表示する
set hlsearch
" 暗い背景色に合わせた配色にする
set background=dark
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch
" 保存されていないファイルがあるときでも別のファイルを開けるようにする
set hidden
" 不可視文字を表示する
"set list
" 構文毎に文字色を変化させる
set paste
" タブと行の続きを可視化する
"set listchars=tab:>\ ,extends:<
" 行番号を表示する
set number
" 対応する括弧やブレースを表示する
set showmatch
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" タブ文字の表示幅
set tabstop=4
" Vimが挿入するインデントの幅
set shiftwidth=4
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
"set smarttab
" タブ入力を複数の空白入力に置き換える
set expandtab
" ペースト時に自動インデントさせない
syntax on
" カラースキーマの指定
colorscheme desert
" 行番号の色
highlight LineNr ctermfg=darkyellow
" vim undo 永続化
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif
" keymap NERDTreeToggle(ctrl n)
map <C-n> :NERDTreeToggle<CR> 
 """"""""""""""""""""""""""""""
" neobundle
 """"""""""""""""""""""""""""""
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
" ---インストールするプラグインをここに記述"---

NeoBundleFetch 'Shougo/neobundle.vim'
" コメントON/OFFを手軽に実行(ctrl --)
NeoBundle 'tomtom/tcomment_vim'
" tree を表示()
NeoBundle 'scrooloose/nerdtree'


" --- end ---
call neobundle#end()

" Required:
filetype plugin indent on
NeoBundleCheck
