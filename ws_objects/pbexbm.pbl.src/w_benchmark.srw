$PBExportHeader$w_benchmark.srw
$PBExportComments$Main Performance Benchmarks Window
forward
global type w_benchmark from w_center
end type
type cb_tak from commandbutton within w_benchmark
end type
type st_tak from statictext within w_benchmark
end type
type em_tak from editmask within w_benchmark
end type
type uo_tak from u_cst_timer within w_benchmark
end type
type cb_event from commandbutton within w_benchmark
end type
type st_event from statictext within w_benchmark
end type
type em_event from editmask within w_benchmark
end type
type uo_event from u_cst_timer within w_benchmark
end type
type uo_ofunction from u_cst_timer within w_benchmark
end type
type em_ofunction from editmask within w_benchmark
end type
type st_ofunction from statictext within w_benchmark
end type
type cb_ofunction from commandbutton within w_benchmark
end type
type uo_window from u_cst_timer within w_benchmark
end type
type em_window from editmask within w_benchmark
end type
type st_window from statictext within w_benchmark
end type
type cb_window from commandbutton within w_benchmark
end type
type cb_save from commandbutton within w_benchmark
end type
type cb_machine from commandbutton within w_benchmark
end type
type cb_all from commandbutton within w_benchmark
end type
type em_const from editmask within w_benchmark
end type
type st_const from statictext within w_benchmark
end type
type uo_const from u_cst_timer within w_benchmark
end type
type cb_const from commandbutton within w_benchmark
end type
type cb_var from commandbutton within w_benchmark
end type
type uo_var from u_cst_timer within w_benchmark
end type
type st_var from statictext within w_benchmark
end type
type em_var from editmask within w_benchmark
end type
type st_string from statictext within w_benchmark
end type
type cb_string from commandbutton within w_benchmark
end type
type uo_string from u_cst_timer within w_benchmark
end type
type em_string from editmask within w_benchmark
end type
type em_get from editmask within w_benchmark
end type
type em_function from editmask within w_benchmark
end type
type em_sort from editmask within w_benchmark
end type
type em_loop from editmask within w_benchmark
end type
type st_3 from statictext within w_benchmark
end type
type cb_cancel from commandbutton within w_benchmark
end type
type cb_function from commandbutton within w_benchmark
end type
type st_function from statictext within w_benchmark
end type
type uo_function from u_cst_timer within w_benchmark
end type
type cb_report from commandbutton within w_benchmark
end type
type cb_get from commandbutton within w_benchmark
end type
type st_get from statictext within w_benchmark
end type
type uo_get from u_cst_timer within w_benchmark
end type
type uo_sort from u_cst_timer within w_benchmark
end type
type cb_sort from commandbutton within w_benchmark
end type
type st_2 from statictext within w_benchmark
end type
type st_1 from statictext within w_benchmark
end type
type uo_loop from u_cst_timer within w_benchmark
end type
type cb_loop from commandbutton within w_benchmark
end type
type mle_wait from multilineedit within w_benchmark
end type
type dw_1 from datawindow within w_benchmark
end type
type ostr_dw_items from structure within w_benchmark
end type
type ostr_dw_orders from structure within w_benchmark
end type
end forward

type ostr_dw_items from structure
	integer		i_id
	integer		i_lineid
	integer		i_prodid
	integer		i_quantity
	date		d_shipdate
end type

type ostr_dw_orders from structure
	integer		i_id
	integer		i_custid
	date		d_orderdate
	string		s_fincodeid
	string		s_region
	integer		i_salesrep
end type

global type w_benchmark from w_center
integer y = 4
integer width = 2121
integer height = 1368
string title = "PowerBuilder Benchmarks"
long backcolor = 74481808
toolbaralignment toolbaralignment = alignatleft!
event ue_postopen ( )
event ue_empty ( )
cb_tak cb_tak
st_tak st_tak
em_tak em_tak
uo_tak uo_tak
cb_event cb_event
st_event st_event
em_event em_event
uo_event uo_event
uo_ofunction uo_ofunction
em_ofunction em_ofunction
st_ofunction st_ofunction
cb_ofunction cb_ofunction
uo_window uo_window
em_window em_window
st_window st_window
cb_window cb_window
cb_save cb_save
cb_machine cb_machine
cb_all cb_all
em_const em_const
st_const st_const
uo_const uo_const
cb_const cb_const
cb_var cb_var
uo_var uo_var
st_var st_var
em_var em_var
st_string st_string
cb_string cb_string
uo_string uo_string
em_string em_string
em_get em_get
em_function em_function
em_sort em_sort
em_loop em_loop
st_3 st_3
cb_cancel cb_cancel
cb_function cb_function
st_function st_function
uo_function uo_function
cb_report cb_report
cb_get cb_get
st_get st_get
uo_get uo_get
uo_sort uo_sort
cb_sort cb_sort
st_2 st_2
st_1 st_1
uo_loop uo_loop
cb_loop cb_loop
mle_wait mle_wait
dw_1 dw_1
end type
global w_benchmark w_benchmark

