"Nifty syntax file

if exists("b:current_syntax")
    finish
endif

syn keyword niftyVarVal var val
syn keyword niftyGlobal global local
syn keyword niftyIf if else elif unless
syn keyword niftyRepeat for while until repeat forever times do goto
syn keyword niftyContinue continue break
syn keyword niftyDelay delay
syn keyword niftyInclude use import package
syn keyword niftyReturn return
syn keyword niftyStructure class
syn keyword niftyStorageClass struct behavior enum
syn keyword niftyAccess public private read_only static protected friend does signals slots
syn keyword niftySelf self
syn keyword niftyKeywords mutable and or is not
syn keyword niftyCasting cast as type
syn keyword niftyComputedProperties get set willSet didSet
syn keyword niftyNewValue newValue oldValue
syn keyword niftyWhen when

syn keyword niftyDataType int float double bool char String uint uint8 uint16 uint32 uint64 uint128 int8 int16 int32 int64 int128 void null signed unsigned any
syn keyword niftyOperators operator sizeof typeof
syn keyword niftyBool true false

syn match niftyInt "\<[0-9_]\+\>" display
syn match niftyFloat "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\%([eE][+-]\=[0-9_]\+\)\=" display
syn match niftyHex "\<0x[0-9A-fa-f]\+\>" display

syn keyword niftyTodo TODO FIXME XXX contained
syn match niftyCommentNote "@\<\w\+\>" contained display
syn match niftyLineComment "//.*" contains=niftyTodo,niftyCommentNote
syn region niftyBlockComment start=/\v\/\*|\v\/\-/ end=/\v\*\/|\v\-\// contains=niftyLineComment,niftyBlockComment,niftyCommentNote

syn region niftyString start=/\v"/ skip=/\v\\./ end=/\v"/

syn match niftyMacro "$\<\w\+\>"
syn match niftyLabel "#\<\w\+\>"
syn match niftyAnnotation "@\<\w\+\>"
"TODO: Only higlight if it is in a class/struct and only if it starts with .
"syn match niftySelfDot "\.\<\w\+\>"

syn match niftyparen "(" contains=niftyParen
syn match niftyFunction "\w\+\s*(\@=" contains=niftyParen

hi link niftyVarVal Structure
hi link niftyGlobal Identifier
hi link niftyIf Conditional
hi link niftyRepeat Repeat
hi link niftyContinue Repeat
hi link niftyDelay Operator
hi link niftyInclude Include
hi link niftyReturn Keyword
hi link niftyStructure Structure
hi link niftyStorageClass StorageClass
hi link niftyAccess Statement
hi link niftySelf Type
hi link niftyKeywords Keyword
hi link niftyCasting Keyword
hi link niftyComputedProperties Keyword
hi link niftyNewValue Identifier
hi link niftyWhen Keyword

hi link niftyDataType Type
hi link niftyOperator Operator
hi link niftyBool Boolean

hi link niftyInt Number
hi link niftyFloat Float

hi link niftyTodo Todo
hi link niftyLineComment Comment
hi link niftyBlockComment Comment
hi link niftyCommentNote Identifier

hi link niftyString String

hi link niftyMacro Macro
hi link niftyLabel Constant
hi link niftyAnnotation Identifier
"hi link niftySelfDot Identifier

hi link niftyFunction Function

let b:current_syntax = "nifty"

