export PATH=~/_dev/_bin:$PATH
export CLICOLOR=1
NEWLINE=$'\n'
if [[ "$TERM_PROGRAM" != "Apple_Terminal" ]]; then
	export PROMPT="┌─[%F{#8B93FF}%D{%Y-%m-%d} %D{%H:%M:%S}%f]─{%F{#F8F9D7}%B%n%b%f}─[%F{#E49BFF}%B%~%b%f] ${NEWLINE}└%F{#EC8305}%B>%b%f "
elif [[ "$TERM_PROGRAM" == "Apple_Terminal" ]]; then
	export PROMPT="┌─[%F{blue}%D{%Y-%m-%d} %D{%H:%M:%S}%f]─{%F{white}%n%f}─[%F{cyan}%~%f] ${NEWLINE}└%F{red}>%f "
fi

eval "$(jenv init -)"