type variables
DataStore	ids_1, ids_2
Boolean	ib_Saved = True
end variables

forward prototypes
public subroutine of_empty ()
end prototypes

event ue_postopen;Integer	li_Rows

SetPointer(HourGlass!)

mle_wait.Visible = True


ids_1.SetTransObject(sqlca)
li_Rows = ids_1.Retrieve()

mle_wait.Visible = False

end event

event ue_empty;Integer	li_Dummy

li_Dummy = 1
end event

public subroutine of_empty ();Integer	li_Dummy

li_Dummy = 1
end subroutine

on w_benchmark.create
int iCurrent
call super::create
this.cb_tak=create cb_tak
this.st_tak=create st_tak
this.em_tak=create em_tak
this.uo_tak=create uo_tak
this.cb_event=create cb_event
this.st_event=create st_event
this.em_event=create em_event
this.uo_event=create uo_event
this.uo_ofunction=create uo_ofunction
this.em_ofunction=create em_ofunction
this.st_ofunction=create st_ofunction
this.cb_ofunction=create cb_ofunction
this.uo_window=create uo_window
this.em_window=create em_window
this.st_window=create st_window
this.cb_window=create cb_window
this.cb_save=create cb_save
this.cb_machine=create cb_machine
this.cb_all=create cb_all
this.em_const=create em_const
this.st_const=create st_const
this.uo_const=create uo_const
this.cb_const=create cb_const
this.cb_var=create cb_var
this.uo_var=create uo_var
this.st_var=create st_var
this.em_var=create em_var
this.st_string=create st_string
this.cb_string=create cb_string
this.uo_string=create uo_string
this.em_string=create em_string
this.em_get=create em_get
this.em_function=create em_function
this.em_sort=create em_sort
this.em_loop=create em_loop
this.st_3=create st_3
this.cb_cancel=create cb_cancel
this.cb_function=create cb_function
this.st_function=create st_function
this.uo_function=create uo_function
this.cb_report=create cb_report
this.cb_get=create cb_get
this.st_get=create st_get
this.uo_get=create uo_get
this.uo_sort=create uo_sort
this.cb_sort=create cb_sort
this.st_2=create st_2
this.st_1=create st_1
this.uo_loop=create uo_loop
this.cb_loop=create cb_loop
this.mle_wait=create mle_wait
this.dw_1=create dw_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_tak
this.Control[iCurrent+2]=this.st_tak
this.Control[iCurrent+3]=this.em_tak
this.Control[iCurrent+4]=this.uo_tak
this.Control[iCurrent+5]=this.cb_event
this.Control[iCurrent+6]=this.st_event
this.Control[iCurrent+7]=this.em_event
this.Control[iCurrent+8]=this.uo_event
this.Control[iCurrent+9]=this.uo_ofunction
this.Control[iCurrent+10]=this.em_ofunction
this.Control[iCurrent+11]=this.st_ofunction
this.Control[iCurrent+12]=this.cb_ofunction
this.Control[iCurrent+13]=this.uo_window
this.Control[iCurrent+14]=this.em_window
this.Control[iCurrent+15]=this.st_window
this.Control[iCurrent+16]=this.cb_window
this.Control[iCurrent+17]=this.cb_save
this.Control[iCurrent+18]=this.cb_machine
this.Control[iCurrent+19]=this.cb_all
this.Control[iCurrent+20]=this.em_const
this.Control[iCurrent+21]=this.st_const
this.Control[iCurrent+22]=this.uo_const
this.Control[iCurrent+23]=this.cb_const
this.Control[iCurrent+24]=this.cb_var
this.Control[iCurrent+25]=this.uo_var
this.Control[iCurrent+26]=this.st_var
this.Control[iCurrent+27]=this.em_var
this.Control[iCurrent+28]=this.st_string
this.Control[iCurrent+29]=this.cb_string
this.Control[iCurrent+30]=this.uo_string
this.Control[iCurrent+31]=this.em_string
this.Control[iCurrent+32]=this.em_get
this.Control[iCurrent+33]=this.em_function
this.Control[iCurrent+34]=this.em_sort
this.Control[iCurrent+35]=this.em_loop
this.Control[iCurrent+36]=this.st_3
this.Control[iCurrent+37]=this.cb_cancel
this.Control[iCurrent+38]=this.cb_function
this.Control[iCurrent+39]=this.st_function
this.Control[iCurrent+40]=this.uo_function
this.Control[iCurrent+41]=this.cb_report
this.Control[iCurrent+42]=this.cb_get
this.Control[iCurrent+43]=this.st_get
this.Control[iCurrent+44]=this.uo_get
this.Control[iCurrent+45]=this.uo_sort
this.Control[iCurrent+46]=this.cb_sort
this.Control[iCurrent+47]=this.st_2
this.Control[iCurrent+48]=this.st_1
this.Control[iCurrent+49]=this.uo_loop
this.Control[iCurrent+50]=this.cb_loop
this.Control[iCurrent+51]=this.mle_wait
this.Control[iCurrent+52]=this.dw_1
end on

