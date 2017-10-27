#!/bin/sh
brew install zsh zsh-completions

zsh
q
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done


Add modules to Prezto by editing ~/.zpreztorc and adding:

zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'git' \
  'syntax-highlighting' \
  'history-substring-search' \
  'prompt'

zstyle ':prezto:module:prompt' theme 'paradox'


To activate these completions, add the following to your .zshrc:

  fpath=(/usr/local/share/zsh-completions $fpath)

You may also need to force rebuild `zcompdump`:

  rm -f ~/.zcompdump; compinit

Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
to load these completions, you may need to run this:

  chmod go-w '/usr/local/share'

#To get the Powerline symbols working as mike@Mikes-Laptop.local has:

#Download a Powerline font. A good font for downloading can be found at https://github.com/powerline/fonts
#Install it by running ./install.sh.
#Change the font in your Terminal preferences to use the new Powerline font.