set PATH $HOME/.jenv/bin $PATH
status --is-interactive; and jenv init - | source
set PATH $PATH $HOME/.cargo/bin

function fish_prompt
    set -l time (date +%H:%M:%S)
    printf '┌─[%s%s %s%s]-{%s%s%s}-[%s%s%s]\n└%s>%s ' \
        (set_color 8B93FF) (date +'%Y-%m-%d') $time (set_color normal) \
        (set_color F8F9D7) $USER (set_color normal) \
        (set_color E49BFF) (prompt_pwd -D 20) (set_color normal) \
        (set_color EC8305) (set_color normal)
end