on w_benchmark.destroy
call super::destroy
destroy(this.cb_tak)
destroy(this.st_tak)
destroy(this.em_tak)
destroy(this.uo_tak)
destroy(this.cb_event)
destroy(this.st_event)
destroy(this.em_event)
destroy(this.uo_event)
destroy(this.uo_ofunction)
destroy(this.em_ofunction)
destroy(this.st_ofunction)
destroy(this.cb_ofunction)
destroy(this.uo_window)
destroy(this.em_window)
destroy(this.st_window)
destroy(this.cb_window)
destroy(this.cb_save)
destroy(this.cb_machine)
destroy(this.cb_all)
destroy(this.em_const)
destroy(this.st_const)
destroy(this.uo_const)
destroy(this.cb_const)
destroy(this.cb_var)
destroy(this.uo_var)
destroy(this.st_var)
destroy(this.em_var)
destroy(this.st_string)
destroy(this.cb_string)
destroy(this.uo_string)
destroy(this.em_string)
destroy(this.em_get)
destroy(this.em_function)
destroy(this.em_sort)
destroy(this.em_loop)
destroy(this.st_3)
destroy(this.cb_cancel)
destroy(this.cb_function)
destroy(this.st_function)
destroy(this.uo_function)
destroy(this.cb_report)
destroy(this.cb_get)
destroy(this.st_get)
destroy(this.uo_get)
destroy(this.uo_sort)
destroy(this.cb_sort)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.uo_loop)
destroy(this.cb_loop)
destroy(this.mle_wait)
destroy(this.dw_1)
end on

event open;call super::open;ids_1 = Create DataStore
ids_1.DataObject = "d_sales_orders"
ids_2 = Create DataStore
ids_2.DataObject = "d_sales_orders"

If ge_Environment.MachineCode Then
	This.Title = "PowerBuilder " + sVersion + " Benchmarks - Running Machine Code"
Else
	#if defined PBDOTNET then
	This.Title = "PowerBuilder " + sVersion + " Benchmarks - Running .NET Windows Forms"
#else
	This.Title = "PowerBuilder " + sVersion + " Benchmarks - Running P-Code"
#end if

	
End If

Post Event ue_postopen()


end event

event close;Destroy ids_1
Destroy ids_2
end event

event closequery;If Not ib_Saved Then
	Choose Case MessageBox("PowerBuilder Benchmarks", "The test results have not been saved.  " + &
											"Do you wish to save them before you exit?", Question!, YesNoCancel!, 1)
		Case 1
			cb_save.Trigger Event clicked()
			Return 0
		Case 2
			Return 0
		Case 3
			Return 1
	End Choose
End If
end event

type cb_tak from commandbutton within w_benchmark
event clicked pbm_bnclicked
integer x = 32
integer y = 216
integer width = 512
integer height = 84
integer taborder = 130
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "TAK Benchmark"
end type

event clicked;// TAK benchamark

Long		ll_Limit, ll_Cnt
Integer	li_Ret

If Not IsNumber(em_tak.Text) Then
	MessageBox("Error", "You must enter a limit", Exclamation!)
	Return
End if

SetPointer(HourGlass!)
ib_Saved = False

ll_Limit = Long(em_tak.Text)

uo_tak.of_start_timer()

