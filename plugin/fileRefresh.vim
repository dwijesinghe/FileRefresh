function! FileRefresh()

:set switchbuf=useopen

" We start the python code like the next line.

python << EOF
import vim
from threading import Thread
import time
import os

refreshFlag = True;

def fileRefresh(n):

	messageBuf = vim.current.buffer
	lastModTime = os.path.getmtime(messageBuf.name)

	while refreshFlag:
		if lastModTime != os.path.getmtime(messageBuf.name):
			vim.command(":sil sbuffer " + messageBuf.name)
			vim.command(":sil e!")
			vim.command(":sil normal G")
			lastModTime = os.path.getmtime(messageBuf.name)
		time.sleep(n)

t = Thread(target=fileRefresh, args=(2.0,))
t.start()

EOF
endfunction

