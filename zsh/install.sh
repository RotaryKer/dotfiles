if [ " `echo "$SHELL" | grep "zsh"`" ] ;then
   if [ "`ls -a ~/ | grep .zshrc`" ];then
       mv ~/.zshrc ~/.zshrc.bak
       ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
   else
       ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
   fi
fi
