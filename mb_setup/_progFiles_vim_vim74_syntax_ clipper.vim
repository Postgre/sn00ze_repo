" Vim/Gvim syntax file
" Language:	SPL
" Maintainer:	Peter Miller
" Last Change:	2001 May 17
" Updated: 9th January 2009, James Hope
"          6th August 2009, James Hope

" Original based on C.VIM
" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded

" Include the following commands in your _vimrc to activate this syntax file:
" augroup filetype
"    au! BufRead,BufNewFile *.spl set filetype=spl
"    au Syntax spl so $VIMRUNTIME/syntax/spl.vim
" augroup END

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" MOST important - else most of the keywords wont work!
if version < 600
  set isk=@,48-57,-,_,%
else
  setlocal isk=@,48-57,-,_,%
endif

syn case ignore

" PRONTO statement/declaration keywords
syn keyword	ProntoDeclare		procedure end-procedure endprocedure
syn keyword	ProntoDeclare		screen end-screen endscreen
syn keyword	ProntoDeclare		menu end-menu endmenu
syn keyword ProntoDeclare		wizardsheet wizard-sheet endwizardsheet end-wizard-sheet
syn keyword	ProntoDeclare		api end-api endapi
syn keyword ProntoDeclare		object local field fields mode
syn keyword ProntoDeclare		file link separator
syn keyword	ProntoRecord		record end-record endrecord
syn keyword	ProntoStatement		set string do spl call command abort audit colour color step from
syn keyword ProntoStatement		save restore initialize initialise pop push
syn keyword ProntoStatement		exit back-to-detail version-number datagrid data-grid review
syn keyword	ProntoStatement		break continue all optional occurs
syn keyword ProntoStatement		strconcat str-concat concat returning parameter parameters
syn keyword ProntoStatement		and or not help default when uppercase upper-case
syn keyword ProntoStatement		wizardnextsheet wizard-next-sheet
syn keyword ProntoStatement		wizardprevsheet wizard-prev-sheet
syn keyword ProntoStatement		wizard-wait wizardwait
syn keyword ProntoStatement		wizard-first-sheet wizardfirstsheet
syn keyword ProntoStatement		wizard-last-sheet wizardlastsheet
syn keyword ProntoStatement		wizard-welcome-sheet wizardwelcomesheet
syn keyword ProntoStatement		wizard-normal-sheet wizardnormalsheet
syn keyword ProntoStatement		wizard-completion-sheet wizardcompletionsheet
syn keyword ProntoStatement		form-entry no-ok-cancel disallow allow allowed title index showvalue show-value readonly read-only values background foreground prompts prompt data
syn keyword	ProntoStatement		next same different first last previous
syn keyword ProntoStatement		message-box messagebox descending desc key is down to auto begin commit rollback
syn keyword ProntoStatement		window-position windowposition scale bold italic underline bitmap bitmap-pushed bitmappushed bitmap-hover bitmaphover
syn keyword ProntoStatement		text-position textposition absolute-coordinates absolutecoordinates no-aspect-ratio noaspectratio where time-out timeout
syn keyword ProntoStatement		spool-only no-xml no-message direct header footer width depth length margin default font full-page form full-xml no-message
syn keyword ProntoStatement		primary review-from-start review-from-current review-from-end review-bottom-to-top no-prompt-for-search prompt-for-search
syn keyword ProntoStatement		can-override no-override export user-trigger start-on-current-record leave-parent-screen find-for-currency stay-in-correct
syn keyword ProntoStatement		stop-exit-all-key stop-exit-all no-review-row-separators no-review-column-separators no-review-separators once
syn keyword ProntoStatement		appending inserting replacing deleting tag message-buttons bell help-context leave-files-open always-show alwaysshow currency process
syn keyword ProntoStatement		sunken no-cross double no-joins no-rowid compress duplicate perform security tree-menu button-width nohide no-hide auto-transaction
syn keyword ProntoStatement		having distict group by suppress fixed-width-font blank justify no-title notitle no-clear noclear icon button-style buttonstyle value
syn keyword ProntoStatement		lookup order fill with trailing leading between const outer translate col nonewline no-newline lock section underlined inverse are
syn keyword ProntoStatement		max-parameters maxparameters no-wait nowait external no-warning nowarning
syn keyword ProntoReport		print skip need report page finish finished
syn keyword	ProntoGroup			validation end-validation endvalidation
syn keyword	ProntoGroup			validations end-validations endvalidations
syn keyword	ProntoGroup			confirmed end-confirm endconfirm
syn keyword	ProntoGroup			not-confirmed notconfirmed before-accept end-before-accept
syn keyword	ProntoGroup			before-radio-button before-check-box end-before-radio-button end-before-check-box
syn keyword	ProntoInput			accept option confirm end-option endoption
syn keyword ProntoInput			radio-button radiobutton end-radio-button endradiobutton
syn keyword ProntoInput			check-box checkbox end-check-box endcheckbox
syn keyword	ProntoScreenIO		display message acknowledge window
syn keyword	ProntoScreenIO		re-enter reenter clear box refresh pause
syn keyword	ProntoConditional	if then else else-if elseif end-if endif end
syn keyword	ProntoConditional	switch end-switch endswitch
syn keyword	ProntoConditional	on help-key end-on endon down-arrow up-arrow left-arrow right-arrow change in
syn keyword ProntoLabel			case
syn keyword	ProntoRepeat		while end-while endwhile for end-for endfor
syn keyword	ProntoRepeat		repeat until end-repeat endrepeat
syn keyword	ProntoRepeat		select end-select endselect re-select reselect
syn keyword	ProntoRepeat		extract end-extract endextract
syn keyword ProntoIO			open close insert update delete get position
syn keyword ProntoIO			unlock transaction serial truncate temporary create permanent
syn keyword ProntoType			contained numeric boolean date time date-time color colour ole-interface floating decimal alpha zoned string
syn keyword ProntoStorageClass	contained memory isam external prn sequential indexed c-isam-dat db-sequential fixed-length-text text
syn keyword ProntoConstant		space spaces zero yes no
syn case match
syn keyword	ProntoErrorMacros	ENOENT EACCESS EMFFILE ENOSPC ENOLCK EDUPL ENOTOPEN EBADARG EBADKEY ETOOMANY EBADFILE ENOTEXCL ELOCKED
syn keyword ProntoErrorMacros	EKEXISTS EPRIMKEY EENDFILE ENOREC ENOCURR EFLOCKED EFNAME ENOSHMEM ERECORDCHANGED
syn keyword ProntoConstant		MSG_BOX_OK MSG_BOX_CANCEL MSG_BOX_YES MSG_BOX_NO MSG_BOX_RETRY MSG_BOX_OK_CANCEL MSG_BOX_YES_NO MSG_BOX_YES_NO_CANCEL
syn keyword ProntoConstant		MSG_BOX_STOP MSG_BOX_WARNING MSG_BOX_INFORMATION MSG_BOX_QUESTION
syn case ignore
syn keyword ProntoColour		white red blue green purple yellow black
syn keyword ProntoScreenMode	entry remove correct find search prev prev-scr next-scr show form-entry-defaults
syn keyword ProntoBoolean		true false
syn keyword ProntoDecType		contained type is
syn keyword ProntoDecType		pic picture like unique
syn keyword ProntoException		error no-error ignore-error
" Functions with the hyphens - JRH
syn keyword ProntoFunction		aand abs anot aor cos fraction get-system-metrics integer lshift max-value min-value power-of random rshift
syn keyword ProntoFunction		sign-of sin smallest-increment square-root str sum sum-array tan val add-month date-from-date-time date-time
syn keyword ProntoFunction		date-to-julian date2julian day day-name days-in-month dow hour julian julian-to-date julian2date leap-year
syn keyword ProntoFunction		minute month month-name second time-from-date-time year active-pid batched can-dde cd cd-without-close-all
syn keyword ProntoFunction		check-auth colour-picker create-db-schema create-db-user currency-sign database-type db-command db-table-name
syn keyword ProntoFunction		dde-error-status dde-execute dde-initiate dde-poke dde-request dde-terminate delete-registry-value diary
syn keyword ProntoFunction		dir enable-system-menu enable-status-bar enable-tool-bar error-description escape exit-status file-exists
syn keyword ProntoFunction		file-name file-ownder file-status file-version finish-dir-search get-env get-field-value get-field-value-numeric
syn keyword ProntoFunction		get-param get-registry-enum-key get-registry-enum-value get-registry-value gid gmt grant-db-schema if-then-else
syn keyword ProntoFunction		is-a-dir local-cd local-cd-without-close-all local-dir local-no local-yes login-id mail-add-line mail-attach
syn keyword ProntoFunction		mail-cancel mail-from-name mail-reply-to mail-start mail-send max-screen-columns max-screen-rows mkdir mode-name
syn keyword ProntoFunction		modification-time mouse-column mouse-row next-dir-entry node-name ole-addref old-advise-event ole-bulk-put
syn keyword ProntoFunction		ole-call-interactive-method ole-call-method ole-create-control ole-create-instance ole-enum-next ole-enum-reset
syn keyword ProntoFunction		ole-error-description ole-get-active-object ole-get-dispatch-id ole-get-event ole-get-property ole-put-property
syn keyword ProntoFunction		ole-put-property-byref ole-query-interface ole-release ole-status ole-unadvise-event ole-unadvise-all
syn keyword ProntoFunction		operating-system page-no param-cnt pid pronto-release prouser-flags refresh-quick-links report-is-xml
syn keyword ProntoFunction		review-row revoke-db-schema rgb-to-colour rmdir screen-mode search search-mode security-level set-data-area-name
syn keyword ProntoFunction		set-background-image set-environment set-function-code set-help-context set-module-code set-registry-value
syn keyword ProntoFunction		sleep spool-file-name start-dir-search systime time-elapsed time-zone tod today transaction-active tty uid
syn keyword ProntoFunction		user-group valid-activation-key wait-for-input ascii-char chr ascii-num ascii asc concat find-parameter
syn keyword ProntoFunction		format-picture fstr idx left-justify line-no lowercase num occurrence param-text pattern reserved right-justify
syn keyword ProntoFunction		size-of str-concat str-len sub-string valid-number zstr wizard-button-enabled wizard-button-title
syn keyword ProntoFunction		wizard-cancelled wizard-disable-buttons wizard-from-sheet wizard-get-selected-value wizard-go-to-sheet
syn keyword ProntoFunction		wizard-has-list-changed wizard-has-list-changed-order wizard-heading wizard-insert-selection-list
syn keyword ProntoFunction		wizard-num-selected wizard-selection-list wizard-select-value wizard-show-progress wizard-start wizard-sub-heading
syn keyword ProntoFunction		wizard-reset-selection-list wizard-warning avg min max count message-status
" Functions without the hyphens - JRH
syn keyword ProntoFunction		getsystemmetrics maxvalue minvalue powerof
syn keyword ProntoFunction		signof smallestincrement squareroot sumarray addmonth datefromdatetime datetime
syn keyword ProntoFunction		datetojulian dayname daysinmonth juliantodate leapyear
syn keyword ProntoFunction		monthname timefromdatetime activepid candde cdwithoutcloseall
syn keyword ProntoFunction		checkauth colourpicker createdbschema createdbuser currencysign databasetype dbcommand dbtablename
syn keyword ProntoFunction		ddeerrorstatus ddeexecute ddeinitiate ddepoke dderequest ddeterminate deleteregistryvalue
syn keyword ProntoFunction		enablesystemmenu enablestatusbar enabletoolbar errordescription exitstatus fileexists
syn keyword ProntoFunction		filename fileownder filestatus fileversion finishdirsearch getenv getfieldvalue getfieldvaluenumeric
syn keyword ProntoFunction		getparam getregistryenum-key getregistryenumvalue getregistryvalue grantdbschema ifthenelse
syn keyword ProntoFunction		isadir localcd localcdwithoutcloseall localdir localno localyes loginid mailaddline mailattach
syn keyword ProntoFunction		mailcancel mailfromname mailreplyto mailstart mailsend maxscreencolumns maxscreenrows modename
syn keyword ProntoFunction		modificationtime mousecolumn mouserow nextdirentry nodename oleaddref oldadviseevent olebulkput
syn keyword ProntoFunction		olecallinteractivemethod olecallmethod olecreatecontrol olecreateinstance oleenumnext oleenumreset
syn keyword ProntoFunction		oleerrordescription olegetactiveobject olegetdispatchid olegetevent olegetproperty oleputproperty
syn keyword ProntoFunction		oleputpropertybyref olequeryinterface olerelease olestatus oleunadviseevent oleunadviseall
syn keyword ProntoFunction		operatingsystem pageno paramcnt prontorelease prouserflags refreshquicklinks reportisxml
syn keyword ProntoFunction		reviewrow revokedbschema rgbtocolour screenmode searchmode securitylevel setdataareaname
syn keyword ProntoFunction		setbackgroundimage setenvironment setfunctioncode sethelpcontext setmodulecode setregistryvalue
syn keyword ProntoFunction		spoolfilename startdirsearch timeelapsed timezone transactionactive
syn keyword ProntoFunction		user-group valid-activation-key wait-for-input ascii-char chr ascii-num ascii asc concat find-parameter
syn keyword ProntoFunction		formatpicture leftjustify lineno paramtext rightjustify
syn keyword ProntoFunction		sizeof strconcat strlen substring validnumber wizardbuttonenabled wizardbuttontitle
syn keyword ProntoFunction		wizardcancelled wizarddisablebuttons wizardfromsheet wizardgetselectedvalue wizardgotosheet
syn keyword ProntoFunction		wizardhaslistchanged wizardhaslistchangedorder wizardheading wizardinsertselectionlist
syn keyword ProntoFunction		wizardnumselected wizardselectionlist wizardselectvalue wizardshowprogress wizardstart wizardsubheading
syn keyword ProntoFunction		wizardresetselectionlist wizardwarning messagestatus
" Following is only the minus operator. The rest are string matches further down.
syn keyword ProntoOperator		-
syn keyword ProntoScreenGroup	beforewizardsheet before-wizard-sheet before detail after

