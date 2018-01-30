set nocompatible
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/ycm.py'
call plug#begin('~/.vim/plugged')
    Plug 'altercation/vim-colors-solarized'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-syntastic/syntastic'
    Plug 'easymotion/vim-easymotion'
    Plug 'Valloric/YouCompleteMe'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/vim-easy-align'
    Plug 'jiangmiao/auto-pairs'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'sheerun/vim-polyglot'
    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'Chiel92/vim-autoformat'
    Plug 'terryma/vim-multiple-cursors'
call plug#end()

syntax enable
syntax on
set relativenumber
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set synmaxcol=120

set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent
"for syntastic copied from syntastic github
let g:syntastic_cpp_compiler_options = "-std=c++11"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ycm_confirm_extra_conf = 1

set incsearch "Searches as characters are entered
set hlsearch "Highlights matches

set background=dark
colorscheme solarized
let g:airline_theme='solarized'
"Move by visual line
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap $ g$

nnoremap <TAB> :NERDTreeToggle<RETURN>
"remaps for tabs
nnoremap tn :tabnew<space>
nnoremap tc :tabclose<cr>
nnoremap ty :tabn<cr>
nnoremap tr :tabp<cr> 
"Required for easyalign to work, copied
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"remap for vim-autoformat
noremap <F3> :Autoformat<CR>
noremap <F5> :!g++ -std=c++11 % -o %.out && ./%.out <cr>
"remaps for easier exiting of insert mode
inoremap jk <esc>
inoremap <esc> <nop>
"workaround fix for the fucking arrow keys
imap ^[OA <ESC>ki
imap ^[OB <ESC>ji
imap ^[OC <ESC>li
imap ^[OD <ESC>hi
map! ^[OA ^[ka
map! ^[OB ^[ja
map! ^[OC ^[la
map! ^[OD ^[ha
"Mapping for ultisnips
let g:UltiSnipsExpandTrigger="<esc>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