//Perform find
For ll_Cnt = 1 To ll_Limit
	li_Ret = f_tak(18, 12, 6)
Next

uo_tak.of_end_timer()
end event

type st_tak from statictext within w_benchmark
integer x = 562
integer y = 228
integer width = 229
integer height = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
long backcolor = 77643992
boolean enabled = false
string text = "Iterations:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_tak from editmask within w_benchmark
integer x = 795
integer y = 216
integer width = 279
integer height = 84
integer taborder = 20
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
string text = "2"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "###,###,###"
string displaydata = ""
end type

type uo_tak from u_cst_timer within w_benchmark
integer x = 1111
integer y = 224
integer width = 384
integer height = 76
long backcolor = 74481808
end type

on uo_tak.destroy
call u_cst_timer::destroy
end on

type cb_event from commandbutton within w_benchmark
event clicked pbm_bnclicked
integer x = 32
integer y = 628
integer width = 512
integer height = 84
integer taborder = 170
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Event Overhead"
end type

event clicked;// Function Overhead Test
// Call an empty function to time the overhead associated with all functions

Long	ll_Cnt, ll_Times

If Not IsNumber(em_event.Text) Then
	MessageBox("Error", "You must enter number of times", Exclamation!)
	Return
End if

SetPointer(HourGlass!)
ib_Saved = False

ll_Times = Long(em_event.Text)

uo_event.of_start_timer()

For ll_Cnt = 1 To ll_Times
	Parent.Trigger Event ue_empty()
Next

uo_event.of_end_timer()
end event

type st_event from statictext within w_benchmark
integer x = 562
integer y = 640
integer width = 229
integer height = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
long backcolor = 77643992
boolean enabled = false
string text = "Iterations:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_event from editmask within w_benchmark
integer x = 795
integer y = 628
integer width = 279
integer height = 84
integer taborder = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
string text = "50000"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "###,###,###"
string displaydata = ""
end type

type uo_event from u_cst_timer within w_benchmark
integer x = 1111
integer y = 632
integer width = 384
integer height = 76
end type

on uo_event.destroy
call u_cst_timer::destroy
end on

type uo_ofunction from u_cst_timer within w_benchmark
integer x = 1111
integer y = 532
integer width = 384
integer height = 76
end type

on uo_ofunction.destroy
call u_cst_timer::destroy
end on

type em_ofunction from editmask within w_benchmark
integer x = 795
integer y = 524
integer width = 279
integer height = 84
integer taborder = 50
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
string text = "50000"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "###,###,###"
string displaydata = ""
end type

type st_ofunction from statictext within w_benchmark
integer x = 562
integer y = 536
integer width = 229
integer height = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
long backcolor = 77643992
boolean enabled = false
string text = "Iterations:"
alignment alignment = right!
boolean focusrectangle = false
end type

type cb_ofunction from commandbutton within w_benchmark
event clicked pbm_bnclicked
integer x = 32
integer y = 524
integer width = 512
integer height = 84
integer taborder = 160
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Object Function"
end type

event clicked;// Function Overhead Test
// Call an empty function to time the overhead associated with all functions

Long	ll_Cnt, ll_Times

If Not IsNumber(em_ofunction.Text) Then
	MessageBox("Error", "You must enter number of times", Exclamation!)
	Return
End if

SetPointer(HourGlass!)
ib_Saved = False

ll_Times = Long(em_ofunction.Text)

uo_ofunction.of_start_timer()

For ll_Cnt = 1 To ll_Times
	of_empty()
Next

uo_ofunction.of_end_timer()
end event

type uo_window from u_cst_timer within w_benchmark
integer x = 1111
integer y = 736
integer width = 384
integer height = 76
end type

on uo_window.destroy
call u_cst_timer::destroy
end on

type em_window from editmask within w_benchmark
integer x = 795
integer y = 728
integer width = 279
integer height = 84
integer taborder = 70
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
string text = "50"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "###,###,###"
string displaydata = ""
end type

type st_window from statictext within w_benchmark
integer x = 562
integer y = 740
integer width = 229
integer height = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
long backcolor = 77643992
boolean enabled = false
string text = "Iterations:"
alignment alignment = right!
boolean focusrectangle = false
end type

type cb_window from commandbutton within w_benchmark
event clicked pbm_bnclicked
integer x = 32
integer y = 728
integer width = 512
integer height = 84
integer taborder = 180
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Window Instantiation"
end type