syn keyword	ProntoTodo		contained TODO FIXME XXX

" Grouped keyword matches - JRH
" syn match ProntoStatement		"\(key is \|key\|down to\|to\)"
syn match ProntoDeclare			"\(file is\|separator is\)"
syn match ProntoRecord			"\(record is\)"
syn case match
syn match ProntoMacro			"[0-9A-Z_]*"	" This is to stop highlighting of macros with keywords in them
syn case ignore
syn match ProntoOperator		"=\|!=\|[<>+^/%]\|\*"
syn match ProntoConstant		contained "\*"  " For 'all' array elements
syn match ProntoSpecialChar		"[@\(\)\[\]{},]"
syn match ProntoSpecialChar		"\[\*\]" contains=ProntoConstant  " Continuation of for 'all' array elements

" Distinguish between before/detail/after at start of line and other uses
" syn match	ProntoScreenGroup	display "^\(beforewizardsheet\|before-wizard-sheet\|before\|detail\|after\)"
" syn match	ProntoGroup1	display "^\s\s*\(beforewizardsheet\|before-wizard-sheet\|before\|detail\|after\)"

" Distinguish between string in a type def or as a statement - this is nasty! - JRH
syn match	ProntoType	display "type\s\s*\(is\s\s*\)*\(string\|numeric\|boolean\|date\|time\|date-time\|color\|colour\|ole-interface\|floating\|decimal\|alpha\|zoned\|memory\|isam\|external\|prn\|sequential\|indexed\|c-isam-dat\|db-sequential\|fixed-length-text\|text\)" contains=ALL,@ProntoDecType,@ProntoType,@ProntoStorageClass

