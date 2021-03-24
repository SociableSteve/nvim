call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'romainl/flattened'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

set splitbelow
set tabstop=2
set number relativenumber
set nu rnu

nnoremap <silent><nowait> <space>a :<C-u>CocDiagnostics<cr>
nnoremap <silent><nowait> <space>g :<C-u>CocFix<cr>
nnoremap <silent><nowait> <space>f :<C-u>NERDTreeToggle<cr>
nnoremap <silent><nowait> <space>t :<C-u>split term://bash<CR>
nnoremap <silent><nowait> <space>p :<C-u>CocCommand prettier.formatFile<cr>

highlight CocWarningFloat ctermfg=black
highlight CocErrorFloat ctermfg=white
highlight Pmenu ctermbg=red
