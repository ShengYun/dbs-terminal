if !has('python')
	finish
endif

" nnoremap <Leader>2 :call DBSOpenTerminal(['iTerm.sh'])<CR>
" nnoremap <Leader>2 :call DBSOpenTerminal(['cmd'])<CR>
" nnoremap <Leader>3 :call DBSOpenTerminal(['sh', '--login', '-i'])<CR>

function! DBSOpenTerminal(terminal)
python << endpython
import vim
import subprocess

terminal = vim.eval("a:terminal")
subprocess.Popen(terminal)
endpython
endfunction