" ProntoCommentGroup allows adding matches for special things in comments
syn cluster	ProntoCommentGroup	contains=ProntoTodo

" Strings
syn region	ProntoString	start=+L\="+ end=+"+
syn region	ProntoString1	start=+L\='+ end=+'+
syn region	ProntoMacroString contained start=+L\="+ end=+"+
syn region	ProntoMacroString1 contained start=+L\='+ end=+'+

"when wanted, highlight trailing white space
if exists("c_space_errors")
  if !exists("c_no_trail_space_error")
    syn match	ProntoSpaceError	display excludenl "\s\+$"
  endif
  if !exists("c_no_tab_space_error")
    syn match	ProntoSpaceError	display " \+\t"me=e-1
  endif
endif

"catch errors caused by wrong parenthesis and brackets
"syn cluster	ProntoParenGroup	contains=ProntoParenError,ProntoIncluded,ProntoCommentSkip,ProntoCommentString,ProntoComment2String,@ProntoCommentGroup,ProntoCommentStartError,ProntoCommentSkip,ProntoNumber,ProntoFloat,ProntoNumbersCom

" Don't want parenethesis highlighting or errors
"if exists("c_no_bracket_error")
"  syn region	ProntoParen		transparent start='(' end=')' contains=ALLBUT,@ProntoParenGroup
"  syn match	ProntoParenError	display ")"
"  syn match	ProntoErrInParen	display contained "[{}]"
"else
"  syn region	ProntoParen		transparent start='(' end=')' contains=ALLBUT,@ProntoParenGroup,ProntoErrInBracket
"  syn match	ProntoParenError	display "[\])]"
"  syn match	ProntoErrInParen	display contained "[\]{}]"
"  syn region	ProntoBracket	transparent start='\[' end=']' contains=ALLBUT,@ProntoParenGroup,ProntoErrInParen
"  syn match	ProntoErrInBracket	display contained "[);{}]"
"endif

