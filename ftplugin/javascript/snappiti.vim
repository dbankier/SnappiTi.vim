if !exists('g:snappitiExecuteMapping')
  let g:snappitiExecuteMapping = '<c-e>'
endif

if !exists('g:snappitiExecuteMappingNoStyle')
  let g:snappitiExecuteMappingNoStyle = '<c-r>'
endif



exec 'nmap <buffer> ' . g:snappitiExecuteMapping . '^v$hy:call <SID>SnappiTi()<cr>'
exec 'imap <buffer> ' . g:snappitiExecuteMapping . ' <Esc>^v$hy:call <SID>SnappiTi()<cr>'

exec 'nmap <buffer> ' . g:snappitiExecuteMappingNoStyle . '^v$hy:call <SID>SnappiTiNoStyle()<cr>'
exec 'imap <buffer> ' . g:snappitiExecuteMappingNoStyle . ' <Esc>^v$hy:call <SID>SnappiTiNoStyle()<cr>'


if exists('*s:SnappiTi')
    finish
endif

function! s:SnappiTi()
    exec '.!' . 'snappiti compile' . ' ' . shellescape(@@, 1)
endfunction

function! s:SnappiTiNoStyle()
    exec '.!' . 'snappiti compile' . ' ' . shellescape(@@, 1) . ' -s'
endfunction



