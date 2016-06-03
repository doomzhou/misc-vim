"" translate the word under cursor
"function! SearchWord()
"    let expr = '!ydcv -s ' .expand("<cword>")
"    exec expr
"endfunction
"
"" translate selected text
"function! SearchWord_v(type, ...)
"    let sel_save = &selection
"    let &selection = "inclusive"
"    let reg_save = @@
"
"    if a:0
"        silent exe "normal! `<" . a:type . "`>y"
"    elseif a:type == 'line'
"        silent exe "normal! '[V']y"
"    elseif a:type == 'block'
"        silent exe "normal! `[\<C-V>`]y"
"    else
"        silent exe "normal! `[v`]y"
"    endif
"
"    let word = @@
"    let expr = '!ydcv -s "' . word . '"'
"    exec expr
"
"    let &selection = sel_save
"    let @@ = reg_save
"endfunction
"
"nnoremap <Leader>d :call SearchWord()<CR>
"vnoremap <Leader>d :<C-U>call SearchWord_v(visualmode(), 1)<cr>