"integer number, or floating point number without a dot and with "f".
syn case ignore
syn match	ProntoNumbers	display transparent "\<-\?\d\|\.\d" contains=ProntoNumber,ProntoFloat
" Same, but without octal error (for comments)
syn match	ProntoNumbersCom	display contained transparent "\<-\?\d\|\.\d" contains=ProntoNumber,ProntoFloat
syn match	ProntoNumber		display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
syn match	ProntoFloat		display contained "\d\+f"
"floating point number, with dot, optional exponent
syn match	ProntoFloat		display contained "\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\="
"floating point number, starting with a dot, optional exponent
syn match	ProntoFloat		display contained "\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syn match	ProntoFloat		display contained "\d\+e[-+]\=\d\+[fl]\=\>"
syn case match

if exists("c_comment_strings")
  " A comment can contain ProntoString and ProntoNumber.
  " But a "*/" inside a ProntoString in a ProntoComment DOES end the comment!  So we
  " need to use a special type of ProntoString: ProntoCommentString, which also ends on
  " "*/", and sees a "*" at the start of the line as comment again.
  " Unfortunately this doesn't very well work for // type of comments :-(
  syntax match	ProntoCommentSkip	contained "^\s*\*\($\|\s\+\)"
  syntax region ProntoCommentString	contained start=+L\="+ skip=+\\\\\|\\"+ end=+"+ end=+\*/+me=s-1 contains=ProntoCommentSkip
  syntax region ProntoComment2String	contained start=+L\="+ skip=+\\\\\|\\"+ end=+"+ end="$"
  syntax region  ProntoCommentL	start="//" skip="\\$" end="$" keepend contains=@ProntoCommentGroup,ProntoComment2String,ProntoNumbersCom,ProntoSpaceError
  syntax region ProntoComment	matchgroup=ProntoCommentStart start="/\*" matchgroup=NONE end="\*/" contains=@ProntoCommentGroup,ProntoCommentStartError,ProntoCommentString,ProntoNumbersCom,ProntoSpaceError
