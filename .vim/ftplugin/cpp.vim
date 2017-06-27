echo "file type is cpp"

"タブ文字の長さ
setlocal tabstop=4
setlocal shiftwidth=4

" 空白文字ではなくてタブ文字を使用する
setlocal expandtab

" 最後に定義された include 箇所へ移動してを挿入モードへ
nnoremap <buffer><silent> <Space>ii :execute "?".&include<CR> :noh<CR> o
