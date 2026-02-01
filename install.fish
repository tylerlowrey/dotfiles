#!/usr/bin/env fish

cd nvim-rs
cargo build --release
cd ..
mkdir -p $HOME/.config/nvim-rs/lua
cp -rf nvim-rs/target/release/libnvim_rs.dylib $HOME/.config/nvim-rs/lua/nvim_rs.so
cp -rf nvim-rs/target/release/libnvim_rs.so $HOME/.config/nvim-rs/lua/nvim_rs.so
mkdir -p $HOME/.config/nvim
cp -rf .config/nvim/* $HOME/.config/nvim
mkdir -p $HOME/.config/fish
cp -rf .config/fish/* $HOME/.config/fish
mkdir -p $HOME/.config/niri
cp -rf .config/niri/* $HOME/.config/niri
mkdir -p $HOME/.config/systemd/user
cp -rf .config/systemd/user/* $HOME/.config/systemd/user
mkdir -p $HOME/.config/alacritty
cp -rf .config/alacritty/* $HOME/.config/alacritty
mkdir -p $HOME/.config/waybar
cp -rf .config/waybar/* $HOME/.config/waybar
mkdir -p $HOME/.config/fuzzel
cp -rf .config/fuzzel/* $HOME/.config/fuzzel
mkdir -p $HOME/.config/mako
cp -rf .config/mako/* $HOME/.config/mako
mkdir -p $HOME/.config/wezterm
cp -rf .config/wezterm/* $HOME/.config/wezterm
mkdir -p $HOME/.config/tio
cp -rf .config/tio/* $HOME/.config/tio
cp .ideavimrc $HOME