else
  syn region	ProntoCommentL	start="//" skip="\\$" end="$" keepend contains=@ProntoCommentGroup,ProntoSpaceError
  syn region	ProntoComment	matchgroup=ProntoCommentStart start="/\*" matchgroup=NONE end="\*/" contains=@ProntoCommentGroup,ProntoCommentStartError,ProntoSpaceError
endif
" keep a // comment separately, it terminates a preproc. conditional
syntax match	ProntoCommentError	display "\*/"
syntax match	ProntoCommentStartError display "/\*"me=e-1 contained

syn region	ProntoPreCondit	start="^\s*#\s*\(if\|ifdef\|ifndef\|elif\)\>" skip="\\$" end="$" end="//"me=s-1 contains=ProntoComment,ParenError,ProntoNumbers,ProntoCommentError,ProntoSpaceError
syn match	ProntoPreCondit	display "^\s*#\s*\(else\|endif\)\>"
if !exists("pronto_no_if0")
  syn region	PreProcOut	start="^\s*#\s*if\s\+0\+\>" end=".\|$" contains=PreProcOut2
  syn region	PreProcOut2	contained start="0" end="^\s*#\s*\(endif\>\|else\>\|elif\>\)" contains=ProntoSpaceError,PreProcSkip
  syn region	PreProcSkip	contained start="^\s*#\s*\(if\>\|ifdef\>\|ifndef\>\)" skip="\\$" end="^\s*#\s*endif\>" contains=ProntoSpaceError,PreProcSkip
 endif
