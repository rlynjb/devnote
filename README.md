dotfiles
=======================

quick setup:
set autoindent expandtab tabstop=2 softtabstop=2 shiftwidth=2 nu

This repo contains learnings and tools I've gathered from becoming a full fledged Front-End Developer

##### Tools of trade
- any terminal or if mac, use iTerm
- Vim
- tmux
- zsh
- oh-my-zsh

### Installing zsh and oh-my-zsh goodies
1. ```apt-get install zsh```
2. ```wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh```
3. change shell to use zsh instead of bash ```chsh -s `which zsh````
4. restart system ```sudo shutdown -r 0```

### Setting up zsh theme and Vim configs
1. vim up .zshrc file and change zsh theme = russell to pygmalion
2. run ```zsh install.sh``` this creates symlinks of .vim, .vimrc, .zshrc files to root directory

#### Keyboard Keys + Shortcuts
Tasks | Vim | Tmux
--- | --- | ---
Key-Bind | Ctrl | Alt/Option + A
Open new pane | v | d
Split Pane vertically | - | Shift + "
Open new window | - | t
Navigate through panes | h,j,k,l | Left, Right
Navigate through windows | - | [, ]
Scoll in pane | Shift + [, ] | Page Up, Page Down for quick nav. For per line is arrows Up, Down
Exit of of Scroll pane mode | - | press Enter
Close a pane | :q | e
Close a window | - | w
Resize pane | Shft + hjkl
Open Dev Tool | - | -
Toggle Vim Explorer | E | -
Maximize a pane toggle | - | z

##### Commandline 
```
// to search through files like Sublime-ish style
grep -rnC2 "text here" directory_here/

// search and replace
grep -rl matchstring somedir/ | xargs sed -i 's/string1/string2/g'
// sample
grep -rl 'windows' ./ | xargs sed -i 's/windows/linux/g'

// Removing ^M characters on ubuntu in VIM
%s/\r//g
```
##### Git Tig
```
tig // to open git tig
press Shft + s // to view un/staged files
press u // to toggle files to be staged or unstaged
press q // to quit view
press Shft + c // to commit and write commit msg
```
