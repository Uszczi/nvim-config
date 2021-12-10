nnoremap <silent><leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent><leader>tc :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>

nnoremap <silent><leader>rq :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent><leader>rw :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent><leader>re :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <silent><leader>rr :lua require("harpoon.ui").nav_file(4)<CR>
" nnoremap <silent><C-h> :lua require("harpoon.ui").nav_file(1)<CR>
" nnoremap <silent><C-t> :lua require("harpoon.ui").nav_file(2)<CR>
" nnoremap <silent><C-n> :lua require("harpoon.ui").nav_file(3)<CR>
" nnoremap <silent><C-s> :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <silent><leader>tu :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <silent><leader>te :lua require("harpoon.term").gotoTerminal(2)<CR>
nnoremap <silent><leader>cu :lua require("harpoon.term").sendCommand(1, 1)<CR>
nnoremap <silent><leader>ce :lua require("harpoon.term").sendCommand(1, 2)<CR>


nnoremap <leader>dd :lua require('dapui').toggle()<CR>
nnoremap <leader>de :lua require('dap').toggle_breakpoint()<CR>
nnoremap <leader>df :lua require('dap').continue()<CR>

nnoremap <leader>du  :lua require'dap'.step_over()<CR>
nnoremap <leader>di  :lua require'dap'.step_into()<CR>
nnoremap <leader>do  :lua require'dap'.step_out()<CR>

nnoremap <leader>dw :lua requir 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <leader>dr :lua require'dap'.repl.open()<CR>
nnoremap <leader>dl :lua require'dap'.run_last()<CR>
nnoremap <leader>dg :lua require'dapui'.float_element('scopes')<CR>
nnoremap <leader>dG :lua require'dapui'.toggle('scopes')<CR>
nnoremap <leader>dw :lua require'dapui'.eval()<CR>
vnoremap <leader>dw :lua require'dapui'.eval()<CR>

nnoremap <leader>n nzz<CR>
nnoremap <leader>N Nzz<CR>


nnoremap <leader>d[ :lua require('save-b').store()<CR>
nnoremap <leader>d] :lua require('save-b').load()<CR>



nnoremap <leader>tl :tabnext<CR>
nnoremap <leader>tl :tabnext<CR>
nnoremap <leader>th :tabprevious<CR>
nnoremap <leader>tj :bprevious<CR>
nnoremap <leader>tk :bnext<CR>
" augroup FugitiveMappings
"   autocmd!
"   autocmd FileType fugitive nmap <buffer> <Tab> =
" augroup