syn region	ProntoIncluded	display contained start="["']" skip=+\\\\\|\\"'+ end="["']"
syn match	ProntoIncluded	display contained "<[^>]*>"
syn match	ProntoInclude	display "^\s*#\s*include\>\s*["'<]" contains=ProntoIncluded
"syn match cLineSkip	"\\$"
syn cluster	ProntoPreProcGroup	contains=ProntoPreCondit,ProntoIncluded,ProntoInclude,ProntoDefine,ProntoErrInParen,ProntoErrInBracket,PreProcOut,PreProcOut2,PreProcSkip,ProntoNumber,ProntoFloat,ProntoNumbersCom,ProntoString,ProntoCommentSkip,ProntoCommentString,ProntoComment2String,@ProntoCommentGroup,ProntoCommentStartError,ProntoMulti,ProntoSpecialChar
syn region	ProntoDefine		start="^\s*#\s*\(define\|undef\)\>" skip="\\$" end="$" end="//"me=s-1 contains=ALLBUT,@ProntoPreProcGroup,@ProntoMacroString,@ProntoMacroString1,ProntoMacro
syn region	ProntoPreProc	start="^\s*#\s*\(pragma\>\|line\>\|warning\>\|warn\>\|error\>\)" skip="\\$" end="$" keepend contains=ALLBUT,@ProntoPreProcGroup

" Highlight User Labels
syn cluster	ProntoMultiGroup	contains=ProntoIncluded,ProntoCommentSkip,ProntoCommentString,ProntoComment2String,@ProntoCommentGroup,ProntoCommentStartError,ProntoNumber,ProntoFloat,ProntoNumbersCom,PreProcOut,PreProcOut2,PreProcSkip
syn region	ProntoMulti		transparent start='?' skip='::' end=':' contains=ALLBUT,@ProntoMultiGroup

if exists("c_minlines")
  let b:c_minlines = c_minlines
else
  if !exists("pronto_no_if0")
    let b:c_minlines = 50	" #if 0 constructs can be long
  else
    let b:c_minlines = 15	" mostly for () constructs
  endif
endif
exec "syn sync ccomment ProntoComment minlines=" . b:c_minlines

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_c_syn_inits")
  if version < 508
    let did_c_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink ProntoConditional		Conditional " Group - JRH
  HiLink ProntoRepeat			Repeat " Group - JRH
  HiLink ProntoGroup1			Keyword " Group - JRH
  HiLink ProntoGroup			Keyword " Group - JRH
  HiLink ProntoRecord			Keyword " Group - JRH
  HiLink ProntoInput			Statement " Input - JRH
  HiLink ProntoScreenIO			Statement
  HiLink ProntoIO				Statement
  HiLink ProntoReport			Statement
  HiLink ProntoStatement		Statement
  HiLink ProntoCommentL			ProntoComment
  HiLink ProntoCommentStart		ProntoComment
  HiLink PreProcOut				ProntoComment
  HiLink PreProcOut2			ProntoComment
  HiLink PreProcSkip			ProntoComment
  HiLink ProntoNumber			Number
  HiLink ProntoFloat			Float
  HiLink ProntoParenError		ProntoError
  HiLink ProntoErrInParen		ProntoError
  HiLink ProntoErrInBracket		ProntoError
  HiLink ProntoCommentError		ProntoError
  HiLink ProntoCommentStartError	ProntoError
  HiLink ProntoSpaceError		ProntoError
  HiLink ProntoException		Exception	" JRH
  HiLink ProntoInclude			Include
  HiLink ProntoPreProc			PreProc
  HiLink ProntoDefine			Macro
  HiLink ProntoIncluded			ProntoString
  HiLink ProntoError			Error
  HiLink ProntoPreCondit		PreCondit
  HiLink ProntoCommentString	ProntoString
  HiLink ProntoComment2String	ProntoString
  HiLink ProntoCommentSkip		ProntoComment
  HiLink ProntoMacroString1		ProntoString
  HiLink ProntoMacroString		ProntoString
  HiLink ProntoString1			ProntoString
  HiLink ProntoString			String
  HiLink ProntoComment			Comment
  HiLink ProntoTodo				Todo
  HiLink ProntoScreenGroup		ProntoDeclare
  HiLink ProntoDeclare			Statement " Declare - JRH
  HiLink ProntoType				Type	" JRH
  HiLink ProntoConstant			Constant " JRH
  HiLink ProntoDecType			Typedef " JRH
  HiLink ProntoOperator			Operator " JRH
  HiLink ProntoStorageClass		StorageClass " JRH
  HiLink ProntoBoolean			Boolean " JRH
  HiLink ProntoSpecialChar		SpecialChar " JRH
  HiLink ProntoFunction			Function	" JRH
  HiLink ProntoLabel			Label	" JRH
  HiLink ProntoScreenMode		Keyword " JRH
  HiLink ProntoColour			Constant " JRH
  HiLink ProntoErrorMacros		Constant " JRH

  delcommand HiLink
endif

let b:current_syntax = "spl"

" Default to 4 character tabs
" set ts=4
