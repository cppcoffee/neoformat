command! -nargs=? -bar -complete=customlist,neoformat#CompleteFormatters Neoformat
            \ call neoformat#Start(<q-args>)

autocmd! BufWipeout,BufDelete,BufLeave,BufWinLeave,QuitPre <buffer>
            \ call neoformat#run#KillAll()
