dotfiles
=======================

This repo contains learnings and tools I've gathered from becoming a full fledged Front-End Developer

### Setting up my development environment
1. Install oh-my-zsh https://gist.github.com/tsabat/1498393
2. vim up .zshrc file and change zsh theme = russell to pygmalion

### Setting up my VIM configs
1. run ```zsh install.sh```
this creates symlinks of .vim, .vimrc, .zshrc files to root directory

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
