## vimrc
---

My vimrc settings and custom configurations.

## Setup

    make install
    vim +PluginInstall +qall
    # make uninstall

## Manual setup

Set up custom configuration (this repo):

    git clone https://github.com/desyncr/vimrc.git $HOME/.vim
    ln -s $HOME/.vim/vimrc.vim ~/.vimrc
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

# Vundles

    junegunn/fzf.vim
    junegunn/fzf

    vim-airline/vim-airline
    vim-airline/vim-airline-themes

    tpope/vim-fugitive
    junegunn/gv.vim

    majutsushi/tagbar

    Yggdroot/LeaderF

    junegunn/goyo.vim

    w0rp/ale

    terryma/vim-multiple-cursors

    liuchengxu/vim-which-key

    airblade/vim-gitgutter

    vim-scripts/ZoomWin

    mhinz/vim-startify

    skywind3000/asyncrun.vim

    arnaud-lb/vim-php-namespace
    stephpy/vim-php-cs-fixer

    leafgarland/typescript-vim.git
    Quramy/tsuquyomi

    nixon/vim-vmath.git

# Mappings

    Configs:            <leader>+c+{r,e,m,v,k,i,u}
    Projects:           <leader>+p+{s,m,f,n,t}
    Splits:             <leader>+s+{n,v,c,h,j,k,l,=,\_,|}
    Tabs:               <leader>+t+{n,l,h,c}
    Buffers:            <leader>+b+{s,l,h,d,t,f,T}
    Mode:               <leader>+m+{w,z,g,s}
    VCS:                <leader>+v+{a,P,f,p,s,c,b,l,d}

Use `<leader>` key to see mappings, default `<space>`. See `mappings.vim` for details.

## Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] ([tldr][3]) license. Which means you're allowed to copy, edit, change, hack, use all or any part of this project *as long* as all of the changes and contributions remains under the same terms and conditions.

  [1]: https://github.com/desyncr/vimrc/
  [2]: http://www.gnu.org/licenses/gpl.html
  [3]: http://www.tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3)
