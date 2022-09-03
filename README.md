![2022-09-02-194049_1920x1080_scrot](https://user-images.githubusercontent.com/11047382/188246917-01d2f5b4-a21c-479a-bb95-19d2db75f41f.png)
# My sweet and simple dotfiles

Here-lies a collection of my dotfiles that I use both for work and my own machines.

## Note
- [vim-plugged](https://github.com/gabek-code/dotfiles/blob/master/vim/.vim/autoload/plug.vim) is required for the [n]vim configuration.
- Personally I don't recommend using the bash config, as it is currently catered more for my own environments. That being said, `.bash/aliases.sh` may prove useful for some convenient shortcuts.

## Usage
These dotfiles are organized in such a way for the use of [GNU stow](https://www.gnu.org/software/stow/). If you don't use `stow` already, you probably want to 🤔

```bash
# amazing demonstration

$ cd dotfiles
$ stow bash
```
This will create a symbolic link at `$HOME` for all the files (recursively) in `dotfiles/bash`.


