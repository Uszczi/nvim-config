nnoremap <silent><leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent><leader>tc :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>

nnoremap <silent><leader>dq :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent><leader>dw :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent><leader>de :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <silent><leader>dr :lua require("harpoon.ui").nav_file(4)<CR>
" nnoremap <silent><C-h> :lua require("harpoon.ui").nav_file(1)<CR>
" nnoremap <silent><C-t> :lua require("harpoon.ui").nav_file(2)<CR>
" nnoremap <silent><C-n> :lua require("harpoon.ui").nav_file(3)<CR>
" nnoremap <silent><C-s> :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <silent><leader>tu :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <silent><leader>te :lua require("harpoon.term").gotoTerminal(2)<CR>
nnoremap <silent><leader>cu :lua require("harpoon.term").sendCommand(1, 1)<CR>
nnoremap <silent><leader>ce :lua require("harpoon.term").sendCommand(1, 2)<CR>


" augroup FugitiveMappings
"   autocmd!
"   autocmd FileType fugitive nmap <buffer> <Tab> =
" augroup
