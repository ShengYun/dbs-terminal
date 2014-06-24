if !has('python')
	finish
endif

function! DBSOpenTerminal(terminal)
python << endpython
import vim
import subprocess

terminal = vim.eval("a:terminal")
print terminal
subprocess.Popen(terminal)
endpython
endfunction
