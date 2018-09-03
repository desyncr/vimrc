## vimrc
---

My vimrc settings and custom configurations.

## Setup

    make install
    # make uninstall

## Manual setup

Set up custom configuration (this repo):

    git clone https://github.com/desyncr/vimrc.git $HOME/.vim
    ln -s $HOME/.vim/vimrc.vim ~/.vimrc
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Vundles

VundleVim/Vundle.vim

scrooloose/nerdtree

junegunn/fzf.vim
junegunn/fzf

vim-airline/vim-airline
vim-airline/vim-airline-themes

tpope/vim-fugitive
yegappan/mru

ctrlpvim/ctrlp.vim
DavidEGx/ctrlp-smarttabs

# Mappings

Main sections
Configs:            <leader>+c+{r,e,c,m,v}
Projects:           <leader>+p+{s,m,f,n,b}
Splits:             <leader>+s+{n,nh,nv,c,h,j,k,l,=,\_,|}
Tabs:               <leader>+t+{n,l,h,c}
Buffers:            <leader>+b+{l,h,c}
Windows:            <leader>+w -- disabled

## Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] ([tldr][3]) license. Which means you're allowed to copy, edit, change, hack, use all or any part of this project *as long* as all of the changes and contributions remains under the same terms and conditions.

  [1]: https://github.com/desyncr/vimrc/
  [2]: http://www.gnu.org/licenses/gpl.html
  [3]: http://www.tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3)
