$PBExportHeader$w_report.srw
$PBExportComments$Benchmark Report
forward
global type w_report from w_center
end type
type cb_saveas from commandbutton within w_report
end type
type cb_close from commandbutton within w_report
end type
type cb_setup from commandbutton within w_report
end type
type cb_print from commandbutton within w_report
end type
type dw_1 from datawindow within w_report
end type
end forward

global type w_report from w_center
integer x = 5
integer y = 4
integer width = 2409
integer height = 1908
string title = "PowerBuilder Benchmarks Report"
windowtype windowtype = response!
long backcolor = 74481808
toolbaralignment toolbaralignment = alignatleft!
event ue_get_data ( boolean ab_compiled )
cb_saveas cb_saveas
cb_close cb_close
cb_setup cb_setup
cb_print cb_print
dw_1 dw_1
end type
global w_report w_report

forward prototypes
public function boolean of_check_vals (string as_section, string as_key, ref string as_Num, ref string as_Time)
end prototypes

event ue_get_data;String	ls_Section, ls_Report, ls_Num, ls_Time

If ab_Compiled Then
	ls_Section = "Benchmark Machine Code Tests"
Else
	ls_Section = "Benchmark P-Code Tests"
End if

// Get the saved timings for each test.  Only include the tests that were actually run.
If of_check_vals(ls_Section, "loop", ls_Num, ls_Time) Then
	ls_Report = ls_Report + "Script Looping~tExecute an empty For/Next loop.~t" + ls_Num + "~t" + ls_Time + "~r~n"
End If

If of_check_vals(ls_Section, "tak", ls_Num, ls_Time) Then
	ls_Report = ls_Report + "TAK Benchmark~tThe TAK Benchmark is a widely used algorithm to compare " + &
										"programming tools that make extensive use of funciton calls.~t" + ls_Num + "~t" + ls_Time + "~r~n"
End If

If of_check_vals(ls_Section, "sort", ls_Num, ls_Time) Then
	ls_Report = ls_Report + "Array Sorting~tSort the values in an array that is initially sorted in reverse order.~t" + ls_Num + "~t" + ls_Time + "~r~n"
End If

If of_check_vals(ls_Section, "function", ls_Num, ls_Time) Then
	ls_Report = ls_Report + "Global Function Overhead~tCall an empty global function.~t" + ls_Num + "~t" + ls_Time + "~r~n"
End If

If of_check_vals(ls_Section, "ofunction", ls_Num, ls_Time) Then
	ls_Report = ls_Report + "Object Function Overhead~tCall an empty object (window) function.~t" + ls_Num + "~t" + ls_Time + "~r~n"
End If

If of_check_vals(ls_Section, "event", ls_Num, ls_Time) Then
	ls_Report = ls_Report + "Event Overhead~tTrigger an empty event.~t" + ls_Num + "~t" + ls_Time + "~r~n"
End If

If of_check_vals(ls_Section, "window", ls_Num, ls_Time) Then
	ls_Report = ls_Report + "Window Instantiation~tOpen a window with no controls.~t" + ls_Num + "~t" + ls_Time + "~r~n"
End If

If of_check_vals(ls_Section, "string", ls_Num, ls_Time) Then
	ls_Report = ls_Report + "String Parsing~tChange all occurrences of one string within another.~t" + ls_Num + "~t" + ls_Time + "~r~n"
End If

If of_check_vals(ls_Section, "var", ls_Num, ls_Time) Then
	ls_Report = ls_Report + "Global Variable~tUse a global variable in an assignment statement.~t" + ls_Num + "~t" + ls_Time + "~r~n"
End If

If of_check_vals(ls_Section, "const", ls_Num, ls_Time) Then
	ls_Report = ls_Report + "Global Constant~tUse a global constant in an assignment statement.~t" + ls_Num + "~t" + ls_Time + "~r~n"
End If

If of_check_vals(ls_Section, "get", ls_Num, ls_Time) Then
	ls_Report = ls_Report + "Using DataStores~tCopy all rows from a DataStore into variables using GetItem..., " + &
										"then write them to another DataStore using SetItem.~t" + ls_Num + "~t" + ls_Time + "~r~n"
End If

dw_1.ImportString(ls_Report)

end event

public function boolean of_check_vals (string as_section, string as_key, ref string as_Num, ref string as_Time);// Function to determine if a test was run.
// If there is no saved entry for the test or if it's time is 0,
// then it was not run

// Get number of iterations
f_get_profile(as_Section, as_Key + "#", as_Num)

// Get time
f_get_profile(as_Section, as_Key + "T", as_Time)

If as_Time = "" Then Return False

If Double(as_Time) > 0 Then
	Return True
Else
	Return False
End if

end function

on w_report.create
int iCurrent
call super::create
this.cb_saveas=create cb_saveas
this.cb_close=create cb_close
this.cb_setup=create cb_setup
this.cb_print=create cb_print
this.dw_1=create dw_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_saveas
this.Control[iCurrent+2]=this.cb_close
this.Control[iCurrent+3]=this.cb_setup
this.Control[iCurrent+4]=this.cb_print
this.Control[iCurrent+5]=this.dw_1
end on

on w_report.destroy
call super::destroy
destroy(this.cb_saveas)
destroy(this.cb_close)
destroy(this.cb_setup)
destroy(this.cb_print)
destroy(this.dw_1)
end on

