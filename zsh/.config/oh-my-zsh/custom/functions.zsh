template-vim(){
# Pack and bundle have a special meaning
mkdir -p $HOME/.vim/pack/minpac/start
mkdir -p $HOME/.vim/pack/minpac/opt
mkdir -p $HOME/.vim/after/compiler
cd $HOME/.vim/pack/minpac/opt
git clone https://github.com/k-takata/minpac.git

cd
touch .vimrc
echo "set nocompatible " >> .vimrc
echo "filetype plugin on " >> .vimrc
echo "packadd minpac " >> .vimrc
echo "call minpac#init() " >> .vimrc
echo "command! PackUpdate call minpac#update() " >> .vimrc
echo "command! PackClean call minpac#clean() " >> .vimrc
}

save-vim-template(){
mkdir -p $HOME/.config/vimbackup/template
cp -r ~/.vimrc ~/.vim $HOME/.config/vimbackup/template
}

clear-vim(){
rm -rf ~/.vim ~/.vimrc
}

reset-vim(){
clear-vim
cp $HOME/.config/vimbackup/template/.vimrc ~ 
cp -R $HOME/.config/vimbackup/template/.vim ~ 
}

git-vim(){
config checkout ~/.vimrc
}

restore-vim(){
clear-vim
cd $HOME/.config/vimbackup/latest
cp -r .vimrc .vim ~
cd -
}

backup-vim(){
cd $HOME/.config/vimbackup/latest
rm -rf *
#mkdir -p $HOME/.config/vimbackup/latest
cp -r ~/.vimrc ~/.vim .
cd -
}

