" key mappings for Git Fugitive plugin
"
" some mappings 'g' mappings are used by Vim and should not be remapped:
"
"  gq<text obj>      format text
"  gg                go to top
"  g]                ctag jump

noremap <C-g>  :call ToggleGStatus()<cr>
noremap gww    :Gwrite<cr>
noremap gbl    :Gblame<cr>
noremap gcc    :Gcommit<cr>
noremap gd     :Gdiff<cr>
noremap gmv    :Gmove<space>
noremap grm    :Gremove<cr>
noremap grr    :Gread<cr>

" diff options (use dp and do builtins)
set diffopt=filler,vertical

" helper to detect a fugitive diff buffer
function! FugitiveDiffInFocus()
   return matchstr(expand("%"), 'fugitive:///') == 'fugitive:///'
endfunction

" helper to detect a fugitive diff buffer
function! FugitiveStatusInFocus()
   return matchstr(expand("%"), '.git/index') == '.git/index'
endfunction

" toggle the GStatus window (https://gist.github.com/actionshrimp/6493611)
function! ToggleGStatus()
   if buflisted(bufname('.git/index'))
      bd .git/index
   else
      Gstatus
   endif
endfunction