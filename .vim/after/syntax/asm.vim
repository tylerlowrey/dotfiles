syn clear asmComment
syn match asmComment		"^#.*" contains=asmTodo
syn match asmComment 		"[@;].*" contains=asmTodo
