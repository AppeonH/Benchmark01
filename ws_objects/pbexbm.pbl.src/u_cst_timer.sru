$PBExportHeader$u_cst_timer.sru
$PBExportComments$Custom user object to time window processing
forward
global type u_cst_timer from UserObject
end type
type st_1 from statictext within u_cst_timer
end type
type st_ms from statictext within u_cst_timer
end type
end forward

global type u_cst_timer from UserObject
int Width=434
int Height=109
long BackColor=77643992
long PictureMaskColor=25166016
long TabTextColor=33554432
long TabBackColor=67108864
st_1 st_1
st_ms st_ms
end type
global u_cst_timer u_cst_timer

type variables
Long	il_Begin
Double	idb_Diff

end variables

forward prototypes
public subroutine of_start_timer ()
public subroutine of_end_timer ()
end prototypes

public subroutine of_start_timer ();il_Begin = CPU()

end subroutine

public subroutine of_end_timer ();Long		ll_End

ll_End = CPU()

idb_Diff = (ll_End - il_Begin) / 1000

st_ms.text = String(idb_Diff)

end subroutine

on u_cst_timer.create
this.st_1=create st_1
this.st_ms=create st_ms
this.Control[]={ this.st_1,&
this.st_ms}
end on

on u_cst_timer.destroy
destroy(this.st_1)
destroy(this.st_ms)
end on

type st_1 from statictext within u_cst_timer
int X=299
int Y=7
int Width=118
int Height=68
boolean Enabled=false
string Text="sec"
boolean FocusRectangle=false
long TextColor=33554432
long BackColor=77643992
int TextSize=-8
int Weight=400
string FaceName="MS Sans Serif"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_ms from statictext within u_cst_timer
int X=4
int Y=7
int Width=278
int Height=68
boolean Enabled=false
boolean Border=true
BorderStyle BorderStyle=StyleLowered!
Alignment Alignment=Right!
boolean FocusRectangle=false
long TextColor=33554432
long BackColor=77643992
int TextSize=-8
int Weight=400
string FaceName="MS Sans Serif"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

