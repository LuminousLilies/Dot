# Dot Files for Bash and ZSH

Setting up your aliases and exports on a fresh computer is always a pain. This repo is meant to help set-up and retain all common aliases.

## Usage

You will only need to symlink the rc file for your shell. All the other files are dynamically sourced from the rc file.

```bash
cd ~
ln -s ${Path to this repo}/.zshrc .
```