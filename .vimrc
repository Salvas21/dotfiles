" Inspired from Matdan's dot files GitHub repo : https://github.com/matdan9/dotFiles.git
" line numbers
set relativenumber
set nu rnu

" tabs/spaces size
set ts=4 sw=4
set autoindent
set spell

syntax on
set t_Co=256
set fileencoding=utf-8
set encoding=utf-8
set hlsearch
set incsearch
set smartindent

"colo desert
" Good colors : desert, industry, murphy

" https://github.com/morhetz/gruvbox
colo gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE

"let g:gruvbox_contrast_dark='soft'
let g:gruvbox_contrast_dark='hard'
autocmd vimenter * ++nested colorscheme gruvbox
