" Find files using Telescope command-line sugar.
nnoremap <leader><leader> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fG <cmd>Telescope grep_string<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fm <cmd>Telescope man_pages<cr>
nnoremap <leader>fr <cmd>Telescope oldfiles<cr>
nnoremap <leader>ff <cmd>Telescope git_files<cr>
nnoremap <leader>ft <cmd>Telescope resume<cr>
nnoremap <leader>fe <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>op <cmd>NvimTreeToggle<cr>
nnoremap <leader>oP <cmd>:25Vexplore<cr> " TODO Write utlity for hiding this at the same key
nnoremap <leader>fv :lua require('my_telescope').current_directory()<cr>
nnoremap <leader>fV :Ex<cr>
nnoremap <silent> <leader>fp :Telescope project<cr>


nnoremap <F5> :UndotreeToggle<CR>

" TODO
set completeopt=menu,menuone,noselect

" TODO check how does the sourcing files works 
nnoremap <A-j> :m . +1<CR>==
nnoremap <A-k> :m . -2<CR>==
inoremap <A-j> <Esc>:m . +1<CR>==gi
inoremap <A-k> <Esc>:m . -2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


" Basic maping is probably enough.
" In most cases <C-W><C-W> is nicely. 
nnoremap  <leader>wh <C-W>h
nnoremap  <leader>wj <C-W>j
nnoremap  <leader>wk <C-W>k
nnoremap  <leader>wl <C-W>l


nnoremap <C-k> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz

nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <C-w>q :Telescope quickfix<CR>
nnoremap <leader>q :call ToggleQFList(0)<CR>
nnoremap <leader>Q :Telescope loclist<CR>

let g:nvim_tree_git_hl = 1 
let g:nvim_tree_respect_buf_cwd = 1

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





  nnoremap gD <cmd>lua vim.lsp.buf.declaration()<CR>
  nnoremap gd <cmd>lua vim.lsp.buf.definition()<CR>
  nnoremap K <cmd>lua vim.lsp.buf.hover()<CR>
  nnoremap gi <cmd>lua vim.lsp.buf.implementation()<CR>
  nnoremap <space>wa <cmd>lua vim.lsp.buf.add_workspace
  nnoremap <space>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
  nnoremap <space>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
  nnoremap <space>D <cmd>lua vim.lsp.buf.type_definition()<CR>
  nnoremap <space>rn <cmd>lua vim.lsp.buf.rename()<CR>
  nnoremap <space>ca <cmd>lua vim.lsp.buf.code_action()
  nnoremap gr <cmd>lua vim.lsp.buf.references()<CR>
  nnoremap <space>e <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
  nnoremap [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
  nnoremap ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
  nnoremap <space>cq <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
  " nnoremap <space>fr <cmd>lua vim.lsp.buf.formatting()<CR>