event open;call super::open;String	ls_Parm, ls_CPU, ls_Speed, ls_Memory, ls_OSType, ls_OSVer, ls_PBVer, ls_Report
Integer	li_Pos1, li_Pos2

this.Title = "PowerBuilder " + sVersion + " Benchmarks Report"

dw_1.Object.t_7.Text = this.Title

// Get information about the machine running the tests.
Choose Case ge_Environment.CPUType
	Case alpha!
		ls_CPU = "Alpha"
	Case hppa!
		ls_CPU = "hppa"
	Case i286!
		ls_CPU = "i286"
	Case i386!
		ls_CPU = "i386"
	Case i486!
		ls_CPU = "i486"
	Case m68000!
		ls_CPU = "68000"
	Case m68020!
		ls_CPU = "68020"
	Case m68030!
		ls_CPU = "68030"
	Case m68040!
		ls_CPU = "68040"
	Case mips!
		ls_CPU = "Mips"
	Case pentium!
		ls_CPU = "Pentium"
	Case powerpc!
		ls_CPU = "PowerPC"
	Case sparc!
		ls_CPU = "Sparc"
End Choose

f_get_profile("Benchmark Machine", "Speed", ls_Speed)
f_get_profile("Benchmark Machine", "Memory", ls_Memory)

// If the information is not saved, open the window to enter it.
If Trim(ls_Speed) = "" Or Trim(ls_Memory) = "" Then
	Open(w_machine)
	ls_Speed = "Unknown"
	ls_Memory = "Unknown"
	f_get_profile("Benchmark Machine", "Speed", ls_Speed)
	f_get_profile("Benchmark Machine", "Memory", ls_Memory)
End if

If ls_Speed <> "Unknown" Then
	ls_Speed = ls_Speed + " Mhz"
End if

If ls_Memory <> "Unknown" Then
	ls_Memory = ls_Memory + " Meg."
End if

// Get information about the operating system and version of PowerBuilder running the tests.
ls_PBVer = String(ge_Environment.PBMajorRevision) + "." + String(ge_Environment.PBMinorRevision) + &
				"." + String(ge_Environment.PBFixesRevision)

Choose Case ge_Environment.OSType
	Case windows!
		If ge_Environment.OSMajorRevision = 4 Then
			ls_PBVer = ls_PBVer + " - Win32"
			ls_OSType = "Windows 95"
			ls_OSVer = ""
		ElseIf ge_Environment.OSMinorRevision = 95 Then
			ls_PBVer = ls_PBVer + " - Win16"
			ls_OSType = "Windows 95"
			ls_OSVer = ""
		Else
			ls_OSType = "Windows"
			ls_OSVer = String(ge_Environment.OSMajorRevision) + "." + String(ge_Environment.OSMinorRevision)
		End if
	Case windowsnt!
		ls_PBVer = ls_PBVer + " - Win32"
		ls_OSType = "WindowsNT"
		ls_OSVer = String(ge_Environment.OSMajorRevision) + "." + String(ge_Environment.OSMinorRevision)
End Choose

If ge_Environment.MachineCode Then
	dw_1.object.exe_type.text = "Machine-Code Executable"
Else
	dw_1.object.exe_type.text = "P-Code Executable"
End if

// Set the values in the DataWindow
dw_1.object.cpu.text = ls_CPU
dw_1.object.cpu_speed.text = ls_Speed
dw_1.object.memory.text = ls_Memory
dw_1.object.ostype.text = ls_OSType
dw_1.object.osver.text = ls_OSVer
dw_1.object.pbver.text = ls_PBVer

Post Event ue_get_data(ge_Environment.MachineCode)

end event

type cb_saveas from commandbutton within w_report
integer x = 1170
integer y = 1668
integer width = 389
integer height = 84
integer taborder = 50
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Save As..."
end type

event clicked;String	ls_File, ls_Path, ls_Ext

GetFileSaveName("Save Report", ls_Path, ls_File, "psr", "PSReport Files (*.psr),*.psr, " + &
							"Text Files (*.txt),*.txt, HTML Files (*.htm),*.htm")

If Trim(ls_Path) <> "" Then
	ls_Ext = Lower(Right(ls_Path, 3))
	
	Choose Case ls_Ext
		Case "psr"
			dw_1.SaveAs(ls_Path, PSReport!, True)
		Case "txt"
			dw_1.SaveAs(ls_Path, Text!, True)
		Case "htm"
			dw_1.SaveAs(ls_Path, HTMLTable!, True)
		Case Else
			MessageBox("Save Report", "The type of file saved is identified by the extension.  " + &
								"Use '.psr' for PSReport, '.txt' for Text, or '.htm' for HTML Table", Exclamation!, OK!)
			Return
	End Choose
End if

end event

type cb_close from commandbutton within w_report
integer x = 1623
integer y = 1668
integer width = 389
integer height = 84
integer taborder = 40
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

type cb_setup from commandbutton within w_report
integer x = 713
integer y = 1668
integer width = 389
integer height = 84
integer taborder = 30
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Printer Setup..."
end type

event clicked;PrintSetup()

end event

type cb_print from commandbutton within w_report
integer x = 265
integer y = 1668
integer width = 389
integer height = 84
integer taborder = 20
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Print"
end type

event clicked;dw_1.Print()

end event

type dw_1 from datawindow within w_report
integer x = 9
integer y = 8
integer width = 2359
integer height = 1628
integer taborder = 10
string dataobject = "d_benchmark_report"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

