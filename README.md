# Dot files for bash and zsh

Setting up your aliases and exports on a fresh computer is always a pain. This repo is meant to help set-up and retain all common aliases.

## Usage

You will only need to symlink the rc file for your shell. All the other files are dynamically sourced from the rc file.

```bash
cd ~
ln -s ${Path to this repo}/.zshrc .
```

## Computer specific aliases

Sometimes I have different aliases per computer. Work Computer has separate projects and I sometimes like to make aliases to jump directly to my projects. This project automatically ignores changes made to `.computer_aliases.sh` so you can make computer specific aliases without commiting them.

```bash
#!/bin/bash
# .computer_aliases.sh

alias proj="~/Projects/SomeProject"
```