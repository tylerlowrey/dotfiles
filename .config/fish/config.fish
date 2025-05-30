set fish_greeting

set PATH $HOME/.jenv/bin $PATH
if type -q jenv
    status --is-interactive; and jenv init - | source
end

set PATH $PATH $HOME/_dev/_bin
set PATH $PATH $HOME/_dev/_bin/google-cloud-sdk/bin
set PATH $PATH $HOME/.cargo/bin
set PATH $PATH $HOME/.local/bin
set PATH $PATH $HOME/go/bin
set PATH $PATH $HOME/.rd/bin
set PATH $PATH $HOME/.config/jetbrains/scripts

set -gx LS_COLORS (vivid generate snazzy)

set -g fish_prompt_pwd_dir_length 20

function fish_prompt
    set -l time (date +%H:%M:%S)
    printf '┌─[%s%s %s%s]-{%s%s%s}-[%s%s%s]\n└%s>%s ' \
        (set_color 8B93FF) (date +'%Y-%m-%d') $time (set_color normal) \
        (set_color F8F9D7) $USER (set_color normal) \
        (set_color E49BFF) (prompt_pwd) (set_color normal) \
        (set_color EC8305) (set_color normal)
end

set -x CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER x86_64-linux-gnu-gcc
# Must be after PATH to rust-analyzer
~/.local/bin/mise activate fish | source
