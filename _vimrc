
let hostname = substitute(system('hostname'), '\n', '', '')
if hostname == "ansys2"
	source D:/maharjan/VIM/vimrc.vim
elseif hostname == "hgebhardt1"
	source E:/SM/VIM/vimrc.vim
elseif hostname == "Smaharjan"
	source E:/SM/VIM/vimrc.vim
else
	source C:/users/Sarat/Dropbox/VIM/vimrc.vim
endif

