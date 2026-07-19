" Básicas
syntax on
set mouse=a		 	"integración con mouse			
set clipboard=unnamedplus 	"integración con portapapeles. requiere vim-gtk3	
set number			"número de fila
set signcolumn=yes          	"una columna extra con mensajes de errores
set encoding=utf-8  		"permite acentos, ñ y otros símbolos
set incsearch              	"resalta las búsquedas
"set nowrap                  	"texto en una línea cuando exede la pantalla
set ignorecase              	"ignora mayúsculas y minúsculas en búsquedas
set scrolloff=8             	"mantiene el cursor en el centro


" Tabulaciones
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
filetype indent on


" Comportamiento de las teclas 
nnoremap <c-s> :w<Enter>
nnoremap <c-q> :q!<Enter>
nnoremap <c-f> /


