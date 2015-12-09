set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'othree/html5.vim'

" Vim Repeat https://github.com/tpope/vim-repeat
Plugin 'tpope/vim-repeat'

" Vim Surround
Plugin 'tpope/vim-surround'

" Vim comma-object
Plugin 'austintaylor/vim-commaobject'

" Vim GitGutter
Plugin 'airblade/vim-gitgutter'

" Vim Ag https://github.com/rking/ag.vim.git
Plugin 'rking/ag.vim'

" Vim UltiSnips
Plugin 'SirVer/ultisnips'

" Vim-snippets
Plugin 'honza/vim-snippets'

" Vim TComment
Plugin 'tomtom/tcomment_vim'

" Vim EasyMotion
Plugin 'easymotion/vim-easymotion'

" Vim autopairs https://github.com/yukunlin/auto-pairs.git
Plugin 'yukunlin/auto-pairs'

" Vim GistVim https://github.com/mattn/gist-vim.git
Plugin 'mattn/gist-vim'

" Vim NerdTree https://github.com/scrooloose/nerdtree.git
Plugin 'scrooloose/nerdtree.git'

" Vim NerdTree-git-plugin https://github.com/Xuyuanp/nerdtree-git-plugin.git
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Vim CtrlP
Plugin 'kien/ctrlp.vim'

" Vim tabular https://github.com/godlygeek/tabular.git
Plugin 'godlygeek/tabular'

" Vim Syntastic
Plugin 'scrooloose/syntastic'

" Vim Argument ReWrap
Plugin 'weierophinney/argumentrewrap'

" PHP Getters and Setters
Plugin 'docteurklein/php-getter-setter.vim'

" vDebug
Plugin 'joonty/vdebug'

" Colorscheme Lucius
Plugin 'jonathanfilip/vim-lucius'

" Colorscheme Solarized
Plugin 'altercation/vim-colors-solarized'

" Vim Airline - Status Bar legal
Plugin 'bling/vim-airline'

" Vim Colorschemes
Plugin 'flazz/vim-colorschemes'

" Vim Gundo
Plugin 'sjl/gundo.vim'

" Vim Emmet
Plugin 'mattn/emmet-vim'

" Vim JSON
Plugin 'leshill/vim-json'

" Vim Tagbar
Plugin 'majutsushi/tagbar'

" Vim Twig highlighting
Plugin 'evidens/vim-twig'

" Db Extension
Plugin 'vim-scripts/dbext.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"


""""""""""""""""""""""""""""""
"            STARTUP         "
""""""""""""""""""""""""""""""
" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on
syntax on

" Tabstops are 4 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set nobackup
set noswapfile

""""""""""""""""""""""""""""""
"            BASICS          "
""""""""""""""""""""""""""""""
" change the mapleader from \ to ,
let mapleader=","
"Map escape key to jj -- much faster
imap jj <esc>
"Saves time; maps the spacebar to colon
nmap <space> :
set clipboard=unnamedplus
au BufNewFile,BufRead *.vimrc set ft=vim
nmap <silent> <leader>v :e $MYVIMRC<CR>
" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" EDIT VIMRC IN A NEW TAB
" nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>v :e $MYVIMRC<CR>


""""""""""""""""""""""""""""""""""""""""""""""
"            COLORS CONFS                    "
""""""""""""""""""""""""""""""""""""""""""""""
syntax enable


""""""""""""""""""""""""""""""""""""""""""""""
"            SPACES CONFS                    "
""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

""""""""""""""""""""""""""""""""""""""""""""""
"            UI CONFS                        "
""""""""""""""""""""""""""""""""""""""""""""""
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set numberwidth=5       " We are good up to 99999 lines
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set autochdir           " always switch to the current file directory
set backspace=indent,eol,start      " make backspace a more flexible
set fileformats=unix,dos,mac        " support all three, in this order
set hidden              " you can change buffers without saving
set mouse=a             " use mouse everywhere
set noerrorbells        " don't make noise
set laststatus=2        " always show the status line
set linespace=0         " don't insert any extra pixel lines
" set listchars=tab:>-,trail:-        " show tabs and trailing
set matchtime=5         " how many tenths of a second to blink
                        " matching brackets for
set hlsearch            " do not highlight searched for phrases
set nostartofline       " leave my cursor where it was
set novisualbell        " don't blink
set report=0            " tell us when anything is changed via :...
set ruler               " Always show current positions along the bottom
set scrolloff=10        " Keep 10 lines (top/bottom) for scope
set showcmd             " show de command being typed
set splitbelow


""""""""""""""""""""""""""""""""""""""""""""""
"            TEXT CONFS                      "
""""""""""""""""""""""""""""""""""""""""""""""
set formatoptions=rq    " Automatically insert comment leader on return,
                        " and let gq format comments
set ignorecase          " case insensitive by default
set infercase           " case inferred by default
set nowrap              " do not wrap line
set shiftround          " when at 3 spaces, and I hit > ... go to 4, not 5
set smartcase           " if there are caps, go case-sensitive
set shiftwidth=4        " auto-indent amount when using cindent,
                        " >>, << and stuff like that
set softtabstop=4       " when hitting tab or backspace, how many spaces
                        "should a tab be (see expandtab)
set tabstop=4           " real tabs should be 8, and they will show with
"set toggle wrap
:map <F4> :set nowrap! <CR>
set pastetoggle=<F11>
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8



""""""""""""""""""""""""""""""""""""""""""""""
"            WINDOW NAVIGATION               "
""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l


