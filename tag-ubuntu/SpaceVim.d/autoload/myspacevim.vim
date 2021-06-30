
func! myspacevim#before() abort
    " increase search highlights
    " set incsearch
    " set hlsearch

    " set smartindent
    " set tabstop=4                       " tab width
    " set softtabstop=4                   " backspace
    " set shiftwidth=4                    " indent width
    " set expandtab                       " expand tab to space
    " set %retab!                             " 全部tab替换成空格

    set clipboard+=unnamed
    set clipboard+=unnamedplus

    " set leader
    let mapleader=','
    let g:mapleader = ','

    set list
    set cursorline
    set cursorcolumn

    nnoremap <silent> <leader>g <S-*>

    " case settings
    set ignorecase                      " when input lowercase, ignore the case
    set smartcase                       " when input uppercase, dont ignore the case
    set wrapscan

    " set wrap

    " return normal-model
    inoremap jk <esc>

    " Make it obvious where 80 characters is
    " set textwidth=80
    " set colorcolumn=+1

    "Markdown{{{
    let g:tagbar_type_markdown = {
                \ 'ctagsbin'  : 'mdctags',
                \ 'ctagsargs' : '',
                \ 'kinds'     : [
                \     'a:h1:0:0',
                \     'b:h2:0:0',
                \     'c:h3:0:0',
                \     'd:h4:0:0',
                \     'e:h5:0:0',
                \     'f:h6:0:0',
                \ ],
                \ 'sro'        : '::',
                \ 'kind2scope' : {
                \     'a' : 'h1',
                \     'b' : 'h2',
                \     'c' : 'h3',
                \     'd' : 'h4',
                \     'e' : 'h5',
                \     'f' : 'h6',
                \ },
                \ 'scope2kind' : {
                \     'h1' : 'a',
                \     'h2' : 'b',
                \     'h3' : 'c',
                \     'h4' : 'd',
                \     'h5' : 'e',
                \     'h6' : 'f',
                \}
                \}

    autocmd FileType markdown nmap <buffer><silent> <leader>i :call mdip#MarkdownClipboardImage()<CR>
    " there are some defaults for image directory and image name, you can change them
    " let g:mdip_imgdir = 'img'
    " let g:mdip_imgname = 'image'

    " vim-markdown-toc
    let g:vmt_cycle_list_item_markers = 1
    "}}}

    " -------------
    call SpaceVim#custom#SPC('nnoremap', ['g', 'l'], 'FloatermNew lazygit', 'open lazygit in floaterm', 1)

    " ctrl + ] 查询 cppman
    " 如果想让该快捷键自动查询 man，将Cppman 替换为 Cppman!
    autocmd FileType c,cpp noremap <C-]> <Esc>:execute "cppman " . expand("<cword>")<CR>

    " floaterm
    " let g:floaterm_keymap_prev   = '<C-p>'
    " let g:floaterm_keymap_new    = '<C-n>'
    " let g:floaterm_keymap_toggle = '<C-h>'

    nnoremap ; :
    :command W w
    :command WQ wq
    :command Wq wq
    :command Q q
    :command Qa qa
    :command QA qa

    function AddCTitle()
        call append( 0, "/**")
        call append( 1, " * ")
        call append( 2, " * Release under GPLv-3.0.")
        call append( 3, " * ")
        call append( 4, " * @file    ".expand("%:t"))		            " %表示绝对路径，%:h表示目录，%:t表示文件名
        call append( 5, " * @brief   ")	                                " append表示追加
        call append( 6, " * @author  gnsyxiang <gnsyxiang@163.com>")
        call append( 7, " * @date    ".strftime("%d/%m %Y %H:%M"))
        call append( 8, " * @version v0.0.1")
        call append( 9, " * ")
        call append(10, " * @since    note")
        call append(11, " * @note     note")
        call append(12, " * ")
        call append(13, " *     change log:")
        call append(14, " *     NO.     Author              Date            Modified")
        call append(15, " *     00      zhenquan.qiu        ".strftime("%d/%m %Y")."      create the file")
        call append(16, " * ")
        call append(17, " *     last modified: ".strftime("%d/%m %Y %H:%M"))
        call append(18, " */")
        echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
    endf
    
    function AddHTitle()
        call append( 0, "/**")
        call append( 1, " *")
        call append( 2, " * Release under GPLv-3.0.")
        call append( 3, " * ")
        call append( 4, " * @file    ".expand("%:t"))		            " %表示绝对路径，%:h表示目录，%:t表示文件名
        call append( 5, " * @brief   ")	                                " append表示追加
        call append( 6, " * @author  gnsyxiang <gnsyxiang@163.com>")
        call append( 7, " * @date    ".strftime("%d/%m %Y %H:%M"))
        call append( 8, " * @version v0.0.1")
        call append( 9, " * ")
        call append(10, " * @since    note")
        call append(11, " * @note     note")
        call append(12, " * ")
        call append(13, " *     change log:")
        call append(14, " *     NO.     Author              Date            Modified")
        call append(15, " *     00      zhenquan.qiu        ".strftime("%d/%m %Y")."      create the file")
        call append(16, " * ")
        call append(17, " *     last modified: ".strftime("%d/%m %Y %H:%M"))
        call append(18, " */")
        call append(19, "#ifndef __")
        call append(20, "#define ")
        call append(21, "")
        call append(22, "#ifdef __cplusplus")
        call append(23, "extern \"C\" {")
        call append(24, "#endif")
        call append(25, "")
        call append(26, "#ifdef __cplusplus")
        call append(27, "}")
        call append(28, "#endif")
        call append(29, "")
        call append(30, "#endif")
        echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
    endf

    function AddTitle()
        call append( 0, "# ===============================================================")
        call append( 1, "# ")
        call append( 2, "# Release under GPLv-3.0.")
        call append( 3, "# ")
        call append( 4, "# @file    ".expand("%:t"))		            " %表示绝对路径，%:h表示目录，%:t表示文件名
        call append( 5, "# @brief   ")	                                " append表示追加
        call append( 6, "# @author  gnsyxiang <gnsyxiang@163.com>")
        call append( 7, "# @date    ".strftime("%d/%m %Y %H:%M"))
        call append( 8, "# @version v0.0.1")
        call append( 9, "# ")
        call append(10, "# @since    note")
        call append(11, "# @note     note")
        call append(12, "# ")
        call append(13, "#     change log:")
        call append(14, "#     NO.     Author              Date            Modified")
        call append(15, "#     00      zhenquan.qiu        ".strftime("%d/%m %Y")."      create the file")
        call append(16, "# ")
        call append(17, "#     last modified: ".strftime("%d/%m %Y %H:%M"))
        call append(18, "# ===============================================================")
        echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
    endf
    
    "更新最近修改时间和文件名
    function UpdateTitle()
        normal m'
        execute '/# *Last modified:/s@:.*$@\=strftime(": %d/%m %Y %H:%M")@'
        normal ''
        normal mk
        execute '/# *Filename:/s@:.*$@\=": ".expand("%:t")@'
        execute "noh"
        normal 'k
        echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
    endfunction
    
    "判断前10行代码里面，是否有Last modified这个单词，
    "如果没有的话，代表没有添加过作者信息，需要新添加；
    "如果有的话，那么只需要更新即可
    function TitleDet()
        let n=1
        "默认为添加
        while n < 10
            let line = getline(n)
            if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
                call UpdateTitle()
                return
            endif
            let n = n + 1
        endwhile
        call AddTitle()
    endfunction
endf

func! myspacevim#after() abort
endf

