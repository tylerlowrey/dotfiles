#!/usr/bin/env fish

if not type -q rust-analyzer
    set -l operating_system (uname)
    switch (uname)
        case Darwin
            curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-apple-darwin.gz \
                | gunzip -c - >~/_dev/_bin/rust-analyzer
        case Linux
            curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz \
                | gunzip -c - >~/_dev/_bin/rust-analyzer
    end
end

cd nvim-rs
cargo build --release
cd ..
mkdir -p $HOME/.config/nvim-rs/lua
cp -rf nvim-rs/target/release/libnvim_rs.dylib $HOME/.config/nvim-rs/lua/nvim_rs.so
cp -rf nvim-rs/target/release/libnvim_rs.so $HOME/.config/nvim-rs/lua/nvim_rs.so
mkdir -p $HOME/.config/nvim
cp -rf .config/nvim/* $HOME/.config/nvim
cp -rf .config/fish/* $HOME/.config/fish
