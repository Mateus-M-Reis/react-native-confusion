let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Códigos/cursos/Coursera\ -\ Multiplatform\ Mobile\ App\ Development\ with\ React\ Native/confusion
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 App.js
badd +5993 yarn-error.log
badd +1 yarn.lock
badd +14 components/MainComponent.js
badd +3 components/HomeComponent.js
badd +9 components/MenuComponent.js
badd +4 redux/ActionTypes.js
badd +152 redux/ActionCreators.js
badd +22 redux/configureStore.js
badd +1 shared/baseUrl.js
badd +1 redux/favorites.js
badd +69 components/DishDetailComponent.js
badd +1 redux/comments.js
badd +0 NERD_tree_3
badd +0 NERD_tree_4
badd +3 components/ReservationComponent.js
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
33
normal! zo
34
normal! zo
36
normal! zo
36
normal! zc
34
normal! zc
52
normal! zo
54
normal! zo
54
normal! zc
52
normal! zc
100
normal! zo
101
normal! zo
103
normal! zo
104
normal! zo
103
normal! zc
119
normal! zo
120
normal! zo
122
normal! zo
122
normal! zc
134
normal! zo
135
normal! zo
136
normal! zo
136
normal! zc
135
normal! zc
134
normal! zc
150
normal! zo
166
normal! zo
168
normal! zo
171
normal! zo
171
normal! zc
168
normal! zc
181
normal! zo
183
normal! zo
186
normal! zo
186
normal! zc
183
normal! zc
181
normal! zc
196
normal! zo
198
normal! zo
201
normal! zo
202
normal! zo
211
normal! zo
213
normal! zo
216
normal! zo
217
normal! zo
216
normal! zc
213
normal! zc
211
normal! zc
233
normal! zo
234
normal! zo
241
normal! zo
242
normal! zo
242
normal! zc
241
normal! zc
233
normal! zc
let s:l = 114 - ((16 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
114
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
tabedit components/ReservationComponent.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 113 + 113) / 227)
exe 'vert 2resize ' . ((&columns * 113 + 113) / 227)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
7
normal! zo
8
normal! zo
10
normal! zo
21
normal! zo
25
normal! zo
30
normal! zo
30
normal! zc
38
normal! zo
39
normal! zo
40
normal! zo
41
normal! zo
42
normal! zo
43
normal! zo
47
normal! zo
43
normal! zc
42
normal! zc
41
normal! zc
56
normal! zo
57
normal! zo
57
normal! zc
56
normal! zc
66
normal! zo
68
normal! zo
78
normal! zo
79
normal! zo
68
normal! zc
66
normal! zc
92
normal! zo
99
normal! zo
100
normal! zo
106
normal! zo
107
normal! zo
111
normal! zo
112
normal! zo
124
normal! zo
125
normal! zo
139
normal! zo
143
normal! zo
let s:l = 20 - ((19 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 0
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
10
normal! zo
10
normal! zc
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
32
normal! zo
35
normal! zo
44
normal! zo
51
normal! zo
51
normal! zo
58
normal! zo
59
normal! zo
63
normal! zo
64
normal! zo
59
normal! zc
58
normal! zc
51
normal! zc
35
normal! zc
75
normal! zo
80
normal! zo
83
normal! zo
84
normal! zo
84
normal! zc
83
normal! zc
93
normal! zo
94
normal! zo
95
normal! zo
80
normal! zc
105
normal! zo
106
normal! zo
110
normal! zo
114
normal! zo
123
normal! zo
126
normal! zo
127
normal! zo
128
normal! zo
let s:l = 109 - ((86 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
109
normal! 04|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 113 + 113) / 227)
exe 'vert 2resize ' . ((&columns * 113 + 113) / 227)
tabedit shared/baseUrl.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe '1resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 1resize ' . ((&columns * 113 + 113) / 227)
exe '2resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 113 + 113) / 227)
exe 'vert 3resize ' . ((&columns * 113 + 113) / 227)
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
normal! 02|
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
let s:l = 1 - ((0 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 1resize ' . ((&columns * 113 + 113) / 227)
exe '2resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 113 + 113) / 227)
exe 'vert 3resize ' . ((&columns * 113 + 113) / 227)
tabedit redux/comments.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe '1resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 1resize ' . ((&columns * 113 + 113) / 227)
exe '2resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 113 + 113) / 227)
exe 'vert 3resize ' . ((&columns * 113 + 113) / 227)
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
exe '1resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 1resize ' . ((&columns * 113 + 113) / 227)
exe '2resize ' . ((&lines * 27 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 113 + 113) / 227)
exe 'vert 3resize ' . ((&columns * 113 + 113) / 227)
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
