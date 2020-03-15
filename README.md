# env
Personal environment and dotfiles settings

The following instructions assume this repo is checkout to your ~/env dir.

## Using /shared/dotfiles

Create relative links to dotfiles (use -f to force if necessary)

```bash
cd ~
ln -s env/shared/dotfiles/.vimrc
ln -s env/shared/dotfiles/.vimrc.keymap
ln -s env/shared/dotfiles/.ideavimrc
```

To setup tmux:

1. Install https://github.com/gpakosz/.tmux
2. `ln -s env/shared/dotfiles/.tmux.conf.local`
