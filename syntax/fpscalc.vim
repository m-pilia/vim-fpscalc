" Vim syntax file
" Language: FpsCalc 
" Maintainer: Martino Pilia <martino.pilia@gmail.com>
" Latest Revision: 9 October 2017 

if exists("b:current_syntax")
  finish
endif

syn keyword fpsFormula declarations semaphores initialise formulas contained skipwhite skipnl skipempty nextgroup=fpsFormulaBlock
syn keyword fpsType tasks indexed priority scalar blocking contained
syn keyword fpsSystem system

syn keyword fpsTodo contained TODO FIXME XXX NOTE
syn match fpsComment "!.*$" contains=fpsTodo

syn match fpsNumber '\d\+' contained display
syn match fpsNumber '[-+]\d\+' contained display

syn match fpsNumber '\d\+\.\d*' contained display
syn match fpsNumber '[-+]\d\+\.\d*' contained display

syn match fpsNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+' contained display
syn match fpsNumber '\d[[:digit:]]*[eE][\-+]\=\d\+' contained display

syn match fpsNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' contained display
syn match fpsNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' contained display

syn match fpsVariable /\<\I\i*\>/ contained display

syn match fpsSystemName '\i\+' display

syn match fpsFunction /\<\I\i*\s*(\@=\>/ contained display

syn region fpsBrackets start='\[' end='\]' transparent contains=fpsIndex contained

syn match fpsIndex '\i\+' contained display

syn region fpsSystemBlock start="{" end="}" fold transparent contains=fpsFormula,fpsComment

syn region fpsFormulaBlock start="{" end="}" fold transparent contained contains=fpsNumber,fpsVariable,fpsType,fpsComment,fpsFunction,fpsBrackets

let b:current_syntax = "fps"

hi def link fpsTodo        Todo
hi def link fpsComment     Comment
hi def link fpsNumber      Constant
hi def link fpsSystem      Statement 
hi def link fpsSystemName  Constant
hi def link fpsFormula     Statement
hi def link fpsType        Type
hi def link fpsFunction    Operator
hi def link fpsIndex       SpecialChar