""""""""""""""""""""""""""""""""""""""""""""""
"            BACKUP FILES                    "
""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set noswapfile
set nowritebackup
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

""""""""""""""""""""""""""""""""""""""""""""""
"            SEARCHING CONFS                 "
""""""""""""""""""""""""""""""""""""""""""""""
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
"turn off search highlight
nnoremap <leader>l :nohlsearch<CR>


""""""""""""""""""""""""""""""""""""""""""""""
"            FOLDING CONFS                   "
""""""""""""""""""""""""""""""""""""""""""""""
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <leader> za
set foldmethod=indent   " fold based on indent level
set modelines=1
" vim:foldmethod=marker:foldlevel=0
" Section Name {{{
set number "This will be folded
" }}}

""""""""""""""""""""""""""""""""""""""""""""""
"            MOVING CONFS                    "
""""""""""""""""""""""""""""""""""""""""""""""
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap 0 ^
nnoremap E $
" highlight last inserted text
nnoremap gV `[v`]

""""""""""""""""""""""""""""""""""""""""""""""
"            GUNDO CONFS                     "
""""""""""""""""""""""""""""""""""""""""""""""
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""
"            AG CONFS                        "
""""""""""""""""""""""""""""""""""""""""""""""
" open ag.vim
nnoremap <leader>a :Ag

""""""""""""""""""""""""""""""""""""""""""""""
"            EMMET CONFS                     "
""""""""""""""""""""""""""""""""""""""""""""""
"Map code completion to , + tab
imap <leader><tab> <C-x><C-o>
"Change zen coding plugin expansion key to shift + e
let g:user_emmet_expandabbr_key = '<C-e>'
" let g:user_emmet_expandword_key = '<C-y>;'

""""""""""" CTRLP CONF """"""""
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("i")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

let g:ctrlp_open_func = { 'files': 'CustomOpenFunc' }
function! CustomOpenFunc(action, line)
    call call('ctrlp#acceptfile', [':t', a:line])
endfunction

""""""""""""""""""""""""""""""""""""""""""""""
"            FONT SETTINGS                   "
""""""""""""""""""""""""""""""""""""""""""""""
" GUI Settings {
 if has("gui_running")
    set background=light
    colorscheme solarized         " awesome colorscheme
    call togglebg#map("<F10>")
     " Basics {
         set columns=180 " perfect size for me
         " set guifont=Monaco:h10 " My favorite font
         " set guifont=Ubuntu\ Mono\ derivative\ Powerline:h14
         " set guifont=Sauce\ Code\ Powerline\ Regular\ 10

        if has("win32")
            " WINDOWS
            " set guifont="Ubuntu Mono derivative Powerline":h11
            set guifont="Ubuntu Mono derivative Powerline":h11
        endif
        if has("unix")
            if system('uname')=~'Darwin'
                " MAC
                set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
                " set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 9
                " set guifont=Inconsolata\ for\ Powerline\ 11
            else
                " LINUX
                " set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
                " set guifont=Anonymice\ Powerline\ 9
                " set guifont=Inconsolata-g\ for\ Powerline\ 9
                " set guifont=Monofur\ for\ Powerline\ 12
                " set guifont=Sauce\ Code\ Powerline\ Regular\ 9
                set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 9
                " set guifont=Inconsolata\ for\ Powerline\ 11
                " set guifont=Monaco\ for\ Powerline\ 9
                " set guifont=Consolas\ for\ Powerline\ Regular\ 12
            endif
        endif
        " set guioptions=ce 
        "              ||
        "              |+-- use simple dialogs rather than pop-ups
        "              +  use GUI tabs, not console style tabs
        set lines=55 " perfect size for me
        set mousehide " hide the mouse cursor when typing
     " }

     " Font Switching Binds {
         " map <F8> <ESC>:set guifont=Consolas:h8<CR>
         " map <F9> <ESC>:set guifont=Consolas:h10<CR>
         " map <F10> <ESC>:set guifont=Monaco\ 9<CR>
         " map <F11> <ESC>:set guifont=Consolas\ 10<CR>
         " map <F12> <ESC>:set guifont=Consolas:h20<CR>
     " }
 else 
    set background=dark
 endif
 " }
let g:solarized_termcolors=256

""""""""""""""""""""""""""""""""""""""""""""""
"            ULTISNIPS CONFS                 "
""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsSnippetDirectories=["UltiSnips", "ultisnips_my"]
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


