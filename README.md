# My Dotfiles

Contains my vim config files and fish/zsh/bash settings

Also contains a nvim-rs directory, which is a rust library using nvim-oxi to configure neovim

## How to use
Use the install.* script to perform initial setup

Use the update.* script to perform updates to an already setup environment

Create a `.config/secrets/oatmeal_config.toml`

## Dependencies

The following dependencies need to be installed in order for everything to work as expected

- [rust + cargo](https://rustup.rs/) 
- rust standard library sources
`rustup component add rust-src`
- [mise](https://asdf-vm.com/guide/getting-started.html)
- rust-analyzer (Must be somewhere on the PATH)
`pacman -S rust-analyzer` or `brew install rust-analyzer`
- [asdf](https://asdf-vm.com/guide/getting-started.html)
- [mermaid-cli](https://github.com/mermaid-js/mermaid-cli?tab=readme-ov-file#installation) 
`npm install -g @mermaid-js/mermaid-cli`
- [vivid](https://github.com/sharkdp/vivid?tab=readme-ov-file#installation) - for terminal theming 
`cargo install vivid`
- [fzf](https://github.com/junegunn/fzf?tab=readme-ov-file#installation)
`brew install fzf` or `sudo apt install fzf`
- [x86_64-unknown-linux-gnu](https://github.com/messense/homebrew-macos-cross-toolchains/tree/main?tab=readme-ov-file#macos-cross-toolchains) *if on MacOS*
```
brew tap messense/macos-cross-toolchains
brew install x86_64-unknown-linux-gnu
```
- [oatmeal](https://github.com/dustinblackman/oatmeal?tab=readme-ov-file#install)
`brew install dustinblackman/tap/oatmeal`

## Fonts

I use [nerdfonts.com](https://www.nerdfonts.com/font-downloads) for my fonts. Here is the list of fonts from there that I like:

- EnvyCodeR