event clicked;// Window Instatiation Test
// Open a window with no controls

Long	ll_Cnt, ll_Times

If Not IsNumber(em_window.Text) Then
	MessageBox("Error", "You must enter number of times", Exclamation!)
	Return
End if

SetPointer(HourGlass!)
ib_Saved = False

ll_Times = Long(em_window.Text)

uo_window.of_start_timer()

For ll_Cnt = 1 To ll_Times
	Open(w_empty)
	Close(w_empty)
Next

uo_window.of_end_timer()
end event

type cb_save from commandbutton within w_benchmark
integer x = 1605
integer y = 324
integer width = 425
integer height = 84
integer taborder = 250
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Save Results"
end type

event clicked;String	ls_Section

SetPointer(HourGlass!)

If ge_Environment.MachineCode Then
	ls_Section = "Benchmark Machine Code Tests"
Else
	ls_Section = "Benchmark P-Code Tests"
End if

f_set_profile(ls_Section, "loop#", em_loop.Text)
f_set_profile(ls_Section, "loopT", uo_loop.st_ms.Text)
f_set_profile(ls_Section, "tak#", em_tak.Text)
f_set_profile(ls_Section, "takT", uo_tak.st_ms.Text)
f_set_profile(ls_Section, "sort#", em_sort.Text)
f_set_profile(ls_Section, "sortT", uo_sort.st_ms.Text)
f_set_profile(ls_Section, "function#", em_function.Text)
f_set_profile(ls_Section, "functionT", uo_function.st_ms.Text)
f_set_profile(ls_Section, "ofunction#", em_ofunction.Text)
f_set_profile(ls_Section, "ofunctionT", uo_ofunction.st_ms.Text)
f_set_profile(ls_Section, "event#", em_event.Text)
f_set_profile(ls_Section, "eventT", uo_event.st_ms.Text)
f_set_profile(ls_Section, "window#", em_window.Text)
f_set_profile(ls_Section, "windowT", uo_window.st_ms.Text)
f_set_profile(ls_Section, "string#", em_string.Text)
f_set_profile(ls_Section, "stringT", uo_string.st_ms.Text)
f_set_profile(ls_Section, "var#", em_var.Text)
f_set_profile(ls_Section, "varT", uo_var.st_ms.Text)
f_set_profile(ls_Section, "const#", em_const.Text)
f_set_profile(ls_Section, "constT", uo_const.st_ms.Text)
f_set_profile(ls_Section, "get#", em_get.Text)
f_set_profile(ls_Section, "getT", uo_get.st_ms.Text)

ib_Saved = True
end event

type cb_machine from commandbutton within w_benchmark
integer x = 1605
integer y = 228
integer width = 425
integer height = 84
integer taborder = 240
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Set Machine ID..."
end type

event clicked;Open(w_machine)
end event

type cb_all from commandbutton within w_benchmark
integer x = 1605
integer y = 128
integer width = 425
integer height = 84
integer taborder = 230
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Run all tests"
boolean default = true
end type

event clicked;cb_loop.Trigger Event clicked()
cb_tak.Trigger Event clicked()
cb_sort.Trigger Event clicked()
cb_function.Trigger Event clicked()
cb_ofunction.Trigger Event clicked()
cb_event.Trigger Event clicked()
cb_window.Trigger Event clicked()
cb_string.Trigger Event clicked()
cb_var.Trigger Event clicked()
cb_const.Trigger Event clicked()
cb_get.Trigger Event clicked()
end event

type em_const from editmask within w_benchmark
integer x = 795
integer y = 1036
integer width = 279
integer height = 84
integer taborder = 100
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
string text = "500000"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "###,###,###"
string displaydata = ""
end type

type st_const from statictext within w_benchmark
integer x = 562
integer y = 1052
integer width = 229
integer height = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
long backcolor = 77643992
boolean enabled = false
string text = "Iterations:"
alignment alignment = right!
boolean focusrectangle = false
end type

type uo_const from u_cst_timer within w_benchmark
integer x = 1111
integer y = 1040
integer width = 384
integer height = 76
end type

on uo_const.destroy
call u_cst_timer::destroy
end on

type cb_const from commandbutton within w_benchmark
event clicked pbm_bnclicked
integer x = 32
integer y = 1036
integer width = 512
integer height = 84
integer taborder = 210
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Global Constant"
end type

event clicked;// Global Constant Test
// Time the performance of using a Global Constant

Long	ll_Cnt, ll_Limit, ll_Var

