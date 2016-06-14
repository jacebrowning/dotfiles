To create symlinks for all dotfiles:

```
$ git clone https://github.com/jacebrowning/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
(change the name and email in .gitconfig)
$ git commit -am "Update user information"
$ make 
```

To apply future updates:

```
$ cd ~/.dotfiles
$ git pull
$ make
```
