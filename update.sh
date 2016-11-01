echo "git pull"
git pull

echo "install vim plugins"
vim +PluginInstall +qall

source ~/.zshrc

echo "kirkchen's vimrc is up to date."