If Not IsNumber(em_const.Text) Then
	MessageBox("Error", "You must enter a limit", Exclamation!)
	Return
End if

SetPointer(HourGlass!)
ib_Saved = False

ll_Limit = Long(em_const.Text)

uo_const.of_start_timer()

For ll_Cnt = 1 To ll_Limit
	ll_Var = ll_Var + lCONST
Next

uo_const.of_end_timer()
end event

type cb_var from commandbutton within w_benchmark
event clicked pbm_bnclicked
integer x = 32
integer y = 932
integer width = 512
integer height = 84
integer taborder = 200
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Global Variable"
end type

event clicked;// Global Variable Test
// Time the performance of using a global variable

Long	ll_Cnt, ll_Limit, ll_Var

If Not IsNumber(em_var.Text) Then
	MessageBox("Error", "You must enter a limit", Exclamation!)
	Return
End if

SetPointer(HourGlass!)
ib_Saved = False

ll_Limit = Long(em_var.Text)

uo_var.of_start_timer()

For ll_Cnt = 1 To ll_Limit
	ll_Var = ll_Var + gl_Var
Next

uo_var.of_end_timer()
end event

type uo_var from u_cst_timer within w_benchmark
integer x = 1111
integer y = 936
integer width = 384
integer height = 76
end type

on uo_var.destroy
call u_cst_timer::destroy
end on

type st_var from statictext within w_benchmark
integer x = 562
integer y = 948
integer width = 229
integer height = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
long backcolor = 77643992
boolean enabled = false
string text = "Iterations:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_var from editmask within w_benchmark
integer x = 795
integer y = 932
integer width = 279
integer height = 84
integer taborder = 90
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
string text = "500000"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "###,###,###"
string displaydata = ""
end type

type st_string from statictext within w_benchmark
integer x = 562
integer y = 844
integer width = 229
integer height = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
long backcolor = 77643992
boolean enabled = false
string text = "Iterations:"
alignment alignment = right!
boolean focusrectangle = false
end type

type cb_string from commandbutton within w_benchmark
event clicked pbm_bnclicked
integer x = 32
integer y = 832
integer width = 512
integer height = 84
integer taborder = 190
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "String Parsing"
end type

event clicked;// String Parsing Test
// Perform a global change in a large string

String		ls_String, ls_Change, ls_Left, ls_Right
Long			ll_Pos, ll_Limit, ll_Cnt

If Not IsNumber(em_string.Text) Then
	MessageBox("Error", "You must enter a limit", Exclamation!)
	Return
End if

SetPointer(HourGlass!)
ib_Saved = False

// Set the string to the first 5000 characters of data in the DataStore
//ls_String = Left(ids_1.Object.DataWindow.Data, 5000)
ls_String = ids_1.Object.DataWindow.Data
ls_String = Left(ls_String, 5000)

ll_Limit = Long(em_string.Text)

uo_string.of_start_timer()

For ll_Cnt = 1 to ll_Limit

	// Change all occurrences of "~t" to "-"
	ls_Change = ls_String
	ll_Pos = Pos(ls_Change, "~t", 1)
	
	Do While ll_Pos > 0
		ls_Left = Left(ls_Change, (ll_Pos - 1))
		ls_Right = Right(ls_Change, (Len(ls_Change) - ll_Pos))
		ls_Change = ls_Left + "-" + ls_Right
		
		ll_Pos = Pos(ls_Change, "~t", ll_Pos)
	Loop
Next

uo_string.of_end_timer()
end event

type uo_string from u_cst_timer within w_benchmark
integer x = 1111
integer y = 836
integer width = 384
integer height = 76
end type

on uo_string.destroy
call u_cst_timer::destroy
end on

type em_string from editmask within w_benchmark
integer x = 795
integer y = 832
integer width = 279
integer height = 84
integer taborder = 80
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
string text = "4"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "###,###,###"
string displaydata = ""
end type

type em_get from editmask within w_benchmark
integer x = 795
integer y = 1140
integer width = 279
integer height = 84
integer taborder = 110
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
string text = "5"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "###,###,###"
string displaydata = ""
end type

type em_function from editmask within w_benchmark
integer x = 795
integer y = 420
integer width = 279
integer height = 84
integer taborder = 40
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
string text = "50000"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "###,###,###"
string displaydata = ""
end type

type em_sort from editmask within w_benchmark
integer x = 795
integer y = 320
integer width = 279
integer height = 84
integer taborder = 30
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
string text = "500"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "###,###,###"
string displaydata = ""
end type

