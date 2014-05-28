function! KillRefresh()

:set switchbuf=useopen

" We start the python code like the next line.

python << EOF
import vim
from threading import Thread
import time
import os

global refreshFlag
refreshFlag = False

EOF
endfunction