""""""""""""""""""""""""""""""""""""""""""""""
"            AIRLINE CONFS                   "
""""""""""""""""""""""""""""""""""""""""""""""
function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode',' ', 'branch'])
	let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
	let g:airline_section_c = airline#section#create(['filetype'])
	let g:airline_section_x = airline#section#create(['%P'])
	let g:airline_section_y = airline#section#create(['%B'])
	let g:airline_section_z = airline#section#create_right(['%l','%c'])
endfunction
autocmd VimEnter * call AirlineInit()
set t_Co=256
let g:airline_powerline_fonts = 1
let g:cssColorVimDoNotMessMyUpdatetime = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" let g:Powerline_symbols="fancy"


""""""""""""""""""""""""""""""""""""""""""""""
"            NERDTREE CONFS                  "
""""""""""""""""""""""""""""""""""""""""""""""
" Show hidden files in NerdTree
" Shortcut for NERDTreeToggle
" tab navigation like firefox
" :nmap <C-S-tab> :tabprevious<CR>
" :nmap <C-tab> :tabnext<CR>
" :map <C-S-tab> :tabprevious<CR>
" :map <C-tab> :tabnext<CR>
" :imap <C-S-tab> <Esc>:tabprevious<CR>i
" :imap <C-tab> <Esc>:tabnext<CR>i
" :nmap <C-t> :tabnew :NERDTree<CR>
" :imap <C-t> <Esc>:tabnew :NERDTree<CR>

" autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree /home/vidal/html
autocmd VimEnter * wincmd p

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeChDirMode = 2

""""""""""""""""""""""""""""""""""""""""""""""
"            TABS CONFS                      "
""""""""""""""""""""""""""""""""""""""""""""""
" Open new tab
nmap <C-t> :enew<CR>
:nmap <C-t> :enew<CR>
imap <C-t> <Esc> :enew<CR>

" Next Buffer
nmap <C-tab> :bnext<CR>
:nmap <C-tab> :bnext<CR>
:imap <C-tab> <Esc> :bnext<CR>i


" Prev Buffer
nmap <C-S-tab> :bprevious<CR>
:nmap <C-S-tab> :bprevious<CR>
imap <C-S-tab> <Esc> :bprevious<CR>i

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd! #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Force close buffer
nmap <leader>bd :bd!<CR>

:set modified



""""""""""""""""""""""""""""""""""""""""""""""
"            EASYMOTION CONFS                "
""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings
 " Bi-directional find motion
 " Jump to anywhere you want with minimal keystrokes, with just one key binding.
 " `s{char}{label}`
 nmap <Leader>f <Plug>(easymotion-s)
 " or
 " `s{char}{char}{label}`
 " Need one more keystroke, but on average, it may be more comfortable.
 " nmap <Leader>s <Plug>(easymotion-s2)
 
 " Turn on case insensitive feature
 let g:EasyMotion_smartcase = 1
 
 " JK motions: Line motions
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)  

""""""""""""""""""""""""""""""""""""""""""""""
"            CSS SORT FUNCTION               "
""""""""""""""""""""""""""""""""""""""""""""""
" Alphabetically sort CSS properties in file with :SortCSS
:command! SortCSS :g#\({\n\)\@<=#.,/}/sort

""""""""""""""""""""""""""""""""""""""""""""""
"            TAGBAR CONFS                    "
""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""
"            SYNTASTIC CONFS                 "
""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""" COLORESQUE BUG 
" if !exists("b:color_pattern")
"     let b:color_pattern = {}
" endif

