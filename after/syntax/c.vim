syn keyword cType pthread_t pthread_mutex_t

syn keyword cUnixFun   fork
syn keyword cUnixFun   pthread_create pthread_self pthread_equal pthread_exit pthread_cancel

hi def link cUnixFun cFunction
