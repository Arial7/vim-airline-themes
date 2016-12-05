let g:airline#themes#seoul256#palette = {}

let g:airline#themes#seoul256#palette.accents = {
      \ 'red': [ '#ffafaf' , '' , 81 , '' , '' ],
      \ }


" Normal mode
let s:N1 = [ '#252525' , '#87af87' , 232 , 3  ] " mode
let s:N2 = [ '#d0d0d0' , '#626262' , 253 , 8  ] " info
let s:N3 = [ '#d0d0d0' , '#4e4e4e' , 253 , 0  ] " statusline

let g:airline#themes#seoul256#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#seoul256#palette.normal_modified = {
      \ 'airline_c': [ '#080808' , '#e6db74' , 232 , 11 , '' ] ,
      \ }


" Insert mode
let s:I1 = [ '#080808' , '#66d9ef' , 232 , 12 ]
let s:I2 = [ '#f8f8f0' , '#232526' , 253 , 8  ]
let s:I3 = [ '#f8f8f0' , '#465457' , 253 , 0  ]

let g:airline#themes#seoul256#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#seoul256#palette.insert_modified = {
      \ 'airline_c': [ '#080808' , '#66d9ef' , 232 , 4 , '' ] ,
      \ }


" Replace mode
let g:airline#themes#seoul256#palette.replace = copy(g:airline#themes#seoul256#palette.insert)
let g:airline#themes#seoul256#palette.replace.airline_a = [ s:I1[0]   , '#ef5939' , s:I1[2] , 166     , ''     ]
let g:airline#themes#seoul256#palette.replace_modified = {
      \ 'airline_c': [ '#080808' , '#ef5939' , 232 , 166 , '' ] ,
      \ }


" Visual mode
let s:V1 = [ '#080808' , '#fd971f' , 232 , 2 ]
let s:V2 = [ '#f8f8f0' , '#232526' , 253 , 8  ]
let s:V3 = [ '#f8f8f0' , '#465457' , 253 , 0  ]

let g:airline#themes#seoul256#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#seoul256#palette.visual_modified = {
      \ 'airline_c': [ '#080808' , '#fd971f' , 232 , 10 , '' ] ,
      \ }


" Inactive
let s:IA = [ '#1b1d1e' , '#465457' , 233 , 0 , '' ]
let g:airline#themes#seoul256#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#seoul256#palette.inactive_modified = {
      \ 'airline_c': [ '#f8f8f0' , ''        , 0 , 15  , '' ] ,
      \ }


" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#seoul256#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f8f8f0' , '#465457' , 253 , 67  , ''     ] ,
      \ [ '#f8f8f0' , '#232526' , 253 , 16  , ''     ] ,
      \ [ '#080808' , '#e6db74' , 232 , 144 , 'bold' ] )