type em_loop from editmask within w_benchmark
integer x = 795
integer y = 116
integer width = 279
integer height = 84
integer taborder = 10
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
string text = "1000000"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "###,###,###"
string displaydata = ""
end type

type st_3 from statictext within w_benchmark
integer x = 32
integer y = 20
integer width = 1696
integer height = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
long backcolor = 77643992
boolean enabled = false
string text = "To perform a test, enter the number of iterations and click the button."
boolean focusrectangle = false
end type

type cb_cancel from commandbutton within w_benchmark
integer x = 1605
integer y = 724
integer width = 425
integer height = 84
integer taborder = 280
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Close"
boolean cancel = true
end type

event clicked;Close(Parent)
end event

type cb_function from commandbutton within w_benchmark
event clicked pbm_bnclicked
integer x = 32
integer y = 420
integer width = 512
integer height = 84
integer taborder = 150
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Global Function"
end type

event clicked;// Function Overhead Test
// Call an empty function to time the overhead associated with all functions

Long	ll_Cnt, ll_Times

If Not IsNumber(em_function.Text) Then
	MessageBox("Error", "You must enter number of times", Exclamation!)
	Return
End if

SetPointer(HourGlass!)
ib_Saved = False

ll_Times = Long(em_function.Text)

uo_function.of_start_timer()

For ll_Cnt = 1 To ll_Times
	f_empty()
Next

uo_function.of_end_timer()
end event

type st_function from statictext within w_benchmark
integer x = 562
integer y = 436
integer width = 229
integer height = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
long backcolor = 77643992
boolean enabled = false
string text = "Iterations:"
alignment alignment = right!
boolean focusrectangle = false
end type

type uo_function from u_cst_timer within w_benchmark
integer x = 1111
integer y = 428
integer width = 384
integer height = 76
end type

on uo_function.destroy
call u_cst_timer::destroy
end on

type cb_report from commandbutton within w_benchmark
integer x = 1605
integer y = 420
integer width = 425
integer height = 84
integer taborder = 260
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Report..."
end type

event clicked;If Not ib_Saved Then
	cb_save.Trigger Event clicked()
End If

Open(w_report)
end event

type cb_get from commandbutton within w_benchmark
event clicked pbm_bnclicked
integer x = 32
integer y = 1140
integer width = 512
integer height = 84
integer taborder = 220
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Using DataStores"
end type

event clicked;// GetItem/SetItem Test
// Copy all rows from a DataStore into variables using GetItem..., reset the
// DataStore and copy all the rows back using SetItem

Long					ll_Cnt, ll_Times
Integer				li_Rows, li_Cnt2
ostr_dw_orders	lstr_Orders[]

If Not IsNumber(em_get.Text) Then
	MessageBox("Error", "You must enter number of times", Exclamation!)
	Return
End if

SetPointer(HourGlass!)
ib_Saved = False

ll_Times = Long(em_get.Text)
li_Rows = ids_1.RowCount()

// Dimension array
lstr_Orders[li_Rows].i_id = 0

// Size the second DataStore
For li_Cnt2 = 1 To li_Rows
	ids_2.InsertRow(0)
Next

uo_get.of_start_timer()

For ll_Cnt = 1 To ll_Times
	For li_Cnt2 = 1 To li_Rows
		lstr_Orders[li_Cnt2].i_id = ids_1.GetItemNumber(li_Cnt2, "id")
		lstr_Orders[li_Cnt2].i_custid = ids_1.GetItemNumber(li_Cnt2, "cust_id")
		lstr_Orders[li_Cnt2].d_orderdate = ids_1.GetItemDate(li_Cnt2, "order_date")
		lstr_Orders[li_Cnt2].s_fincodeid = ids_1.GetItemString(li_Cnt2, "fin_code_id")
		lstr_Orders[li_Cnt2].s_region = ids_1.GetItemString(li_Cnt2, "region")
		lstr_Orders[li_Cnt2].i_salesrep = ids_1.GetItemNumber(li_Cnt2, "sales_rep")
	Next

	For li_Cnt2 = 1 To li_Rows
		ids_2.SetItem(li_Cnt2, "id", lstr_Orders[li_Cnt2].i_id)
		ids_2.SetItem(li_Cnt2, "cust_id", lstr_Orders[li_Cnt2].i_custid)
		ids_2.SetItem(li_Cnt2, "order_date", lstr_Orders[li_Cnt2].d_orderdate)
		ids_2.SetItem(li_Cnt2, "fin_code_id", lstr_Orders[li_Cnt2].s_fincodeid)
		ids_2.SetItem(li_Cnt2, "region", lstr_Orders[li_Cnt2].s_region)
		ids_2.SetItem(li_Cnt2, "sales_rep", lstr_Orders[li_Cnt2].i_salesrep)
	Next
