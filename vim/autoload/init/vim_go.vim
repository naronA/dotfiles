scriptencoding utf-8

function! init#vim_go#config() abort
    let g:go_highlight_methods = 1
    let g:go_highlight_structs = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_function_parameters = 1
    let g:go_highlight_function_arguments = 1
    let g:go_highlight_function_calls = 1
    let g:go_highlight_types = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_variable_declarations = 1
    let g:go_highlight_variable_assignments = 1

    let g:go_echo_command_info = 0
    let g:go_def_mapping_enabled = 0
    let g:go_gocode_propose_builtins = 0
    let g:go_echo_go_info = 0

    let g:go_diagnostics_enabled = 0
    let g:go_metalinter_autosave = 0

    "" format ""
    let g:go_fmt_autosave = 0
    let g:go_term_height = 15
    let g:go_term_mode = 'on | belowright split'
    let g:go_term_enabled = 0

    function! s:vim_go_keymap()
        nnoremap <buffer><silent> <Leader><C-r> :GoRun<CR>
        nnoremap <buffer><silent> <F5> :GoDebugContinue<CR>
        nnoremap <buffer><silent> <F6> :GoDebugPrint<CR>
        nnoremap <buffer><silent> <F9> :GoDebugBreakpoint<CR>
        nnoremap <buffer><silent> <F10> :GoDebugNext<CR>
        nnoremap <buffer><silent> <F11> :GoDebugStep<CR>
        nnoremap <buffer><silent> <F12> :GoDebugStop<CR>
    endfunction

    augroup vim_go_hook_add
        autocmd FileType go :call s:vim_go_keymap()
    augroup END
endfunction
