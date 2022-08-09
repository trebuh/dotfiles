""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NVIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set blinking cursor
set guicursor=n:blinkon1

" Show matching brackets when text indicator is over them
set showmatch

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Ignore case when searching
set ignorecase

" Show line numbers
set number

" When searching try to be smart about cases (case insensitive except when
" using capital letters)
set smartcase

" No annoying sound on errors
set noerrorbells
set novisualbell
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Linebreak on 120 characters
set lbr
set tw=120

" Smart indent
set si
" Wrap lines
set wrap

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set colorscheme
colorscheme kolor

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins with https://github.com/junegunn/vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plug-ins')

    " Airline Status bar
    Plug 'https://github.com/vim-airline/vim-airline'

    " Airline themes
    Plug 'https://github.com/vim-airline/vim-airline-themes'

    " Asynchronous linter
    Plug 'https://github.com/w0rp/ale'

    " Undo tree
    Plug 'https://github.com/sjl/gundo.vim'

    " Open file at a given line file:1234
    Plug  'https://github.com/bogado/file-line'

    " Tree file explorer
    Plug 'https://github.com/scrooloose/nerdtree'

    " Underlines the word under the cursor
    Plug 'https://github.com/itchyny/vim-cursorword'

    " Fuzzy finder
    Plug 'https://github.com/ctrlpvim/ctrlp.vim'

    " Shows a git diff in the gutter
    Plug 'https://github.com/airblade/vim-gitgutter'

    " Surrounding replacer
    Plug 'https://github.com/tpope/vim-surround'

" Languages support plugins

    " TOML syntax support
    Plug 'https://github.com/cespare/vim-toml'

    " Terraform syntax support
    Plug 'https://github.com/hashivim/vim-terraform'

    " Meson syntax support
    Plug 'https://github.com/matze/vim-meson'

    " systemd syntax support
     Plug 'https://github.com/Matt-Deacalion/vim-systemd-syntax'
     "
    " Kotlin syntax support
     Plug 'https://github.com/udalov/kotlin-vim'

    " Kotlin syntax support
    Plug 'editorconfig/editorconfig-vim'

    " Jinja2 syntax support
    Plug 'lepture/vim-jinja'



" Initialize plugin system
call plug#end()

" Airline config for powerline fonts
let g:airline_powerline_fonts = 1
