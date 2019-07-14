function! narona#init#vim_blade#hook_add() abort
	" Define some single Blade directives. This variable is used for highlighting only.
	let g:blade_custom_directives = ['datetime', 'javascript']

	" Define pairs of Blade directives. This variable is used for highlighting and indentation.
	let g:blade_custom_directives_pairs = {
				\   'markdown': 'endmarkdown',
				\   'cache': 'endcache',
				\ }
endfunction
