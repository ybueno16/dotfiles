call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Wakatime Plugin
Plug 'wakatime/vim-wakatime'

Plug 'itchyny/lightline.vim'
set laststatus=2

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'ghifarit53/tokyonight-vim'

call plug#end()

" HotKey for FZF
nnoremap <C-f> :FZF<CR>

" Theme TokyoNigth
set termguicolors
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_transparent_background = 1
let g:tokyonight_cursor = 'auto'
let g:lightline = {'colorscheme' : 'tokyonight'}
colorscheme tokyonight

" Syntax Ligature
scriptencoding utf-8

if exists('g:no_vim_fancy_text') || !has('conceal') || &enc != 'utf-8'
  finish
endif

syntax match pyFancyOperator "<=" conceal cchar=≤
syntax match pyFancyOperator ">=" conceal cchar=≥
syntax match pyFancyOperator "=\@<!===\@!" conceal cchar=≡
syntax match pyFancyOperator "!=" conceal cchar=≢
syntax match pyFancyOperator "\<\%(\%(math\|np\|numpy\)\.\)\?sqrt\>" conceal cchar=√
syntax match pyFancyKeyword "\<\%(\%(math\|np\|numpy\)\.\)\?pi\>" conceal cchar=π
syntax match pyFancyOperator "\<\%(\%(math\|np\|numpy\)\.\)\?ceil\>" conceal cchar=⌈
syntax match pyFancyOperator "\<\%(\%(math\|np\|numpy\)\.\)\?floor\>" conceal cchar=⌊
syntax match pyFancyOperator " \* " conceal cchar=∙
syntax match pyFancyOperator " / " conceal cchar=÷
syntax match pyFancyOperator "\( \|\)\*\*\( \|\)2\>" conceal cchar=²
syntax match pyFancyOperator "\( \|\)\*\*\( \|\)3\>" conceal cchar=³
syntax match pyFancyOperator "\( \|\)\*\*\( \|\)n\>" conceal cchar=ⁿ

syntax keyword pyFancyStatement int conceal cchar=ℤ
syntax keyword pyFancyStatement float conceal cchar=ℝ
syntax keyword pyFancyStatement complex conceal cchar=ℂ
syntax keyword pyFancyBuiltin len conceal cchar=#
syntax keyword pyFancyStatement lambda conceal cchar=λ
syntax keyword pyFancyStatement None conceal cchar=∅
syntax keyword pyFancyOperator in conceal cchar=∈
syntax keyword pyFancyOperator or conceal cchar=∨
syntax keyword pyFancyOperator and conceal cchar=∧
syntax keyword pyFancySpecial True  conceal cchar=𝐓
syntax keyword pyFancySpecial False conceal cchar=𝐅
syntax keyword pyFancyOperator sum conceal cchar=∑
syntax keyword pyFancyBuiltin all conceal cchar=∀
syntax keyword pyFancyBuiltin any conceal cchar=∃
syntax keyword pyFancyBuiltin not conceal cchar=✗

hi link pyFancyStatement Statement
hi link pyFancyKeyword Keyword
hi link pyFancyBuiltin Builtin
hi link pyFancySpecial Keyword
hi link pyFancyOperator Operator

hi! link Conceal Operator

setlocal conceallevel=1
