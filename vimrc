colorscheme gotham256
" ativar sintaxe colorida
syntax on

" ativar indentação automática
set autoindent

" ativa indentação inteligente, o Vim tentará adivinhar
" qual é a melhor indentação para o código quando você
" efetuar quebra de linha. Funciona bem para linguagem C
set smartindent

" por padrão o vim armazena os últimos 50 comandos que você
" digitou em seu histórico. Eu sou exagerado, prefiro armazenar
" os últimos 5000
set history=5000

" ativar numeração de linha
set number

" destaca a linha em que o cursor está posicionado
" ótimo para quem não enxerga muito bem
set cursorline

" ativa o clique do mouse para navegação pelos documentos
set mouse=a

" ativa o compartilhamento de área de transferência entre o Vim
" e a interface gráfica
set clipboard=unnamedplus

" converte o tab em espaços em branco
" ao teclar tab o Vim irá substituir por 2 espaços
set tabstop=4 softtabstop=4 expandtab shiftwidth=4

" ao teclar a barra de espaço no modo normal, o Vim
" irá colapsar ou expandir o bloco de código do cursor
" foldlevel é a partir de que nível de indentação o
" código iniciará colapsado
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

"linhas de identação
let g:indentLine_enabled = 1
map <c-k>i :IndentLinesToggle<cr>
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline_theme='archery'
let g:airline#extensions#tabline#formatter = 'default'
" navegação entre os buffers
nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <c-x> :bp\|bd #<cr>
source ~/.vim/coc.nvimrc

set guifont="SpaceMono Nerd Font Mono:h12"

"declaração da função
"function! Executar(arq)
    "o vim possui uma variável built-in chamada &filetype
    "seu conteúdo corresponde ao tipo de arquivo auto-detectado
    "executaremos os arquivos usando a chamada :exec seguida do
    "comando e o nome do arquivo que você está editando
    "
    "o parâmetro arq é passado à função via shellescape, que é
    "traduzido para o nome do arquivo que você está editando
    "
    "antes de começar a estrutura if-else, estou invocando o
    "comando :w para salvar o arquivo que você está editando
    "dessa forma o Vim terá acesso à versão atual do seu código,
    "mesmo que tenhas esquecido de salvá-lo

    "salvar edição atual
 "   #    :w

  "  if &filetype == 'html'
   "     :exec '!google-chrome' a:arq
    "elseif &filetype == 'python'
    "    :exec '!python3' a:arq
   " elseif &filetype == 'c'
   "     :exec '!gcc -o /tmp/a.out' a:arq ';/tmp/a.out'
   " endif
"endfunction

"mapear a tecla F5 para chamar a função Executar,
"passando como parâmetro o nome do arquivo em edição
"nnoremap <F5> :call Executar(shellescape(@%, 1))<CR>
"analise de codigo
"
map <F5> w<CR>:!clear;python3 %<CR>

let g:ale_linters = {'python': ['flake8', 'pylint'], 'javascript': ['eslint']}
let g:ale_completion_enabled = 0
