function RusKeymap()
    setlocal keymap=russian-jcukenwin
    setlocal iminsert=0
    setlocal imsearch=0
endfunction
autocmd BufEnter * :call RusKeymap()