Next

uo_get.of_end_timer()
end event

type st_get from statictext within w_benchmark
integer x = 562
integer y = 1156
integer width = 229
integer height = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
long backcolor = 77643992
boolean enabled = false
string text = "Iterations:"
alignment alignment = right!
boolean focusrectangle = false
end type

type uo_get from u_cst_timer within w_benchmark
integer x = 1111
integer y = 1148
integer width = 384
integer height = 76
end type

on uo_get.destroy
call u_cst_timer::destroy
end on

type uo_sort from u_cst_timer within w_benchmark
integer x = 1111
integer y = 324
integer width = 384
integer height = 76
end type

on uo_sort.destroy
call u_cst_timer::destroy
end on

type cb_sort from commandbutton within w_benchmark
event clicked pbm_bnclicked
integer x = 32
integer y = 320
integer width = 512
integer height = 84
integer taborder = 140
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Bubble Sort"
end type

event clicked;// Sort Test
// Sort values of an array using a bubble sort algorithm

Long			ll_Cnt, ll_Value, ll_Limit, ll_Array[]
Boolean		lb_Done

If Not IsNumber(em_sort.Text) Then
	MessageBox("Error", "You must enter a limit", Exclamation!)
	Return
End if

SetPointer(HourGlass!)
ib_Saved = False

ll_Limit = Long(em_sort.Text)

// Dimension the array
ll_Array[ll_Limit] = 0

// Set the values in the array in reverse sorted order,
// this is worst-case for a bubble sort
For ll_Cnt = 1 To ll_Limit
	ll_Array[ll_Cnt] = 0 - ll_Cnt
Next

uo_sort.of_start_timer()

ll_Limit --
Do
	lb_Done = True	
	For ll_Cnt = 1 to ll_Limit

		If ll_Array[ll_Cnt] > ll_Array[ll_Cnt + 1] Then
			ll_Value = ll_Array[ll_Cnt]
			ll_Array[ll_Cnt] = ll_Array[ll_Cnt + 1]
			ll_Array[ll_Cnt + 1] = ll_Value
			lb_Done = False
		End if
	Next
	ll_Limit --

Loop Until lb_Done

uo_sort.of_end_timer()
end event

type st_2 from statictext within w_benchmark
integer x = 658
integer y = 332
integer width = 128
integer height = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
long backcolor = 77643992
boolean enabled = false
string text = "Items:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_1 from statictext within w_benchmark
integer x = 562
integer y = 128
integer width = 229
integer height = 60
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
long backcolor = 77643992
boolean enabled = false
string text = "Iterations:"
alignment alignment = right!
boolean focusrectangle = false
end type

type uo_loop from u_cst_timer within w_benchmark
integer x = 1111
integer y = 120
integer width = 384
integer height = 76
end type

on uo_loop.destroy
call u_cst_timer::destroy
end on

type cb_loop from commandbutton within w_benchmark
integer x = 32
integer y = 116
integer width = 512
integer height = 84
integer taborder = 120
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Script Looping"
end type

event clicked;// Loop Test
// Time the execution of an empty loop

Long	ll_Cnt, ll_Limit

If Not IsNumber(em_loop.Text) Then
	MessageBox("Error", "You must enter a limit", Exclamation!)
	Return
End if

SetPointer(HourGlass!)
ib_Saved = False

ll_Limit = Long(em_loop.Text)

uo_loop.of_start_timer()

// Empty loop
For ll_Cnt = 1 To ll_Limit
Next

uo_loop.of_end_timer()
end event

type mle_wait from multilineedit within w_benchmark
boolean visible = false
integer x = 553
integer y = 452
integer width = 800
integer height = 188
integer taborder = 290
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 41943040
string text = "Retrieving test data into DataStore, please wait..."
boolean displayonly = true
borderstyle borderstyle = styleraised!
end type

type dw_1 from datawindow within w_benchmark
boolean visible = false
integer x = 1765
integer y = 948
integer width = 411
integer height = 432
integer taborder = 100
string dataobject = "d_sales_orders"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

