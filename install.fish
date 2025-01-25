#!/usr/bin/env fish
cd nvim-rs
cargo build --release
cd ..
mkdir -p $HOME/.config/nvim-rs/lua
cp -rf nvim-rs/target/release/libnvim_rs.dylib $HOME/.config/nvim-rs/lua/nvim_rs.so
cp -rf nvim-rs/target/release/libnvim_rs.so $HOME/.config/nvim-rs/lua/nvim_rs.so
mkdir -p $HOME/.config/nvim
cp -rf .config/nvim/* $HOME/.config/nvim
cp -rf .config/fish/* $HOME/.config/fish
