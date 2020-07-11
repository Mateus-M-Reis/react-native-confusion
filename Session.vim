let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Códigos/cursos/Coursera\ -\ Multiplatform\ Mobile\ App\ Development\ with\ React\ Native/confusion
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +7 App.js
badd +3 components/AboutComponent.js
badd +16 redux/configureStore.js
badd +3 redux/dishes.js
badd +2 redux/leaders.js
badd +1 redux/promotions.js
badd +3 redux/comments.js
badd +5 components/DishDetailComponent.js
badd +1 components/HomeComponent.js
badd +1 components/MainComponent.js
badd +5 components/MenuComponent.js
badd +50 redux/ActionCreators.js
badd +1 redux/ActionTypes.js
badd +1 shared/baseUrl.js
badd +5 components/ContactComponent.js
argglobal
%argdel
$argadd App.js
edit components/MainComponent.js
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
17
normal! zo
18
normal! zo
26
normal! zo
33
normal! zo
34
normal! zo
36
normal! zo
37
normal! zo
36
normal! zc
34
normal! zc
33
normal! zc
52
normal! zo
54
normal! zo
54
normal! zc
52
normal! zc
135
normal! zo
135
normal! zc
203
normal! zo
204
normal! zo
211
normal! zo
212
normal! zo
213
normal! zo
let s:l = 26 - ((25 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 016|
wincmd w
argglobal
if bufexists("components/DishDetailComponent.js") | buffer components/DishDetailComponent.js | else | edit components/DishDetailComponent.js | endif
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
10
normal! zo
17
normal! zo
20
normal! zo
21
normal! zo
22
normal! zo
45
normal! zo
45
normal! zc
70
normal! zo
71
normal! zo
86
normal! zo
89
normal! zo
90
normal! zo
91
normal! zo
let s:l = 13 - ((12 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
wincmd w
argglobal
if bufexists("components/AboutComponent.js") | buffer components/AboutComponent.js | else | edit components/AboutComponent.js | endif
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
17
normal! zo
20
normal! zo
21
normal! zo
22
normal! zo
22
normal! zc
21
normal! zc
20
normal! zc
17
normal! zc
40
normal! zo
43
normal! zo
44
normal! zo
45
normal! zo
61
normal! zo
66
normal! zo
67
normal! zo
68
normal! zo
75
normal! zo
76
normal! zo
let s:l = 5 - ((4 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 75 + 113) / 227)
exe 'vert 2resize ' . ((&columns * 75 + 113) / 227)
exe 'vert 3resize ' . ((&columns * 75 + 113) / 227)
tabedit components/MenuComponent.js
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
8
normal! zo
9
normal! zo
15
normal! zo
21
normal! zo
22
normal! zo
23
normal! zo
24
normal! zo
37
normal! zo
37
normal! zo
38
normal! zo
let s:l = 5 - ((4 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
argglobal
if bufexists("components/ContactComponent.js") | buffer components/ContactComponent.js | else | edit components/ContactComponent.js | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 16 - ((15 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
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
setlocal fen
8
normal! zo
9
normal! zo
17
normal! zo
20
normal! zo
21
normal! zo
22
normal! zo
39
normal! zo
44
normal! zo
45
normal! zo
46
normal! zo
47
normal! zo
50
normal! zo
53
normal! zo
let s:l = 50 - ((41 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
50
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 75 + 113) / 227)
exe 'vert 2resize ' . ((&columns * 75 + 113) / 227)
exe 'vert 3resize ' . ((&columns * 75 + 113) / 227)
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
wincmd _ | wincmd |
split
2wincmd k
wincmd w
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
exe '2resize ' . ((&lines * 18 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 81 + 113) / 227)
exe '3resize ' . ((&lines * 18 + 29) / 58)
exe 'vert 3resize ' . ((&columns * 81 + 113) / 227)
exe '4resize ' . ((&lines * 17 + 29) / 58)
exe 'vert 4resize ' . ((&columns * 81 + 113) / 227)
exe 'vert 5resize ' . ((&columns * 113 + 113) / 227)
argglobal
enew
file NERD_tree_9
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
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 045|
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
let s:l = 2 - ((1 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
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
let s:l = 11 - ((6 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
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
setlocal fen
5
normal! zo
6
normal! zo
7
normal! zo
11
normal! zo
16
normal! zo
17
normal! zo
36
normal! zo
39
normal! zo
40
normal! zo
41
normal! zo
44
normal! zo
49
normal! zo
50
normal! zo
63
normal! zo
73
normal! zo
76
normal! zo
77
normal! zo
78
normal! zo
77
normal! zc
86
normal! zo
87
normal! zo
76
normal! zc
73
normal! zc
96
normal! zo
110
normal! zo
113
normal! zo
114
normal! zo
115
normal! zo
118
normal! zo
123
normal! zo
124
normal! zo
113
normal! zc
110
normal! zc
142
normal! zo
let s:l = 52 - ((48 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
52
normal! 011|
wincmd w
5wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 113) / 227)
exe '2resize ' . ((&lines * 18 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 81 + 113) / 227)
exe '3resize ' . ((&lines * 18 + 29) / 58)
exe 'vert 3resize ' . ((&columns * 81 + 113) / 227)
exe '4resize ' . ((&lines * 17 + 29) / 58)
exe 'vert 4resize ' . ((&columns * 81 + 113) / 227)
exe 'vert 5resize ' . ((&columns * 113 + 113) / 227)
tabedit redux/leaders.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 1resize ' . ((&columns * 113 + 113) / 227)
exe '2resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 113 + 113) / 227)
exe '3resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 3resize ' . ((&columns * 113 + 113) / 227)
exe '4resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 4resize ' . ((&columns * 113 + 113) / 227)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 20 - ((19 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 0
wincmd w
argglobal
if bufexists("redux/dishes.js") | buffer redux/dishes.js | else | edit redux/dishes.js | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 18 - ((17 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 04|
wincmd w
argglobal
if bufexists("redux/promotions.js") | buffer redux/promotions.js | else | edit redux/promotions.js | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 16 - ((15 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 014|
wincmd w
argglobal
if bufexists("redux/comments.js") | buffer redux/comments.js | else | edit redux/comments.js | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 6 - ((5 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 04|
wincmd w
exe '1resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 1resize ' . ((&columns * 113 + 113) / 227)
exe '2resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 113 + 113) / 227)
exe '3resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 3resize ' . ((&columns * 113 + 113) / 227)
exe '4resize ' . ((&lines * 27 + 29) / 58)
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
