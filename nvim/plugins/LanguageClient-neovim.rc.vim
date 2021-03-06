set hidden

let g:LanguageClient_serverCommands = {}

" C / CPP 
if executable('clangd')
    let g:LanguageClient_serverCommands = {
        \ 'cpp': ['clangd']
        \ }
endif

" Golang
if executable('gopls')
    let g:LanguageClient_serverCommands = {
        \ 'go': ['gopls']
        \ }
endif

" Python
if executable('pyls')
    let g:LanguageClient_serverCommands = {
        \ 'python': ['pyls']
        \ }
endif


augroup LanguageClient_config
    autocmd!
    autocmd User LanguageClientStarted setlocal signcolumn=yes
    autocmd User LanguageClientStopped setlocal signcolumn=auto
augroup END

let g:LanguageClient_autoStart = 1
nnoremap <Leader>lh :call LanguageClient_textDocument_hover()<CR>
nnoremap <Leader>ld :call LanguageClient_textDocument_definition()<CR>
nnoremap <Leader>lr :call LanguageClient_textDocument_rename()<CR>
nnoremap <Leader>lf :call LanguageClient_textDocument_formatting()<CR>
