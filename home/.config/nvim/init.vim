" No colapsar bloques.
set nofoldenable

" Mostrar los números de línea a la izquierda.
set number

" Cargar el mejor colorscheme.
colorscheme monokai

" Activa leer un .nvimrc, .exrc y .gvimrc del directorio actual
set exrc

" Insertar espacios en vez de tabs
set expandtab
" Insertar 2 espacios por cada tab
set softtabstop=2
" Cuántos espacios correr el texto con > y <
set shiftwidth=2

" Mapear <leader> a , en vez de \
let mapleader = ","

" Ocultar todos los matches de búsqueda y similares
nnoremap <leader><cr> :noh<cr>

" Borrar todos los espacios en blanco finales del archivo
nmap <silent> <leader><space> :call <SID>StripTrailingWhitespace()<CR>

" Función para borrar los espacios en blanco
function! <SID>StripTrailingWhitespace()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" Correr el archivo actual como test
nnoremap <leader>t :! rake test TEST=% <Enter>
nnoremap <leader>r :! bin/rails test % <Enter>

" Pasar el archivo actual por eslint 
nnoremap <leader>l :! eslint % <Enter>

" " format JSON
map j !python -m json.tool

" Ignorar capitalización cuando se busca un patrón
set ignorecase
" Sólo cuando el patrón es todo en minúsculas
set smartcase
" Matchear toda la selección, no sólo la primera
set gdefault
