$PBExportHeader$benchmark.sra
$PBExportComments$Benchmark Application
forward
global type benchmark from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
Environment	ge_Environment

String sREGKEY
String sVERSION
String sPBEXE

// values used by the benchmarks
Long		gl_Var = 1
Constant Long	lCONST = 1

end variables

global type benchmark from application
string appname = "benchmark"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 0
long richtexteditversion = 0
string richtexteditkey = ""
string appicon = "bm.ico"
end type
global benchmark benchmark

on benchmark.create
appname="benchmark"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on benchmark.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;contextinformation lcx_key
int li_vers, li_min_vers
string ls_vers

sqlca.dbms = "ODBC"
sqlca.dbparm = "Connectstring='DSN=PB Demo DB V2019R3;UID=dba;PWD=sql'"

connect;
If sqlca.sqlcode <> 0 Then
	MessageBox("Error Connecting to Database", sqlca.sqlerrtext, Exclamation!)
	Halt Close
End if

GetEnvironment(ge_Environment)

ge_Environment.GetContextService ( "ContextInformation", lcx_key)
lcx_key.GetMajorVersion ( li_vers )
lcx_key.GetMinorVersion ( li_min_vers )
lcx_key.GetVersionName ( ls_vers )

choose case ge_environment.Charset
	case CharSetUnicode! 
		//sVERSION = String ( li_vers) + ".0u"
		//sPBEXE = "pb" + String ( li_vers) + "0u.exe"
		//sVERSION = String ( li_vers) + ".5"
		sVERSION = String ( li_vers) + "." + String( li_min_vers )
		sPBEXE = "pb" + String ( li_vers) + "5.exe"
	case CharSetDBCSJapanese!
		//sVERSION = String ( li_vers) + ".5j"
		sVERSION = String ( li_vers) + "." + String( li_min_vers ) + "j"
		sPBEXE = "pb" + String ( li_vers) + "5.exe"
	case else
		//sVERSION = String ( li_vers) + ".5"
		sVERSION = String ( li_vers) + "." + String( li_min_vers )
		sPBEXE = "pb" + String ( li_vers) + "5.exe"
end choose

sREGKEY = "HKEY_CURRENT_USER\Software\Sybase\PowerBuilder\" + sVERSION

Open(w_benchmark)
end event

