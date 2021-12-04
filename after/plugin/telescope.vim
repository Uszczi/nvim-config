" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fm <cmd>Telescope man_pages<cr>
nnoremap <leader>fr <cmd>Telescope oldfiles<cr>
nnoremap <leader>ft <cmd>Telescope resume<cr>
nnoremap <leader>fe <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>fv :lua require('my_telescope').current_directory()<cr>
nnoremap <silent> <leader>fp :Telescope project<cr>


" TODO check how does the sourcing files works 
nnoremap <A-j> :m . +1<CR>==
nnoremap <A-k> :m . -2<CR>==
inoremap <A-j> <Esc>:m . +1<CR>==gi
inoremap <A-k> <Esc>:m . -2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap  <leader>wh <C-W>h
nnoremap  <leader>wj <C-W>j
nnoremap  <leader>wk <C-W>k
nnoremap  <leader>wl <C-W>l

nnoremap <C-k> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz

nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <leader>q :call ToggleQFList(0)<CR>

let g:the_primeagen_qf_l = 0
let g:the_primeagen_qf_g = 0

fun! ToggleQFList(global)
    if a:global
        if g:the_primeagen_qf_g == 1
            let g:the_primeagen_qf_g = 0
            cclose
        else
            let g:the_primeagen_qf_g = 1
            copen
        end
    else
        if g:the_primeagen_qf_l == 1
            let g:the_primeagen_qf_l = 0
            lclose
        else
            let g:the_primeagen_qf_l = 1
            lopen
        end
    endif
endfun
