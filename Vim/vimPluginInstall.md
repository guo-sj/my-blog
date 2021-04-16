# Vim Plugin Install

## Question
How to install a vim plugin in windows platform and linux platform?

## Answer
To install a vim plugin, you need just a **plugin manager** and the **plugins** you want to install.

### Linux platform

#### Plugin manager
There are many vim plugin managers, and here **vim-pathogen** is preferred. To install **vim-pathogen** , first make sure you have **.vim/autoload and .vim/bundle** directories, if not, using the following command to create:
```
mkdir -p ~/.vim/autoload ~/.vim/bundle
```

Then use *curl* command to get **vim-pathogen**:
```
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Another way to get **vim-pathogen** is using *git clone*:
```
git clone https://github.com/tpope/vim-pathogen && cp ./vim-pathogen/autoload/pathogen.vim ~/.vim/bundle
```

#### Install plugin
When you've got **vim-pathogen**, install plugin becomes very easy. **e.g.** install popular plugin *Nerdtree* is as simple as:
```
cd ~/.vim/bundle && git clone https://github.com/preservim/nerdtree
```

### Windows platform

In windows platform, install vim plugin become more simple. Open your windows terminal (wsl) and type:
```
mkdir -p ~/vimfiles/pack/vendor/start

cd ~/vimfiles/pack/vendor/start && git clone https://github.com/preservim/nerdtree
```

That's all!



