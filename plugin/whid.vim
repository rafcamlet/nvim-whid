" Put description here!!!
" Last Change:  2020 Jan 31
" Maintainer:   Rafał Camlet <raf.camlet@gmail.com>
" License:      GNU General Public License v3.0

if exists('g:loaded_whid') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo
set cpo&vim

hi def link WhidHeader      Number
hi def link WhidSubHeader   Identifier
" hi WhidCursorLine ctermbg=238 cterm=none

command! Whid lua require'whid'.whid()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_whid = 1
