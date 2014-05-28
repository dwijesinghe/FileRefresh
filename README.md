# FileRefresh

This plugin can be triggered to enable monitoring on a file open in a Vim buffer. The buffer should then automatically refresh whenever the file is changed without requiring user input.

#Installation

## Install using Pathogen 

(These instructions are based on iVantage's current system, which uses Windows and gVim. For Linux change /vimfiles/ to /.vim/)

FileRefresh is packaged to be easily downloadable/updateable via the Pathogen plugin.

1. Install [pathogen.vim] into `~/.vim/autoload/` (see [pathogen's
   readme][install-pathogen] for more information.)

[pathogen.vim]: http://www.vim.org/scripts/script.php?script_id=2332
[install-pathogen]: https://github.com/tpope/vim-pathogen#installation

2. Enable pathogen in your vimrc:

   ```vim
   call pathogen#infect()
   ```

3. Create the directory `~/vimfiles/bundle/`:

        mkdir ~/vimfiles/bundle

4. Clone the `viMessage` repo into `~/vimfiles/bundle/`:

        git clone https://github.com/iVantage/FileRefresh.git ~/vimfiles/bundle/FileRefresh/

To Update:
Run git pull from within ~/vimfiles/bundle/viMessage/

## Install using Zip file

The plugin can also be installed by downloading the zip file and copying the two vim files to your user directory. You can then enable the plugin on startup by adding the following two lines to your .vimrc file:
 
 ```vim
 :source ~/fileRefresh.vim
 :source ~/killRefresh.vim
 ```

#Usage

When open to the buffer you wish to monitor, simply use 
```vim
:call FileRefresh() 
```
to turn monitoring on and 
```vim
:call KillRefresh() 
```
to turn monitoring off. 

Based on general Vim performance/system limitations users are advised that monitoring multiple files with this plugin may cause Vim to become unstable.

## License 

(The MIT License)

Copyright (c) 2011

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
