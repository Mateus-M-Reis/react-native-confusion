let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Códigos/cursos/Coursera\ -\ Multiplatform\ Mobile\ App\ Development\ with\ React\ Native/confusion
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +2 App.js
badd +5993 yarn-error.log
badd +0 yarn.lock
badd +2 components/MainComponent.js
badd +3 components/HomeComponent.js
badd +9 components/MenuComponent.js
badd +4 redux/ActionTypes.js
badd +152 redux/ActionCreators.js
badd +22 redux/configureStore.js
badd +1 shared/baseUrl.js
badd +1 redux/favorites.js
badd +86 components/DishDetailComponent.js
badd +0 redux/comments.js
argglobal
%argdel
$argadd App.js
edit App.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 113) / 227)
exe 'vert 2resize ' . ((&columns * 81 + 113) / 227)
exe 'vert 3resize ' . ((&columns * 113 + 113) / 227)
argglobal
enew
file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 14 - ((13 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
wincmd w
argglobal
if bufexists("yarn-error.log") | buffer yarn-error.log | else | edit yarn-error.log | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 5993 - ((48 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5993
normal! 07|
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 113) / 227)
exe 'vert 2resize ' . ((&columns * 81 + 113) / 227)
exe 'vert 3resize ' . ((&columns * 113 + 113) / 227)
tabedit components/MainComponent.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 75 + 113) / 227)
exe 'vert 2resize ' . ((&columns * 75 + 113) / 227)
exe 'vert 3resize ' . ((&columns * 75 + 113) / 227)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
32
normal! zo
33
normal! zo
35
normal! zo
35
normal! zc
33
normal! zc
51
normal! zo
53
normal! zo
53
normal! zc
51
normal! zc
134
normal! zo
150
normal! zo
152
normal! zo
155
normal! zo
155
normal! zc
152
normal! zc
165
normal! zo
167
normal! zo
170
normal! zo
171
normal! zo
180
normal! zo
182
normal! zo
185
normal! zo
186
normal! zo
185
normal! zc
182
normal! zc
180
normal! zc
202
normal! zo
203
normal! zo
210
normal! zo
211
normal! zo
212
normal! zo
211
normal! zc
210
normal! zc
202
normal! zc
let s:l = 30 - ((29 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 0
wincmd w
argglobal
if bufexists("components/MenuComponent.js") | buffer components/MenuComponent.js | else | edit components/MenuComponent.js | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
9
normal! zo
16
normal! zo
22
normal! zo
23
normal! zo
24
normal! zo
25
normal! zo
50
normal! zo
51
normal! zo
51
normal! zo
52
normal! zo
let s:l = 55 - ((53 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
55
normal! 0
wincmd w
argglobal
if bufexists("components/HomeComponent.js") | buffer components/HomeComponent.js | else | edit components/HomeComponent.js | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 3 - ((2 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 75 + 113) / 227)
exe 'vert 2resize ' . ((&columns * 75 + 113) / 227)
exe 'vert 3resize ' . ((&columns * 75 + 113) / 227)
tabedit components/DishDetailComponent.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
10
normal! zo
11
normal! zo
18
normal! zo
23
normal! zo
26
normal! zo
27
normal! zo
28
normal! zo
35
normal! zo
51
normal! zo
54
normal! zo
55
normal! zo
56
normal! zo
64
normal! zo
65
normal! zo
66
normal! zo
76
normal! zo
77
normal! zo
85
normal! zo
88
normal! zo
89
normal! zo
90
normal! zo
let s:l = 96 - ((49 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
96
normal! 0
tabedit shared/baseUrl.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 113) / 227)
exe '2resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 81 + 113) / 227)
exe '3resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 3resize ' . ((&columns * 81 + 113) / 227)
exe 'vert 4resize ' . ((&columns * 113 + 113) / 227)
argglobal
enew
file NERD_tree_3
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("redux/ActionTypes.js") | buffer redux/ActionTypes.js | else | edit redux/ActionTypes.js | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 10 - ((7 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 041|
wincmd w
argglobal
if bufexists("redux/ActionCreators.js") | buffer redux/ActionCreators.js | else | edit redux/ActionCreators.js | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 149 - ((23 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
149
normal! 012|
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 113) / 227)
exe '2resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 81 + 113) / 227)
exe '3resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 3resize ' . ((&columns * 81 + 113) / 227)
exe 'vert 4resize ' . ((&columns * 113 + 113) / 227)
tabedit redux/comments.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 113) / 227)
exe '2resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 81 + 113) / 227)
exe '3resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 3resize ' . ((&columns * 81 + 113) / 227)
exe 'vert 4resize ' . ((&columns * 113 + 113) / 227)
argglobal
enew
file NERD_tree_4
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("redux/favorites.js") | buffer redux/favorites.js | else | edit redux/favorites.js | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 5 - ((4 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
argglobal
if bufexists("redux/configureStore.js") | buffer redux/configureStore.js | else | edit redux/configureStore.js | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 22 - ((21 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 113) / 227)
exe '2resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 81 + 113) / 227)
exe '3resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 3resize ' . ((&columns * 81 + 113) / 227)
exe 'vert 4resize ' . ((&columns * 113 + 113) / 227)
tabnext 3
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
