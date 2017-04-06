if exists("b:current_syntax")
    finish
endif

syntax keyword pclPreProc include

syntax keyword pclKeyword if then else elseif end
syntax keyword pclKeyword loop until begin end break continue
syntax keyword pclKeyword sub begin end
syntax keyword pclKeyword preset

syntax keyword pclType int double bool string rgb_color array

syntax keyword pclFunction abs arccos arcsin arctan arctan2 arctan2d 
syntax keyword pclFunction arithmetic_mean ceil cos date date_time date_time_gmt
syntax keyword pclFunction delete_file directory_exists dist exit exp
syntax keyword pclFunction file_exists floor get_directory_files
syntax keyword pclFunction get_memory_metrics get_sdl_variable is_double is_int
syntax keyword pclFunction is_null log log10 median_value mod
syntax keyword pclFunction population_std_dev pow printf random round
syntax keyword pclFunction run_process sample_std_dev set_random_seed
syntax keyword pclFunction set_system_volume sin sqrt system_beep tan
syntax keyword pclFunction wait_interval wait_until

syntax match pclOperator "\v\*"
syntax match pclOperator "\v/"
syntax match pclOperator "\v\%"
syntax match pclOperator "\v\!"
syntax match pclOperator "\v\+"
syntax match pclOperator "\v-"
syntax match pclOperator "\v\="
syntax match pclOperator "\v\=\="
syntax match pclOperator "\v\!\="
syntax match pclOperator "\v\>"
syntax match pclOperator "\v\<"
syntax match pclOperator "\v\>\="
syntax match pclOperator "\v\<\="
syntax match pclOperator "\v\&\&"
syntax match pclOperator "\v\|\|"

syntax match pclConstant "\v<[0-9]+(\.[0-9]+)?(e[+-]?[0-9]+)?>"
syntax region pclConstant start=/\v"/ skip=/\v\\./ end=/\v"/
syntax keyword pclConstant true false

syntax match pclComment "\v#.*$"
syntax match pclComment "/\*\_.\{-}\*/"

syntax region pclBlock matchgroup=pclKeyword start="\<begin\>" end="\<end\>" transparent fold

highlight link pclComment Comment
highlight link pclKeyword Keyword
highlight link pclType Type
highlight link pclPreProc PreProc
highlight link pclFunction Function
highlight link pclOperator Operator
highlight link pclConstant Constant

let b:current_syntax = "nbspcl"
