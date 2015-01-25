To create symlinks for all dotfiles:

```
$ git clone https://github.com/jacebrowning/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
(change the name/email in .gitconfig)
$ git commit -am "Change name/email"
$ make 
```

To apply future updates:

```
$ cd ~/.dotfiles
$ git pull
$ make
```
