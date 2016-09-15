if has("unix")
	let s:uname = system("uname -s")
	if s:uname == "Darwin"
    	" Do Mac stuff here
		set guifont=Source\ Code\ Pro:h16
	else
		" Do Linux stuff here
		set guifont=SourceCodePro\ 10
	endif
endif

" General
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
syntax enable
set background=dark
colorscheme solarized
