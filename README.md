# Dot files for bash and zsh

Setting up your aliases and exports on a fresh computer is always a pain. This repo is meant to help set-up and retain all common aliases. All alias files are sourced with the dot folder path as an argument to the alias. This allows writing of aliases that reference other files within the folder even through sym-links.

## Usage

You will only need to sym-link the rc file for your shell. All the other files are dynamically sourced from the rc file.

```bash
sh set-up.sh
```

## Computer specific aliases

Folder structure and projects may differ from computer to computer especially when switching between work and personal devices. `.computer_aliases.sh` will be sourced in the `.profile.sh` but will not be committed to git when you make changes. This allows for varying different aliases that will be specific to whatever device you are on.

```bash
#!/bin/bash
# .computer_aliases.sh

alias proj="cd ~/Projects/SomeProject"
```

## Temporary aliases

When working on specific features you might need to do builds repetitively or run tests over and over with minor variation. The `.temp_aliases.sh` file will be cleared every time you start a new shell instance allowing for ephemeral aliases for certain repetitive tasks. Like the computer aliases these will not be committed to git when changes are made, but to account for crashes there is a `revertTmp` alias that will load a backup of the last shells `.temp_aliases.sh`.

```bash
#!/bin/bash
# .temp_aliases.sh

alias repetitive="npm i; npm run tests $SOME_DIR_I_WANT_TO_TEST"
```
