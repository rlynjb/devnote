devnote
=======================

This repo contains learnings and tools I've gathered from becoming a full fledged Front-End Developer

### Settings up my development environment
1. Install HomeBrew first
2. Install Google Chrome and iTerm2
3. Use Terminal to configure iTerm2 to my preferred settings

```
killall cfprefsd     # This will get rid of cached settings
rm  ~/Library/Preferences/com.googlecode.iterm2.plist
ln -s ~/devnote/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
```

4. Now, Install oh-my-zsh
5. Remove pygmalion theme
6. Copy and paste my pygmalion theme
7. vim up .zshrc file and change zsh theme = russell to pygmalion

### Setting up my VIM theme and configs
1. Copy ```.vim``` and ```.vim-rc``` unto root directory
```
cd ~/devnote/
cp -R .vim .vim-rc ~/
```
2. Now, type ```vim ``` on iTerm
3. and type ```:E``` for Tree listing of files

### Setting up a local server with Node.js for Front-End Development
#### Using NPM for Package Manager

#### Using Gulpjs for Task Runner
