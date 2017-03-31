#/bin/sh

filepath=$(cd "$(dirname "$0")"; pwd)

echo -n "[*] Need to install tools? [y/N]"
read choice
if [ $choice = "y" -o $choice = "Y" ]
then
    echo "[*] Installing tools..."
    sudo apt-get install zsh tmux autojump wget guake
    # sudo apt-get install open-vm-tools-desktop fuse
else
    echo "[*] Do nothing..."
fi


if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi
echo "source $filepath/vimrc" > ~/.vimrc


if [ ! -d ~/.vim/autoload ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "[*] vim-plug exists."
fi


if [ -f ~/.tmux.conf ]; then
    mv ~/.tmux.conf ~/.tmux.conf.bak
fi
echo "source $filepath/tmux.conf" > ~/.tmux.conf


if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi
echo "source $filepath/zshrc" > ~/.zshrc


if [ ! -d ~/.oh-my-zsh ]
then
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
else
    echo "[*] Oh-my-zsh exists."
fi
#cp amber.zsh-theme  ~/.oh-my-zsh/themes


#if [ -f ~/.gitconfig ]; then
    #mv ~/.gitconfig ~/.gitconfig.bak
#fi
#cp $filepath/gitconfig ~/.gitconfig


chsh -s /bin/zsh


echo -n "[*] Ready to reboot? [y/N]"
read choice
if [ $choice = "y" -o $choice = "Y" ]
then
    echo "[*] Rebooting..."
    sudo reboot
else
    echo "[*] Reboot later..."
fi
