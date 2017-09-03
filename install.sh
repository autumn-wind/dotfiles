#/bin/sh

filepath=$(cd "$(dirname "$0")"; pwd)

sys=`uname -s`

echo -n "[*] Need to install tools? [y/N]"
read choice
if [ $choice = "y" -o $choice = "Y" ]; then
    echo "[*] Installing tools for ${sys}..."
    if [ $sys = "Linux" ]; then
        sudo apt-get install zsh tmux autojump wget curl
        sudo yum install zsh tmux autojump wget curl
    elif [ $sys = "Darwin" ]; then
        echo "do nothing..."
    fi
else
    echo "[*] Do nothing..."
fi


#install vim configs
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi
echo "source $filepath/vimrc" > ~/.vimrc


#install vim-plug
if [ ! -d ~/.vim/autoload ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "[*] vim-plug exists."
fi


#install tmux configs
if [ -f ~/.tmux.conf ]; then
    mv ~/.tmux.conf ~/.tmux.conf.bak
fi
echo "source $filepath/tmux.conf" > ~/.tmux.conf


#install zsh configs
if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi
echo "source $filepath/zshrc" > ~/.zshrc


#install oh-my-zsh
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
