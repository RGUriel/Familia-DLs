


;Changes a property in the compiled executable's version information.





;@Ahk2Exe-SetFileVersion 3.2E
;@Ahk2Exe-SetProductVersion 3.2E
;@Ahk2Exe-SetVersion 3.2E


;@Ahk2Exe-SetInternalName AVersion
;@Ahk2Exe-SetName AVersion
;@Ahk2Exe-SetOrigFilename AVersion
;@Ahk2Exe-SetProductName AVersion

;@Ahk2Exe-SetDescription Copias de seguridad para diferentes proyectos.


;____Not CHANGE
;@Ahk2Exe-SetLanguage 0x0409
;@Ahk2Exe-SetCopyright Copyright © 2022 RGUriel


;Changes a property in the compiled executable's version information.











;sin 10mlseg entre linea de codigo
SetBatchLines -1 
#SingleInstance off


; #Warn  ; Enable warnings to assist with detecting common errors.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;esto es para la ventanita de copiado
CoordMode,Mouse,Screen





#Include %A_ScriptDir%\Data\Class_CtlColors.ahk
;para los iconos de los archivos en gui
#Include %A_ScriptDir%\Data\GetSysImgLstIcon.ahk
;colores personalizados
#Include %A_ScriptDir%\Data\ChooseColor.ahk

;para la comparacion de direcciones para la lista de elementos recientes
StringCaseSense, On



;**********************************************************


;NAMENAMENAME
;___________________________________________
nameofthisscript1:="AVersion"
;___________________________________________
;VVVVVVVVVVversión
Veract1:="3.2E"
;VVVVVVVVVVV




;orden entrada DLs
ordenimgdls1=0
ordenimgdls2=0






;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS
;para los iconos de los archivos en gui
FileEncoding, UTF-8

global nameofthisscript1
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS
;para los iconos de los archivos en gui









;nesesario para elementos con el mismo nombre
SplitPath, A_ScriptFullPath, , , , , driveorig

;variable config acticva
activeconfig=0



;si no existe el archivo se crea

if  !FileExist(A_ScriptDir . "\Data\i")
FileCreateDir, %A_ScriptDir%\Data\i


;para los errores en escritura de archivos
carpoetaprueba=%A_ScriptDir%\Data\i\0
if  !FileExist(carpoetaprueba)
FileCreateDir, %carpoetaprueba%


CLAVEaini=%A_ScriptDir%\AVersion.ini
if  !FileExist(CLAVEaini)
{

MsgBox 0x40041, RGUriel - %nameofthisscript1%, `*Spanish`: `n`nEste programa no tiene garantía`, úselo bajo su propio riesgo. No me responsabilizo ante la perdida de datos o el mal uso del mismo. `n`nLicencia del script escrito por RGUriel`, exceptuando el código de terceros especificado en el mismo: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007`n`n`*English`:`n`nThis program has no guarantee`, use it at your own risk. I do not take responsibility for the loss of data or the misuse of it.`n`nScript license written by RGUriel`, except for the third-party code specified in the same: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007
IfMsgBox Cancel, {
exitapp
}




IniWrite, Center, %CLAVEaini%, window position, gui_position
IniWrite, Center, %CLAVEaini%, window position2, gui_position
;archivodefault

IniWrite,No especificado, %CLAVEaini%, actualfile, file
IniWrite,%A_Desktop%\AVersion-CS, %CLAVEaini%, carpetaes, carpetaes

;positionn of gui if is new use in new pc
IniWrite, 700/200, %CLAVEaini%, pcnewres, a
;**********************************************************

IniWrite,AV, %CLAVEaini%, Nota, a
IniWrite, Punto critico, %CLAVEaini%, Nota, b

IniWrite, 1, %CLAVEaini%, Cajas, a
IniWrite, 0, %CLAVEaini%, Cajas, b
 IniWrite, 1, %CLAVEaini%, Cajas, c
IniWrite, 0, %CLAVEaini%, Cajas, d
IniWrite, 0, %CLAVEaini%, Cajas, e
IniWrite, 30, %CLAVEaini%, setd, a
IniWrite, Segundos, %CLAVEaini%, setd, b

IniWrite,No especificado, %CLAVEaini%, DLs, a
IniWrite,1, %CLAVEaini%, DLs, b
IniWrite,1, %CLAVEaini%, DLs, c
IniWrite,1, %CLAVEaini%, DLs, d
iniWrite, 1, %CLAVEaini%,  Avance, a


IniWrite, No establecido, %CLAVEaini%, Apps, a

XC=

iniWrite, 0, %CLAVEaini%,  Sec, 1
iniWrite, %XC%, %CLAVEaini%,  Sec, 2
iniWrite, 0, %CLAVEaini%,  Sec, 3
iniWrite, %XC%, %CLAVEaini%,  Sec, 4
iniWrite, 0, %CLAVEaini%,  Sec, 5
iniWrite, %XC%, %CLAVEaini%,  Sec, 6
iniWrite, 0, %CLAVEaini%,  Sec, 7
iniWrite, %XC%, %CLAVEaini%,  Sec, 8
iniWrite, 0, %CLAVEaini%,  Sec, 9
iniWrite, %XC%, %CLAVEaini%,  Sec, 10
iniWrite, 0, %CLAVEaini%,  Sec, 11
iniWrite, %XC%, %CLAVEaini%,  Sec, 12
iniWrite, 0, %CLAVEaini%,  Sec, 13
iniWrite, %XC%, %CLAVEaini%,  Sec, 14
iniWrite, 0, %CLAVEaini%,  Sec, 15
iniWrite, ., %CLAVEaini%,  Sec, 16
iniWrite, 0, %CLAVEaini%,  Sec, 17
iniWrite, %XC%, %CLAVEaini%,  Sec, 18
iniWrite, 1, %CLAVEaini%,  Sec, 19






IniWrite, 0, %CLAVEaini%, AHKhk, a
IniWrite, ^!a, %CLAVEaini%, AHKhk, b
IniWrite, ^!b, %CLAVEaini%, AHKhk, c
IniWrite, ^!c, %CLAVEaini%, AHKhk, d


;SKM Custom
IniWrite, Verdana, %CLAVEaini%, STKG,1
IniWrite, 2, %CLAVEaini%, STKG,2
IniWrite, 8, %CLAVEaini%, STKG,3
IniWrite, ffffff, %CLAVEaini%, STKG,4
IniWrite, 23222B, %CLAVEaini%, STKG,5
IniWrite, 1C1B22, %CLAVEaini%, STKG,6

;colores personalizados
;Color por defecto
colsant_Def:=[16777215,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

Loop % colsant_Def.Length()
colsant_Def_W .= colsant_Def[A_Index] . "|"

IniWrite, % colsant_Def_W, %CLAVEaini%, STKG,7
;colores personalizados





IniWrite, 0, %CLAVEaini%, Recientes, 0
IniWrite,No especificado, %CLAVEaini%, Recientes, 1
IniWrite,No especificado, %CLAVEaini%, Recientes, 2
IniWrite,No especificado, %CLAVEaini%, Recientes, 3
IniWrite,No especificado, %CLAVEaini%, Recientes, 4
IniWrite,No especificado, %CLAVEaini%, Recientes, 5
IniWrite,No especificado, %CLAVEaini%, Recientes, 6
IniWrite,No especificado, %CLAVEaini%, Recientes, 7
IniWrite,No especificado, %CLAVEaini%, Recientes, 8
IniWrite,No especificado, %CLAVEaini%, Recientes, 9
IniWrite,No especificado, %CLAVEaini%, Recientes, 10
IniWrite,No especificado, %CLAVEaini%, Recientes, 11
IniWrite,No especificado, %CLAVEaini%, Recientes, 12
IniWrite,No especificado, %CLAVEaini%, Recientes, 13
IniWrite,No especificado, %CLAVEaini%, Recientes, 14
IniWrite,No especificado, %CLAVEaini%, Recientes, 15
IniWrite,No especificado, %CLAVEaini%, Recientes, 16
IniWrite,No especificado, %CLAVEaini%, Recientes, 17
IniWrite,No especificado, %CLAVEaini%, Recientes, 18
IniWrite,No especificado, %CLAVEaini%, Recientes, 19
IniWrite,No especificado, %CLAVEaini%, Recientes, 20



;Avisos
IniWrite, 1, %CLAVEaini%, Avisos, a
IniWrite, 1, %CLAVEaini%, Avisos, b
IniWrite, 1, %CLAVEaini%, Avisos, c
IniWrite, 0, %CLAVEaini%, Avisos, d
IniWrite, 1, %CLAVEaini%, Avisos, e
IniWrite, 0, %CLAVEaini%, Avisos, f





}


;archivodefault
iniRead,elemccopaver, %CLAVEaini%, actualfile, file

IniRead, gui_position, %CLAVEaini%, window position, gui_position
IniRead, gui_position2, %CLAVEaini%, window position2, gui_position

iniRead, carpetaes, %CLAVEaini%, carpetaes, carpetaes


;positionn of gui if is new use in new pc
IniRead, pcnewres, %CLAVEaini%, pcnewres, a
;**********************************************************
IniRead, valabus, %CLAVEaini%, Nota, a
IniRead, valabus2, %CLAVEaini%, Nota, b




IniRead, cajaavercconf1, %CLAVEaini%, Cajas, a
IniRead, cajaavercconf2, %CLAVEaini%, Cajas, b
 IniRead, cajaavercconf3, %CLAVEaini%, Cajas, c
IniRead, cajaavercconf4, %CLAVEaini%, Cajas, d
IniRead, carpinespecial, %CLAVEaini%, Cajas, e



IniRead, cajaavercconf5, %CLAVEaini%, setd, a
IniRead, cajaavercconf6, %CLAVEaini%, setd, b

IniRead, DLsconf, %CLAVEaini%, DLs, a
IniRead,recpsdls1, %CLAVEaini%, DLs, b
IniRead,postDls1, %CLAVEaini%, DLs, c
IniRead,postDls2, %CLAVEaini%, DLs, d

iniread, defectavanceval, %CLAVEaini%,  Avance, a

IniRead, appsapp1, %CLAVEaini%, Apps, a

iniread, dfectvalavercest1, %CLAVEaini%,  Sec, 1
iniread, dfectvalavercest2, %CLAVEaini%,  Sec, 2
iniread, dfectvalavercest3, %CLAVEaini%,  Sec, 3
iniread, dfectvalavercest4, %CLAVEaini%,  Sec, 4
iniread, dfectvalavercest5, %CLAVEaini%,  Sec, 5
iniread, dfectvalavercest6, %CLAVEaini%,  Sec, 6
iniread, dfectvalavercest7, %CLAVEaini%,  Sec, 7
iniread, dfectvalavercest8, %CLAVEaini%,  Sec, 8
iniread, dfectvalavercest9, %CLAVEaini%,  Sec, 9
iniread, dfectvalavercest10, %CLAVEaini%,  Sec, 10
iniread, dfectvalavercest11, %CLAVEaini%,  Sec, 11
iniread, dfectvalavercest12, %CLAVEaini%,  Sec, 12
iniread, dfectvalavercest13, %CLAVEaini%,  Sec, 13
iniread, dfectvalavercest14, %CLAVEaini%,  Sec, 14
iniread, dfectvalavercest15, %CLAVEaini%,  Sec, 15
iniread, dfectvalavercest16, %CLAVEaini%,  Sec, 16
iniread, dfectvalavercest17, %CLAVEaini%,  Sec, 17
iniread, dfectvalavercest18, %CLAVEaini%,  Sec, 18
iniread, dfectvalavercest19, %CLAVEaini%,  Sec, 19

iniread, accionstarhk, %CLAVEaini%, AHKhk, a
iniread, guadchotk1, %CLAVEaini%, AHKhk, b
iniread, guadchotk2, %CLAVEaini%, AHKhk, c
iniread, guadchotk3, %CLAVEaini%, AHKhk, d



;Stk Custom
IniRead, stkcg1, %CLAVEaini%, STKG,1
IniRead, stkcg2, %CLAVEaini%, STKG,2
IniRead, stkcg3, %CLAVEaini%, STKG,3
IniRead, stkcg4, %CLAVEaini%, STKG,4
IniRead, stkcg5, %CLAVEaini%, STKG,5
IniRead, stkcg6, %CLAVEaini%, STKG,6

;colores personalizados
IniRead, colsant_R, %CLAVEaini%, STKG,7
Palette2 := StrSplit(colsant_R,"|")
;colores personalizados

IniRead, Archrecie0, %CLAVEaini%, Recientes, 0
IniRead,Archrecie1, %CLAVEaini%, Recientes, 1
IniRead,Archrecie2, %CLAVEaini%, Recientes, 2
IniRead,Archrecie3, %CLAVEaini%, Recientes, 3
IniRead,Archrecie4, %CLAVEaini%, Recientes, 4
IniRead,Archrecie5, %CLAVEaini%, Recientes, 5
IniRead,Archrecie6, %CLAVEaini%, Recientes, 6
IniRead,Archrecie7, %CLAVEaini%, Recientes, 7
IniRead,Archrecie8, %CLAVEaini%, Recientes, 8
IniRead,Archrecie9, %CLAVEaini%, Recientes, 9
IniRead,Archrecie10, %CLAVEaini%, Recientes, 10
IniRead,Archrecie11, %CLAVEaini%, Recientes, 11
IniRead,Archrecie12, %CLAVEaini%, Recientes, 12
IniRead,Archrecie13, %CLAVEaini%, Recientes, 13
IniRead,Archrecie14, %CLAVEaini%, Recientes, 14
IniRead,Archrecie15, %CLAVEaini%, Recientes, 15
IniRead,Archrecie16, %CLAVEaini%, Recientes, 16
IniRead,Archrecie17, %CLAVEaini%, Recientes, 17
IniRead,Archrecie18, %CLAVEaini%, Recientes, 18
IniRead,Archrecie19, %CLAVEaini%, Recientes, 19
IniRead,Archrecie20, %CLAVEaini%, Recientes, 20





;Avisos
IniRead, gmensaviso1, %CLAVEaini%, Avisos, a
IniRead, gmensaviso2, %CLAVEaini%, Avisos, b
IniRead, gmensaviso3, %CLAVEaini%, Avisos, c
IniRead, gmensaviso4, %CLAVEaini%, Avisos, d
IniRead, gmensaviso5, %CLAVEaini%, Avisos, e
IniRead, gmensaviso6, %CLAVEaini%, Avisos, f









;STK custom
     if stkcg2=1
 stkcgfin2:="Norm"
   else
          if stkcg2=2
 stkcgfin2:="Bold"
 else
       if stkcg2=3
 stkcgfin2:="Italic"
 else
       if stkcg2=4
 stkcgfin2:="Strike"
    else
       if stkcg2=5
 stkcgfin2:="Underline"




;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
WinGetPos, , , usonuev1, usonuev2, ahk_class Progman
usonuev3=%usonuev1%/%usonuev2%


cambscreenpcn=0
Loop, Parse, pcnewres, /,                                  
	{
Envadd, cambscreenpcn, 1

cambscreenpcn2:="cambscreenvvpcn"cambscreenpcn

%cambscreenpcn2%=%A_LoopField%	;para numeracion

}




;variable para cada ventana con un proceso de colocasion de la ventana
if pcnewres=%usonuev3%
{
	winzmodif_1=0
	winzmodif_rgr1=0
     winzmodif_copygui=0
   ; Ventana sin registro de cierre anterior 
    winzmodif_gec=0
        winzmodif_copyfile=0
         winzmodif_copygui=0
         	winzmodif_guinam=0
        
}
else
{
	winzmodif_1=1
	winzmodif_rgr1=1
    
    
    ; Ventana sin registro de cierre anterior 
    winzmodif_gec=0
         winzmodif_copyfile=0
         	winzmodif_guinam=0
}


Global usonuev1
Global usonuev2
Global usonuev3
Global pcnewres
Global cambscreenvvpcn1
Global cambscreenvvpcn2

;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease



;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS*****
;#################################################################################
;#################################################################################
;I.......................................DLs
CLAVEDLs=%A_ScriptDir%\Data\DLs
if !FileExist(CLAVEDLs)
FileCreateDir, %CLAVEDLs%
;I.......................................DLs
;#################################################################################
;#############
global CLAVEDLs

;Create lists

IniDLs:=CLAVEDLs "\DLsv.ini"
if !FileExist(IniDLs)
CreateListDLs("v")


IniDLs:=CLAVEDLs "\DLsp.ini"
if !FileExist(IniDLs)
	CreateListDLs("p")








varconespaverc1=0
loop 2
{
    
    Envadd,varconespaverc1, 1
    
    if varconespaverc1=1
        LetraofDLs:="v"
    else
           if varconespaverc1=2
    LetraofDLs:="p"
    

DLsinivar:="DLs"LetraofDLs
DLsininame:="DLs"LetraofDLs
DLsininame2:="Se"LetraofDLs LetraofDLs
DLscont:="startserie"LetraofDLs LetraofDLs
DLsDLsCont:="DLsDLs" LetraofDLs
DLWTcontnum:="DLWT"LetraofDLs



%DLsinivar%=%CLAVEDLs%\%DLsininame%.ini
DLsinivar2=% %DLsinivar%


%DLscont%=0



IniRead, %DLWTcontnum%, %DLsinivar2%, DLWT, a

loop, 100
{
EnvAdd, %DLscont%, 1


DLscont2=% %DLscont%

readDlsN:=DLsininame DLscont2
readDlsC:=DLsininame2 DLscont2

IniRead, %readDlsN% , %DLsinivar2%, %DLscont2%, a
IniRead, %readDlsC% , %DLsinivar2%, %DLscont2%, b

if  %readDlsN%=
%readDlsN%=
 
if  %readDlsC%=
%readDlsC%=
}


;*******************************************************************************************************************************************************************************************************


contDlsdataN:=DLsininame 1
	%DLsDLsCont%=% %contDlsdataN%

%DLscont%=1
Loop 100
{
	EnvAdd, %DLscont%, 1
	
DLscont2=% %DLscont%



contfordls1:=DLsininame DLscont2
contfordls2=% %contfordls1%
%DLsDLsCont%.= "|" contfordls2
	
	
	if DLscont2 >=% %DLWTcontnum%
break


}



}



;#################################################################################
;#################################################################################









;ShowComDLs
ShowComDLsonvar=0
 
 



;_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos

global gmensaviso1
global gmensaviso2
global gmensaviso3
global gmensaviso4
global gmensaviso5
global gmensaviso6
;Gui lista
Gui, gec:+AlwaysOnTop -Caption +ToolWindow
Gui, gec:Add, Picture, x0 y0 w100 h50 , %A_ScriptDir%\Data\Gui\window1.png



;Gui lista
Gui, copygui:+AlwaysOnTop -Caption +ToolWindow
Gui, copygui:Add, Picture, x0 y0 w100 h50 , %A_ScriptDir%\Data\Gui\windowcopy.png
;_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos





;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS*****





;paraprogramasmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm


            setformvar1:=Format("{:.2f}",copactaver1)
copactaver1=%setformvar1%





;letrasbbbbbbbbbb
global letratty0:="@"
global letratty1:="A"
global letratty2:="B"
global letratty3:="C"
global letratty4:="D"
global letratty5:="E"
global letratty6:="F"
global letratty7:="G"
global letratty8:="H"
global letratty9:="I"
global letratty10:="J"
global letratty11:="K"
global letratty12:="L"
global letratty13:="M"
global letratty14:="N"
global letratty15:="O"
global letratty16:="P"
global letratty17:="Q"
global letratty18:="R"
global letratty19:="S"
global letratty20:="T"
global letratty21:="U"
global letratty22:="V"
global letratty23:="W"
global letratty24:="X"
global letratty25:="Y"
global letratty26:="Z"

















;Var para las funciones

global ancencecopi
global elemccopaver

CLAVEain2=0
global CLAVEain2
Valoacdelete=0
global Valoacdelete
carpetautil=0
global carpetautil


global valorgeneralaverc=0
global comunVGACPSAV=0
global VGACPSAV=0


global activarletra1=0
global positguardav2=0
global activarletra3=0
global positguardav4=0
global activarletra5=0
global positguardav6=0
global activarletra7=0
global positguardav8=0
global activarletra9=0
global positguardav10=0
global activarletra11=0
global positguardav12=0
global activarletra13=0
global positguardav14=0
global activarletra15=0
global positguardav16=0
global activarletra17=0
global positguardav18=0
global activarletra19=0












;registro de copias y las fechas













;cre4ar gui especial para  mostrar copia completa
Gui copyfile:+AlwaysOnTop -Caption +ToolWindow
Gui, copyfile:Add, Picture, x0 y0 w100 h50 , %A_ScriptDir%\Data\Gui\windowcopyfile.png





  
    ;archivos recientes-archivos recientes-archivos recientes-archivos recientes
        ;archivos recientes-archivos recientes-archivos recientes-archivos recientes
        ;archivos recientes-archivos recientes-archivos recientes-archivos recientes
;Archivos recientes


Numcompname1=0
Loop 20
{
    EnvAdd, Numcompname1,1
concompname1:="Archrecie" Numcompname1
concompname2=% %concompname1%

concompname3:="Nameofrecloop"Numcompname1

SplitPath, concompname2, %concompname3%

}
    ;archivos recientes-archivos recientes-archivos recientes-archivos recientes
        ;archivos recientes-archivos recientes-archivos recientes-archivos recientes
        ;archivos recientes-archivos recientes-archivos recientes-archivos recientes
    
    

Menu, AVcionmenu2, Add, 1 %Nameofrecloop1% , Selfilrec1
Menu, AVcionmenu2, Add, 2 %Nameofrecloop2% , Selfilrec2
Menu, AVcionmenu2, Add, 3 %Nameofrecloop3% , Selfilrec3
Menu, AVcionmenu2, Add, 4 %Nameofrecloop4% , Selfilrec4
Menu, AVcionmenu2, Add, 5 %Nameofrecloop5% , Selfilrec5
Menu, AVcionmenu2, Add, 6 %Nameofrecloop6% , Selfilrec6
Menu, AVcionmenu2, Add, 7 %Nameofrecloop7% , Selfilrec7
Menu, AVcionmenu2, Add, 8 %Nameofrecloop8% , Selfilrec8
Menu, AVcionmenu2, Add, 9 %Nameofrecloop9% , Selfilrec9
Menu, AVcionmenu2, Add, 10 %Nameofrecloop10% , Selfilrec10
Menu, AVcionmenu2, Add, 11 %Nameofrecloop11% , Selfilrec11
Menu, AVcionmenu2, Add, 12 %Nameofrecloop12% , Selfilrec12
Menu, AVcionmenu2, Add, 13 %Nameofrecloop13% , Selfilrec13
Menu, AVcionmenu2, Add, 14 %Nameofrecloop14% , Selfilrec14
Menu, AVcionmenu2, Add, 15 %Nameofrecloop15% , Selfilrec15
Menu, AVcionmenu2, Add, 16 %Nameofrecloop16% , Selfilrec16
Menu, AVcionmenu2, Add, 17 %Nameofrecloop17% , Selfilrec17
Menu, AVcionmenu2, Add, 18 %Nameofrecloop18% , Selfilrec18
Menu, AVcionmenu2, Add, 19 %Nameofrecloop19% , Selfilrec19
Menu, AVcionmenu2, Add, 20 %Nameofrecloop20% , Selfilrec20
Menu, AVcionmenu2, Add
Menu, AVcionmenu2, Add, Limpiar recientes, Selfilrecclear


Menu, util, Add, Sin archivo, accfinarchact
Menu, util, Add, Abrir carpeta de %nameofthisscript1%, openstd
Menu, util, Add, Lista de archivos, vendiini
Menu, util, Add, Lista de programas, vendiinipp

;menucontextual
Menu, AVcionmenu1, Add, Abrir archivo, acc1
Menu, AVcionmenu1, Add ,Archivos recientes , :AVcionmenu2
Menu, AVcionmenu1, Add ,Utilidades , :util
Menu, AVcionmenu1, Add
Menu, AVcionmenu1, Add, Abrir directorio, carp1
Menu, AVcionmenu1, Add, Cambiar imagen, changeimagg
Menu, AVcionmenu1, Add, Renombrar, Renom1
Menu, AVcionmenu1, Add, Fecha de la última copia, fecultcopi
Menu, AVcionmenu1, Add, Borrar copia actual, experr2
Menu, AVcionmenu1, Add
Menu, AVcionmenu1, Add, Configuración , window3
    Menu, AVcionmenu1, Add
	Menu, AVcionmenu1, Add, Reiniciar, Relwd1
    Menu, AVcionmenu1, Add, Exit, normalclose
    
    

    


;Tray---------------------------------------
Menu, Tray, NoStandard
Menu, Tray, Add, Mostrar ventana, nretor 
Menu, Tray, Add 
Menu, Tray, Add, >1  Abrir con programa predeterminado,acc6
Menu, Tray, Add,>2  Abrir con programa 2,open22
Menu, Tray, Add,>3  Abrir con programa 3,proganum31
Menu, Tray, Add
Menu, Tray, Add,Configuración, window3
Menu, Tray, Add,Directorio de las copias, accdax3
Menu, Tray, Add,Restablecer copia anterior,accdax1
Menu, Tray, Add
Menu, Tray, Add,C  Copia con nota unica, acc3
Menu, Tray, Add,B  Copia con nota extraordinaria, acc7
Menu, Tray, Add,A  Copia de seguridad,acc2
Menu, Tray, Add,  
Menu, Tray, Add, Reparar configuración, repairini
Menu, Tray, Add, Reiniciar, Relwd1
Menu, Tray, Add, Exit, normalclose

Menu, Tray, Default, Mostrar ventana



;Tray---------------------------------------






;otros menus de otras ventanas-;otros menus de otras ventanas

;Menu de Configuración
Menu, sellcconf, Add, Copiar ruta rapida , eyvalcop
Menu, sellcconf, Add, Mostrar comando de Ruta rapida ,ShowComDLsvv
Menu, sellcconf, Add, Borrar comando ,EraseComDLsvv
Menu, sellcconf, Add, Abrir lista de archivos, vendiini
Menu, sellcconf, Add
Menu, sellcconf, Add, Copiar de programa ,DLspDLs3
Menu, sellcconf, Add, Mostrar comando de Programas ,ShowComDLspp
Menu, sellcconf, Add, Borrar comando ,EraseComDLspp
Menu, sellcconf, Add, Abrir lista de programas, vendiinipp
Menu, sellcconf, Add
Menu, sellcconf, Add, Reiniciar, Relwd1
Menu, sellcconf, Add, Exit, normalclose

    
    
    
    ;Menu de Estilo
Menu, guistkcmenu, Add, Primavera , temsty3
Menu, guistkcmenu, Add, Verano,temsty4
Menu, guistkcmenu, Add, Otoño,temsty5
Menu, guistkcmenu, Add, Invierno,temsty6
Menu, guistkcmenu, Add
Menu, guistkcmenu, Add, Predeterminado, temsty15
Menu, guistkcmenu, Add, Clásico, temsty2
Menu, guistkcmenu, Add, Formal, temsty1
Menu, guistkcmenu, Add
Menu, guistkcmenu, Add, Acero,temsty9
Menu, guistkcmenu, Add, Desierto,temsty10
Menu, guistkcmenu, Add, Lluvia,temsty7
Menu, guistkcmenu, Add, Sakura,temsty8
Menu, guistkcmenu, Add
Menu, guistkcmenu, Add, Gótico,temsty13
Menu, guistkcmenu, Add, Myosotis,temsty11
Menu, guistkcmenu, Add, Pastizal,temsty14
Menu, guistkcmenu, Add, Sangre,temsty12


Menu, guistkcmenuth, Add, &Temas, :guistkcmenu



;menu secundario
Menu, guistkcmenucont, Add, Color personalizado, slectco1
Menu, guistkcmenucont, Add, Identificar color, startcolor
Menu, guistkcmenucont, Add
Menu, guistkcmenucont, Add, Muestra previa, Probarguiexp


;colores personalizados
Global Palette2
;colores personalizados
;guardar colores al salir de la aplicación
coloresaguardar=0

    
    Menu, guistkcmenunorm, Add, Muestra previa, Probarguiexp
    
    
    
    
    

    
    ;Folders
    
    	if !FileExist(appsapp1)
		FoldExpl_univers=0
	else
	FoldExpl_univers=%appsapp1%


    ;otros menus de otras ventanas-;otros menus de otras ventanas

    
    
If cajaavercconf2=1
{
xecrtimer:=cajaavercconf5*1000
Settimer, te1, %xecrtimer%
    }

    
;establece guko 65 y evita los ceros de mas**********************************************************

;punto principal de carga ..................................................................................................

; ..................................................................................................



    If cajaavercconf3 = 1
    {
        Gui, 1:+AlwaysOnTop
    }
    else
    {
        Gui, 1:-AlwaysOnTop
    }



if  FileExist(elemccopaver)
SplitPath, elemccopaver, nombre1
else
nombre1=No especificado




if accionstarhk=1
{
Hotkey, %guadchotk1% ,termcoxx1
Hotkey, %guadchotk2% ,termcoxx2
Hotkey, %guadchotk3% ,termcoxx3
}

;guigggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg



Gui, Color ,,%stkcg5%
Gui, Font, S%stkcg3% c0x%stkcg4% %stkcgfin2%, %stkcg1%
Gui, Color ,%stkcg6%


Gui, +Hwndgui_id

Gui, Add, Text, r1 gtolleexrettt1   vtollee1  x55 y5 w335 h30 ,



GuiControl,1:, tollee1, %nombre1%


Gui, Add, Text, ggetinfoverc vtollee2 x345 y5 w150 h30  center,

Gui, -MinimizeBox



GuiControl,1:, tollee2, %copactaver1%




;Display image
Gui, Add, Picture,   x3 y3 w50 h50    gacc6 vimgelemet hwndimgelemet      0x200 0x3, 
;Display image

imgelemet_TT := "Abrir el archivo de forma predeterminada`n por el sistema."










Gui, Add, Picture,   vtollee60  gopen22 x70 y35 w20 h20, %A_ScriptDir%\Data\Gui\R21.png

tollee60_TT := "Abrir el archivo con`n  el programa 2."




Gui, Add, Picture,   x120 y35 w20 h20  gproganum31 vproganum31, %A_ScriptDir%\Data\Gui\R31.png

proganum31_TT := "Abrir el archivo con`n  el programa 3."








Gui, Add, Picture,   x195 y35 w30 h20  gwindow3 vwindow3, %A_ScriptDir%\Data\Gui\Conf1.png



Gui, Add, Picture,   x235  y35 w30 h20 vtollee44  gaccdax3, %A_ScriptDir%\Data\Gui\CF1.png
tollee44_TT := "Abrir directorio de las copias."




Gui, Add, Picture,   vtollee41 gaccdax1 x280 y35 w20 h20, %A_ScriptDir%\Data\Gui\R1.png

tollee41_TT := "Restablecer copia anterior."





Gui, Add, Picture,   vtollee31 gacc3  x360 y35 w20 h20 , %A_ScriptDir%\Data\Gui\CC1.png



tollee31_TT := "Generar la copia de seguridad`n con una nota unica."




Gui, Add, Picture,    vtollee30 gacc7 x405 y35 w20 h20 , %A_ScriptDir%\Data\Gui\CB1.png

tollee30_TT := "Generar la copia de seguridad`n con la nota extraordinaria."




Gui, Add, Picture,    vtollee3 gacc2 x450 y35 w20 h20 , %A_ScriptDir%\Data\Gui\CA1.png


tollee3_TT := "Generar la copia de seguridad."




;********************************************************************************
;positionn of gui if is new use in new pc

        
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(55,500,gui_position,"1")
gui_position=%guipositionmod%
				
        
Gui, Show, %gui_position% w500 h55,  %nameofthisscript1% -  %nombre1%


;*******
ventanaprincact=1

OnMessage(0x200, "WM_MOUSEMOVE")


;punto principal de carga ..................................................................................................
entrada=%1%
if entrada=
{
    
    
    
    
if  FileExist(elemccopaver)
{
    file4=%elemccopaver%
    
operaccstart=1
 goto, GuiDropFiles
}
else
{
    
    GuiControl, 1:, imgelemet,  *icon1 *h40 *w40 %A_ScriptDir%\Data\Gui\Guiabout.png
    
elemccopaver=No especificado
        GuiControl,1:, tollee2, 
        GuiControl,1:, tollee1,No especificado
        nombre1=No especificado
        carpetautil=%carpetaes%
        Prog1=No especificado

}




}
else
{
    
 file4=%entrada%

operaccstart=1
 goto, GuiDropFiles
    
}

Return


;para los tooltip 
WM_MOUSEMOVE()
{
    static CurrControl, PrevControl, _TT  ; _TT is kept blank for use by the ToolTip command below.
    CurrControl := A_GuiControl
    If (CurrControl <> PrevControl and not InStr(CurrControl, " "))
    {
        ToolTip  ; Turn off any previous tooltip.
        SetTimer, DisplayToolTip, 3000   ;tiempo de despliege
        PrevControl := CurrControl
    }
    return

    DisplayToolTip:
    SetTimer, DisplayToolTip, Off
    ToolTip % %CurrControl%_TT  ; The leading percent sign tell it to use an expression.
    SetTimer, RemoveToolTip, 6000 ;duracion del  despliege
    return

    RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip
    return
}











GuiContextMenu:

;desactivar cualquier ToolTip que este actualmente desplegado
ToolTip



Menu, AVcionmenu1, Show, %A_GuiX%, %A_GuiY%

return





openstd:

OpenFolderDLs(0,A_ScriptDir,0,FoldExpl_univers)

return








carp1:
If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }
    
run, %dir1%
    

return



Renom1:


If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }

    If cajaavercconf3 = 1
    {
        Gui, 1:-AlwaysOnTop
    }




Gui, vaa2:Font, Norm
Gui, vaa2:Color ,,%stkcg5%
Gui, vaa2:Font, c0x%stkcg4%
Gui, vaa2:Color ,%stkcg6%




Gui, vaa2:+owner1 ; Make the main window (Gui #1) the owner of the "about box".
Gui 1:+Disabled  ; Disable main window.
Gui, vaa2:-MinimizeBox
Gui, vaa2:Add, Edit, vnewnamevalor x12 y9 w400 h20 ,%nombre1%
Gui, vaa2:Add, Button , vtollee152 gejeccnom x192 y39 w40 h20 default, Ok

; Generated using SmartGUI Creator 4.0
Gui, vaa2:Show, Center h74 w429, %nameofthisscript1% - Rename
return



vaa2Guiclose:

Gui 1:-Disabled  ; Disable main window.
Gui, vaa2:Destroy
return



ejeccnom:
Gui, vaa2:Submit, NoHide


if newnamevalor=
goto vaa2Guiclose

Namenewelement1=%newnamevalor%.%ext1%


Gui, vaa2:Destroy



FileMove, %elemccopaver% ,%dir1%\%Namenewelement1% ,0
if ErrorLevel
{ 
MsgBox 0x40030, AVersion, Error al renombrar el archivo. , 2
goto vaa2Guiclose
}


If cajaavercconf1= 0
  {    
        if carpinespecial=0
      goto noproccanom2
        else
        {
            
           FileMoveDir, %carpetaes%\Old_%name_no_ext1% ,%carpetaes%\Old_%newnamevalor% ,0
if ErrorLevel
{ 
MsgBox 0x40030, AVersion, Error al renombrar la carpeta. , 2
goto vaa2Guiclose
     
     } 
                
        }
    }
    else
    {

FileMoveDir, %dir1%\Old_%name_no_ext1% ,%dir1%\Old_%newnamevalor% ,0
if ErrorLevel
{ 
MsgBox 0x40030, AVersion, Error al renombrar la carpeta. , 2
goto vaa2Guiclose
}
    }




noproccanom2:

FileMove, %A_ScriptDir%\Data\i\%nombre1%.ini,  %A_ScriptDir%\Data\i\%newnamevalor%.%ext1%.ini ,0
if ErrorLevel
{ 
MsgBox 0x40030, AVersion, Error al renombrar el archivo ini. , 2
goto vaa2Guiclose
}


iniWrite,%dir1%\%Namenewelement1%, %A_ScriptDir%\Data\i\%newnamevalor%.%ext1%.ini, AVersion, file


Gui 1:-Disabled  ; Disable main window.


file4=%dir1%\%Namenewelement1%

 openinter=1
 
goto guidropfiles

return



;recibir archivo arrastrar y soltar

GuiDropFiles:
{

if openinter=1
goto, accgenav1


if operaccstart=1
{
operaccstart=0
 goto, accgenav1
}



file4=%A_GuiEvent%



if nombre1 != No especificado
    {

iniWrite, %valorgeneralaverc%, %CLAVEain2%,  AVersion, valor
   }


if nombre1=No especificado
goto, accgenav1




accgenav1:

elemccopaver=%file4%
Sleep 100


;se presupone qeue el archivo no es experimental
 ESTOESEXPERIME=0







SplitPath, elemccopaver, nombre1, dir1, ext1, name_no_ext1, drive1
If ext1=
  {    
     return
     }
     





if  nombre1=No especificado
goto notwriterecfile



;comparacion de nombres de cada archivo
Numcompname1=0
Loop 20
{
    EnvAdd, Numcompname1,1
concompname3:="Nameofrecloop" Numcompname1


if nombre1=% %concompname3%
goto notwriterecfile
}



; nuevo elemento
Archrecie0++

if Archrecie0>20
    Archrecie0=1




IniWrite, %elemccopaver%, %CLAVEaini%, Recientes, %Archrecie0%





TmpAVarchre1:="Archrecie" Archrecie0
TmpAVarchre2=% %TmpAVarchre1%
SplitPath, TmpAVarchre2, Nameofrec



conNameofrecloop:="Nameofrecloop"Archrecie0
%conNameofrecloop%:=nombre1
%TmpAVarchre1%:=elemccopaver



Menu, AVcionmenu2, Rename,%Archrecie0% %Nameofrec%,%Archrecie0% %nombre1%



notwriterecfile:





     


     
     
     
     
     
     
     
     

GuiControl,1:, tollee1, %nombre1%


If cajaavercconf1= 0
  {    
        if carpinespecial=0
        carpetautil=%carpetaes%
        else
            carpetautil=%carpetaes%\Old_%name_no_ext1%
     
     }
    else
    carpetautil=%dir1%\Old_%name_no_ext1%




;--------------------------------------------------
  ;funciones para guardar nuevos valores un nuev valor al sistema

CLAVEain2=%A_ScriptDir%\Data\i\%nombre1%.ini


if  !FileExist(CLAVEain2)
{ 

;punto principal de carga ..................................................................................................
valorgeneralaverc=0


iniWrite,%elemccopaver%, %CLAVEain2%, AVersion, file
iniWrite, 0, %CLAVEain2%,  AVersion, valor


iniWrite, No especificado, %CLAVEain2%,  AVersion, Imagen

iniWrite, No especificado, %CLAVEain2%,  AVersion, Prog
iniWrite, No especificado, %CLAVEain2%,  AVersion, Prog2



;para experimentar
iniWrite, 0, %CLAVEain2%,  Experi, a


iniWrite, %defectavanceval%, %CLAVEain2%,  Avance, a

iniWrite, %dfectvalavercest1%, %CLAVEain2%,  Sec, 1
iniWrite, %dfectvalavercest2%, %CLAVEain2%,  Sec, 2
iniWrite, %dfectvalavercest3%, %CLAVEain2%,  Sec, 3
iniWrite, %dfectvalavercest4%, %CLAVEain2%,  Sec, 4
iniWrite, %dfectvalavercest5%, %CLAVEain2%,  Sec, 5
iniWrite, %dfectvalavercest6%, %CLAVEain2%,  Sec, 6
iniWrite, %dfectvalavercest7%, %CLAVEain2%,  Sec, 7
iniWrite, %dfectvalavercest8%, %CLAVEain2%,  Sec, 8
iniWrite, %dfectvalavercest9%, %CLAVEain2%,  Sec, 9
iniWrite, %dfectvalavercest10%, %CLAVEain2%,  Sec, 10
iniWrite, %dfectvalavercest11%, %CLAVEain2%,  Sec, 11
iniWrite, %dfectvalavercest12%, %CLAVEain2%,  Sec, 12
iniWrite, %dfectvalavercest13%, %CLAVEain2%,  Sec, 13
iniWrite, %dfectvalavercest14%, %CLAVEain2%,  Sec, 14
iniWrite, %dfectvalavercest15%, %CLAVEain2%,  Sec, 15
iniWrite, %dfectvalavercest16%, %CLAVEain2%,  Sec, 16
iniWrite, %dfectvalavercest17%, %CLAVEain2%,  Sec, 17
iniWrite, %dfectvalavercest18%, %CLAVEain2%,  Sec, 18
iniWrite, %dfectvalavercest19%, %CLAVEain2%,  Sec, 19

;registro de copias y las fechas
iniWrite, 0, %CLAVEain2%,  Ultimacopiavaloract, a






;registro de copias y las fechas
iniread, Valoacdelete, %CLAVEain2%,  Ultimacopiavaloract, a

IniRead, Prog1, %CLAVEain2%,  AVersion, Prog
IniRead, Prog2, %CLAVEain2%,  AVersion, Prog2

IniRead, parameimg, %CLAVEain2%,  AVersion, Imagen

;para experimentar
iniread, ESTOESEXPERIME, %CLAVEain2%,  Experi, a
iniread, Rutaccc, %CLAVEain2%,  Experi, c

if Rutaccc=
Rutaccc=

iniread, ancencecopi, %CLAVEain2%,  Avance, a

iniread, activarletra1, %CLAVEain2%,  Sec, 1
iniread, positguardav2, %CLAVEain2%,  Sec, 2
iniread, activarletra3, %CLAVEain2%,  Sec, 3
iniread, positguardav4, %CLAVEain2%,  Sec, 4
iniread, activarletra5, %CLAVEain2%,  Sec, 5
iniread, positguardav6, %CLAVEain2%,  Sec, 6
iniread, activarletra7, %CLAVEain2%,  Sec, 7
iniread, positguardav8, %CLAVEain2%,  Sec, 8
iniread, activarletra9, %CLAVEain2%,  Sec, 9
iniread, positguardav10, %CLAVEain2%,  Sec, 10
iniread, activarletra11, %CLAVEain2%,  Sec, 11
iniread, positguardav12, %CLAVEain2%,  Sec, 12
iniread, activarletra13, %CLAVEain2%,  Sec, 13
iniread, positguardav14, %CLAVEain2%,  Sec, 14
iniread, activarletra15, %CLAVEain2%,  Sec, 15
iniread, positguardav16, %CLAVEain2%,  Sec, 16
iniread, activarletra17, %CLAVEain2%,  Sec, 17
iniread, positguardav18, %CLAVEain2%,  Sec, 18
iniread, activarletra19, %CLAVEain2%,  Sec, 19

if positguardav2=
positguardav2=

if positguardav4=
positguardav4=

if positguardav6=
positguardav6=

if positguardav8=
positguardav8=

if positguardav10=
positguardav10=


if positguardav12=
positguardav12=


if positguardav14=
positguardav14=


if positguardav16=
positguardav16=


if positguardav18=
positguardav18=



}





if  FileExist(CLAVEain2)
{  

  
    ;nesesario para elementos con el mismo nombre
    
    IniRead,Fileant1, %CLAVEain2%, AVersion, file
    
    SplitPath, Fileant1, , , , , driveant1
    
      Fileant2=%Fileant1%
    if driveant1=
    Fileant2=%driveorig%%Fileant1%
    
          Fileant3=%elemccopaver%
    if drive1=
    Fileant3=%driveorig%%elemccopaver%







    if  Fileant3!=%Fileant2%
    {
    
    if  !FileExist(Fileant2)
{
    MsgBox 0x40024, %nameofthisscript1% - Verificación, Ya existe un registro de otro archivo con el mismo nombre: %nombre1%  y del cual No se detecta su existencia. Es posible que el archivo fue reubicado. En su defecto elimine el ini correspondiente o cree otra instancia de %nameofthisscript1% especial. Se sustituirá la dirección original con la nueva ubicación ¿Desea proceder?
 IfMsgBox No, {
                  goto Relwd3 
              }
    }
    else
    {
        
        MsgBox 0x40024, %nameofthisscript1% - Verificación, Ya existe un registro de otro archivo con el mismo nombre: %nombre1% y del cual Si se detecta su existencia. Elimine el ini correspondiente. Cree otra instancia de %nameofthisscript1% especial o continue y se sustituirá la dirección original con la nueva ubicación con los datos del anterior registro ¿Desea proceder?
 IfMsgBox No, {
                  goto Relwd3 
              }
    }
    
}
    
    
    
    
    
;**********************************************************
IniRead, Prog1, %CLAVEain2%,  AVersion, Prog
IniRead, Prog2, %CLAVEain2%,  AVersion, Prog2
IniRead, valorgeneralaverc, %CLAVEain2%,  AVersion, valor
IniRead, parameimg, %CLAVEain2%,  AVersion, Imagen



;registro de copias y las fechas
iniread, Valoacdelete, %CLAVEain2%,  Ultimacopiavaloract, a
;para experimentar
iniread, ESTOESEXPERIME, %CLAVEain2%,  Experi, a

iniread, Rutaccc, %CLAVEain2%,  Experi, c

if Rutaccc=
Rutaccc=



iniread, ancencecopi, %CLAVEain2%,  Avance, a

iniread, activarletra1, %CLAVEain2%,  Sec, 1
iniread, positguardav2, %CLAVEain2%,  Sec, 2
iniread, activarletra3, %CLAVEain2%,  Sec, 3
iniread, positguardav4, %CLAVEain2%,  Sec, 4
iniread, activarletra5, %CLAVEain2%,  Sec, 5
iniread, positguardav6, %CLAVEain2%,  Sec, 6
iniread, activarletra7, %CLAVEain2%,  Sec, 7
iniread, positguardav8, %CLAVEain2%,  Sec, 8
iniread, activarletra9, %CLAVEain2%,  Sec, 9
iniread, positguardav10, %CLAVEain2%,  Sec, 10
iniread, activarletra11, %CLAVEain2%,  Sec, 11
iniread, positguardav12, %CLAVEain2%,  Sec, 12
iniread, activarletra13, %CLAVEain2%,  Sec, 13
iniread, positguardav14, %CLAVEain2%,  Sec, 14
iniread, activarletra15, %CLAVEain2%,  Sec, 15
iniread, positguardav16, %CLAVEain2%,  Sec, 16
iniread, activarletra17, %CLAVEain2%,  Sec, 17
iniread, positguardav18, %CLAVEain2%,  Sec, 18
iniread, activarletra19, %CLAVEain2%,  Sec, 19





;punto principal de carga ..................................................................................................

}


;establecer controles**********************************************************
GuiControl,1:, tollee1, %nombre1%
WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%





;orden entrada DLs
if ordenimgdls1 !=0
{
conordenimgdls:= ordenimgdls1 "|" ordenimgdls2
iniWrite, %conordenimgdls%, %CLAVEain2%,  AVersion, Imagen

parameimg:= conordenimgdls
ordenimgdls1=0
ordenimgdls2=0

}


;Identific de ico o imag
conparameimg:=StrSplit(parameimg, "|")

conparameimg1=% conparameimg[1]
conparameimg2=% conparameimg[2]

if  (conparameimg1=""    or    conparameimg1="ERROR"    or      conparameimg1="No especificado")
{
    elemccopaverimg1=0
    elemccopaverimg2=0
    
}
else
{
    
    elemccopaverimg1=%conparameimg1%
    elemccopaverimg2=%conparameimg2%
    
}

  Gui, 1:Show,  ,   %nameofthisscript1% - %nombre1%
;imagen del icono
;ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
ShowMyImageDLs(elemccopaver,0,elemccopaverimg1,elemccopaverimg2,{EXTRALARGE: 0x02},"1","imgelemet","imgelemet",50,50)
;imagen del icono  
}









;fin a una operacion interna
openinter=0

Set_Number_AV(2)

    return
    
    
    
    
    
Selfilrecclear:


MsgBox 0x40024, %nameofthisscript1% - Verificación,¿Desea continuar?
IfMsgBox No, {
              Return
              }




IniWrite, 0, %CLAVEaini%, Recientes, 0
Archrecie0=0
Numcompname1=0
Loop 20
{
    EnvAdd, Numcompname1,1
IniWrite,No especificado, %CLAVEaini%, Recientes, %Numcompname1%
}


goto Relwd1
return
    
    
    

Selfilrec1:
NumSelfilrec=1
goto Selfilrecfin
return


Selfilrec2:
NumSelfilrec=2
goto Selfilrecfin
return


Selfilrec3:
NumSelfilrec=3
goto Selfilrecfin
return


Selfilrec4:
NumSelfilrec=4
goto Selfilrecfin
return


Selfilrec5:
NumSelfilrec=5
goto Selfilrecfin
return


Selfilrec6:
NumSelfilrec=6
goto Selfilrecfin
return


Selfilrec7:
NumSelfilrec=7
goto Selfilrecfin
return


Selfilrec8:
NumSelfilrec=8
goto Selfilrecfin
return


Selfilrec9:
NumSelfilrec=9
goto Selfilrecfin
return


Selfilrec10:
NumSelfilrec=10
goto Selfilrecfin
return



Selfilrec11:
NumSelfilrec=11
goto Selfilrecfin
return


Selfilrec12:
NumSelfilrec=12
goto Selfilrecfin
return


Selfilrec13:
NumSelfilrec=13
goto Selfilrecfin
return


Selfilrec14:
NumSelfilrec=14
goto Selfilrecfin
return


Selfilrec15:
NumSelfilrec=15
goto Selfilrecfin
return


Selfilrec16:
NumSelfilrec=16
goto Selfilrecfin
return


Selfilrec17:
NumSelfilrec=17
goto Selfilrecfin
return


Selfilrec18:
NumSelfilrec=18
goto Selfilrecfin
return


Selfilrec19:
NumSelfilrec=19
goto Selfilrecfin
return


Selfilrec20:
NumSelfilrec=20
goto Selfilrecfin
return





Selfilrecfin:
filepre:="Archrecie" NumSelfilrec
file4=% %filepre%

operaccstart=1

 goto, GuiDropFiles

return








    
    
getinfoverc:


If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }
	
	

        GuiControlget, carptes,1:, tollee2
        

        
clipboard=%comunVGACPSAV%
setwindowcopy()
return







tolleexrettt1:
If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }
	
	


clipboard=%elemccopaver%
setwindowcopy()
return







acc1:

Gui 1:+Disabled 
FileSelectFile, file2, 3, , Open a file
if file2=
  {  
Gui 1:-Disabled 
    return
    }
    else
 {  
    
    
file4=%file2%

operaccstart=1

Gui 1:-Disabled 
 goto, GuiDropFiles

}
return


















































;operaciones de copiado principales---operaciones de copiado principales---operaciones de copiado principales
;operaciones de copiado principales---operaciones de copiado principales---operaciones de copiado principales
;operaciones de copiado principales---operaciones de copiado principales---operaciones de copiado principales
;operaciones de copiado principales---operaciones de copiado principales---operaciones de copiado principales

te1:

If elemccopaver= No especificado
    {

        cajaavercconf2=0
        IniWrite, 0, %CLAVEaini%, Cajas, b
         cajaavercconf4=0
 MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
Settimer, te1, off
return
}


 
 
If cajaavercconf2=1
{
xecrtimer:=cajaavercconf5*1000
Settimer, te1, %xecrtimer%
    }

;Una vez cocluido la accion del tiempo se procede a copiar el archivo


termcoxx1:
acc2:


  Set_Number_AV(1)
    
    
    
 ARcd1=%carpetautil%\%name_no_ext1%-%VGACPSAV%-%valabus%.%ext1%  
   
   
exitoofcopy:=CopiaArchivo_AV(ARcd1)
   
   if exitoofcopy=0
{
  Set_Number_AV(0)
}
   else
	 Efecto_Start("1","tollee3")

 
   
   


return











termcoxx2:
acc7:


  Set_Number_AV(1)


ARcd1=%carpetautil%\%name_no_ext1%-%VGACPSAV%-%valabus2%.%ext1%

exitoofcopy:=CopiaArchivo_AV(ARcd1)


   if exitoofcopy=0
{
  Set_Number_AV(0)
}
   else
	 Efecto_Start("1","tollee30")


return









termcoxx3:
acc3:
If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información,  Ningun elemento seleccionado., 1
return
    }

 If cajaavercconf3 = 1
    {
        Gui, vaa1:+AlwaysOnTop
    }


Gui, vaa1:Font, Norm
Gui, vaa1:Color ,,%stkcg5%
Gui, vaa1:Font, c0x%stkcg4%
Gui, vaa1:Color ,%stkcg6%




Gui, vaa1:+owner1 ; Make the main window (Gui #1) the owner of the "about box".
Gui +Disabled  ; Disable main window.
Gui, vaa1:-MinimizeBox
Gui, vaa1:Add, Edit, vedespaco1 x12 y9 w400 h20 ,
Gui, vaa1:Add, Button , vtollee52 genra1 x172 y39 w80 h20 default, Generar copia
tollee52_TT :=  "Lo mas específico posible."
; Generated using SmartGUI Creator 4.0
Gui, vaa1:Show, Center h70 w424, %nameofthisscript1% - Nota especial


Return





enra1:
Gui, vaa1:Submit, NoHide

if  !FileExist(elemccopaver)
        {
MsgBox 0x40040, %nameofthisscript1% - Información, Elemento inexistente., 2
return
    }


GuiControlGet, vaes2 ,vaa1:, edespaco1


FileCopy, %A_ScriptDir%\Data\1A ,%A_ScriptDir%\Data\i\0\%vaes2% ,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,  Algunos de los carecteres no son soportados por el sistema de archivos. , 2
Return
}
FileDelete, %A_ScriptDir%\Data\i\0\%vaes2%




Gui, 1:-Disabled
Gui vaa1:Destroy

    If cajaavercconf3 = 1
    {
        Gui, 1:+AlwaysOnTop
    }







;----------------------------------------------------accion de copia
  Set_Number_AV(1)

ARcd1=%carpetautil%\%name_no_ext1%-%VGACPSAV%-%vaes2%.%ext1%


exitoofcopy:=CopiaArchivo_AV(ARcd1)
   
   
   
   
   if exitoofcopy=0
{
  Set_Number_AV(0)
}
else
	 Efecto_Start("1","tollee31")

   
return







vaa1GuiClose:

Gui, 1:-Disabled
Gui vaa1:Destroy

    If cajaavercconf3 = 1
    {
        Gui, 1:+AlwaysOnTop
    }


return


























;copia al cierre de la aplicasión 
normalclose:



;----------------------------------------------------------------
If elemccopaver= No especificado
goto, laexit
   

    


If cajaavercconf4= 1
  {  
    
  Set_Number_AV(1)
 
 
 
ARcd1=%carpetautil%\%name_no_ext1%-%VGACPSAV%-%valabus%-Exit.%ext1%


exitoofcopy:=CopiaArchivo_AV(ARcd1)
   
   if exitoofcopy=0
{
  Set_Number_AV(0)
}
   
}


goto, laexit
Return




;operaciones de copiado principales---operaciones de copiado principales---operaciones de copiado principales
;operaciones de copiado principales---operaciones de copiado principales---operaciones de copiado principales
;operaciones de copiado principales---operaciones de copiado principales---operaciones de copiado principales
;operaciones de copiado principales---operaciones de copiado principales---operaciones de copiado principales





































acc6:
If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }

   
     Run, %elemccopaver%  , ,  UseErrorLevel
if (ErrorLevel = "ERROR")
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return
}

 Efecto_Start("1","imgelemet")
return



GuiClose:


if  ventanaprincact=0
goto nretor




;si la gui esta minimizada
Gui, 1:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%


Gui, 1:Hide



;ventanaactiva
ventanaprincact=0



return







nretor:




if  ventanaprincact=1
goto GuiClose


Gui, 1:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(55,500,gui_position,"1")
gui_position=%guipositionmod%

Gui, 1:Show, %gui_position%

;ventanaactiva
ventanaprincact=1


return














changeimagg:

If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información,  Ningun elemento seleccionado., 1
return
    }


Gui, chaimag: -MinimizeBox
Gui, 1:+Disabled

Gui, chaimag:Font, Norm
Gui, chaimag:Color ,,%stkcg5%
Gui, chaimag:Font, c0x%stkcg4%
Gui, chaimag:Color ,%stkcg6%

if elemccopaverimg1=0
elemccopaverimg1=

if elemccopaverimg2=0
elemccopaverimg2=



Gui, chaimag:Add, Text, x12 y13 w50 h20 vchaimagcont3 center , Imagen
Gui, chaimag:Add, Edit, x62 y9 w400 h20 vchaimagcont1, %elemccopaverimg1%



Gui, chaimag:Add, Text, x12 y43 w290 h20 vchaimagcont4 center , Número del icono en caso de usar  una librería de iconos.
Gui, chaimag:Add, Edit, x302 y39 w40 h20 vchaimagcont2  center, %elemccopaverimg2%


Gui, chaimag:Add, Button, x372 y39 w40 h20 vchaimagcont7 gchaimagcont7 , Abrir

Gui, chaimag:Add, Button, x422 y39 w40 h20 vchaimagcont5 gchaimagcont6 , Ok
; Generated using SmartGUI Creator 4.0
Gui, chaimag:Show, center h70 w470, %nameofthisscript1% - Cambio de imagen
Return




chaimagcont7:

Gui, chaimag:+Disabled
FileSelectFile, imagefile, 3, , Abrir archivo de imagen, (*.*)
if imagefile =
  {  
Gui, chaimag:-Disabled
    return
    }
	
	
	GuiControl,chaimag:,chaimagcont1,% imagefile
	Gui, chaimag:-Disabled
	
	
return



chaimagcont6:
Gui, chaimag:Submit, NoHide


getimg:= chaimagcont1 "|" chaimagcont2
iniWrite, %getimg%, %CLAVEain2%,  AVersion, Imagen


setwindowok()

goto Relwd1

Return


chaimagGuiClose:
Gui, chaimag:Destroy
Gui, 1:-Disabled
Return





















;guigggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg
window2:

If elemccopaver= No especificado
      {  
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
      return
    }



Ca=
(Join|
0|
1|
2|
3|
4|
5|
6|
7|
8|
9|
@|
A|
B|
C|
D|
E|
F|
G|
H|
I|
J|
K|
L|
M|
N|
O|
P|
Q|
R|
S|
T|
U|
V|
W|
X|
Y|
Z|
)




realsigposit1=0
realsigposit2=1
realsigposit3=2
realsigposit4=3
realsigposit5=4
realsigposit6=5
realsigposit7=6
realsigposit8=7
realsigposit9=8
realsigposit10=9
realsigposit11=0
realsigposit12=1
realsigposit13=2
realsigposit14=3
realsigposit15=4
realsigposit16=5
realsigposit17=6
realsigposit18=7
realsigposit19=8
realsigposit20=9
realsigposit21=10
realsigposit22=11
realsigposit23=12
realsigposit24=13
realsigposit25=14
realsigposit26=15
realsigposit27=16
realsigposit28=17
realsigposit29=18
realsigposit30=19
realsigposit31=20
realsigposit32=21
realsigposit33=22
realsigposit34=23
realsigposit35=24
realsigposit36=25
realsigposit37=26
realsigposit38=27







 If cajaavercconf3 = 1
    {
        Gui, sni:+AlwaysOnTop
    }











Gui, rgr1:+Disabled

Gui, sni:Font, Norm
Gui, sni:Color ,,%stkcg5%
Gui, sni:Font, c0x%stkcg4%
Gui, sni:Color ,%stkcg6%


Gui, sni:+ownerrgr1 ; Make the main window (Gui #1) the owner of the "about box".


Gui, sni:Add, DropDownList, x12 y9 w40 h20 r30  vidlnumalfa1  hwndrgr1CON1 AltSubmit, %Ca%
CtlColors.Attach(rgr1CON1,stkcg5,stkcg4)
GuiControl, sni:Choose, idlnumalfa1, 1

Gui, sni:Add, Edit, x62 y9 w40 h20 vidlnu2, %positguardav2%
Gui, sni:Add, DropDownList, x112 y9 w40 h21 r30  vidlnumalfa3  hwndrgr1CON2 AltSubmit, %Ca%
CtlColors.Attach(rgr1CON2,stkcg5,stkcg4)
GuiControl, sni:Choose, idlnumalfa3, 1

Gui, sni:Add, Edit, x162 y9 w40 h20 vidlnu4, %positguardav4%
Gui, sni:Add, DropDownList, x212 y9 w40 h21 r30  vidlnumalfa5  hwndrgr1CON3 AltSubmit, %Ca%
CtlColors.Attach(rgr1CON3,stkcg5,stkcg4)
GuiControl, sni:Choose, idlnumalfa5, 1

Gui, sni:Add, Edit, x262 y9 w40 h20 vidlnu6, %positguardav6%
Gui, sni:Add, DropDownList, x312 y9 w40 h21 r30  vidlnumalfa7  hwndrgr1CON4 AltSubmit, %Ca%
CtlColors.Attach(rgr1CON4,stkcg5,stkcg4)
GuiControl, sni:Choose, idlnumalfa7, 1

Gui, sni:Add, Edit, x362 y9 w40 h20 vidlnu8, %positguardav8%
Gui, sni:Add, DropDownList, x412 y9 w40 h21 r30  vidlnumalfa9  hwndrgr1CON5 AltSubmit, %Ca%
CtlColors.Attach(rgr1CON5,stkcg5,stkcg4)
GuiControl, sni:Choose, idlnumalfa9, 1

Gui, sni:Add, Edit, x462 y9 w40 h20 vidlnu10, %positguardav10%
Gui, sni:Add, DropDownList, x512 y9 w40 h21 r30  vidlnumalfa11  hwndrgr1CON6 AltSubmit, %Ca%
CtlColors.Attach(rgr1CON6,stkcg5,stkcg4)
GuiControl, sni:Choose, idlnumalfa11, 1

Gui, sni:Add, Edit, x562 y9 w40 h20 vidlnu12, %positguardav12%
Gui, sni:Add, DropDownList, x612 y9 w40 h21 r30  vidlnumalfa13  hwndrgr1CON7 AltSubmit, %Ca%
CtlColors.Attach(rgr1CON7,stkcg5,stkcg4)
GuiControl, sni:Choose, idlnumalfa13, 1

Gui, sni:Add, Edit, x662 y9 w40 h20 vidlnu14, %positguardav14%
Gui, sni:Add, DropDownList, x712 y9 w40 h21 r30  vidlnumalfa15  hwndrgr1CON8 AltSubmit, %Ca%
CtlColors.Attach(rgr1CON8,stkcg5,stkcg4)
GuiControl, sni:Choose, idlnumalfa15, 1

Gui, sni:Add, Edit, x762 y9 w40 h20 vidlnu16, %positguardav16%
Gui, sni:Add, DropDownList, x812 y9 w40 h21 r30  vidlnumalfa17  hwndrgr1CON9 AltSubmit, %Ca%
CtlColors.Attach(rgr1CON9,stkcg5,stkcg4)
GuiControl, sni:Choose, idlnumalfa17, 1

Gui, sni:Add, Edit, x862 y9 w40 h20 vidlnu18, %positguardav18%
Gui, sni:Add, DropDownList, x912 y9 w40 h21 r30  vidlnumalfa19  hwndrgr1CON10 AltSubmit, %Ca%
CtlColors.Attach(rgr1CON10,stkcg5,stkcg4)
GuiControl, sni:Choose, idlnumalfa19, 1


Gui,  sni:Add, Text, x620 y44 w250 h20 vobtvraini gobtvraini, Valor real del ini: %valorgeneralaverc%

Gui, sni:Add, Button, x12 y39 w150 h20  vgceracc ggceracc , Mediante valor real del ini
Gui, sni:Add, Edit, x170 y39 w130 h20 vgceraccedit number,



Gui, sni:Add, Button, x802 y39 w150 h20 vcnaccok gcnaccok , Mediante las listas
; Generated using SmartGUI Creator 4.0
Gui, sni:Show, Center h70 w968, %nameofthisscript1% - Número actual de copia



return



sniGuiClose:
Gui, rgr1:-Disabled
Gui sni:Destroy
Return

cnaccok:


Gui, sni:Submit, NoHide














YURR1=%idlnu18%1%idlnu16%1%idlnu14%1%idlnu12%1%idlnu10%1%idlnu8%1%idlnu6%1%idlnu4%1%idlnu3%1%idlnu1%



if  !FileExist(A_ScriptDir . "\Data\i\0")
FileCreateDir, %A_ScriptDir%\Data\i\0

FileCopy, %A_ScriptDir%\Data\1A ,%A_ScriptDir%\Data\i\0\%YURR1% ,1
if ErrorLevel
{ 
FileRemoveDir, %A_ScriptDir%\Data\i\0,1
MsgBox 0x40010, %nameofthisscript1% - Error,  Algunos de los carecteres no son soportados por el sistema de archivos. , 2

Return

}
FileRemoveDir, %A_ScriptDir%\Data\i\0,1





reac1 := "realsigposit"idlnumalfa19
reac2 := "realsigposit"idlnumalfa17
reac3 := "realsigposit"idlnumalfa15
reac4 := "realsigposit"idlnumalfa13
reac5 := "realsigposit"idlnumalfa11
reac6 := "realsigposit"idlnumalfa9
reac7 := "realsigposit"idlnumalfa7
reac8 := "realsigposit"idlnumalfa5
reac9 := "realsigposit"idlnumalfa3
reac10 := "realsigposit"idlnumalfa1



if idlnumalfa19>10
activarletra19=1
else
    activarletra19=0

if idlnumalfa17>10
activarletra17=1
else
    activarletra17=0

if idlnumalfa15>10
activarletra15=1    
else
    activarletra15=0

if idlnumalfa13>10
activarletra13=1    
else
    activarletra13=0

if idlnumalfa11>10
activarletra11=1       
else
    activarletra11=0


if idlnumalfa9>10
activarletra9=1
else
    activarletra9=0


if idlnumalfa7>10
activarletra7=1
else
    activarletra7=0

if idlnumalfa5>10
 activarletra5=1  
 else
    activarletra5=0
    
if idlnumalfa3>10
activarletra3=1 
else
    activarletra3=0

if idlnumalfa1>10
activarletra1=1
else
    activarletra1=0





addrestt1=% %reac1%

addrestt2=% %reac2%
addrestt3=% %reac3%
addrestt4=% %reac4%
addrestt5=% %reac5%
addrestt6=% %reac6%
addrestt7=% %reac7%
addrestt8=% %reac8%
addrestt9=% %reac9%

addrestt10=% %reac10%




;serializacpppppppppp

if activarletra19=1
 setxx1=27
else
  setxx1=10


if activarletra17=1
 setxx2=27
else
  setxx2=10



if activarletra15=1
 setxx3=27
else
  setxx3=10


if activarletra13=1
 setxx4=27
else
  setxx4=10
  
  
if activarletra11=1
 setxx5=27
else
  setxx5=10
  
  
  
  if activarletra9=1
 setxx6=27
else
  setxx6=10
  
  
  
  if activarletra7=1
 setxx7=27
else
  setxx7=10
  
  
  
  if activarletra5=1
 setxx8=27
else
  setxx8=10
  
  
    if activarletra3=1
 setxx9=27
else
  setxx9=10
  
  
    if activarletra1=1
 setxx10=27
else
  setxx10=10
  
  






multip2:=setxx1
multip3:=setxx1* setxx2
multip4:=multip3*setxx3
multip5:=multip4*setxx4
multip6:=multip5*setxx5
multip7:=multip6*setxx6
multip8:=multip7*setxx7
multip9:=multip8*setxx8
multip10:=multip9*setxx9


if addrestt1=
addrestt1=0



if addrestt2=
addrestt2=0

if addrestt3=
addrestt3=0

if addrestt4=
addrestt4=0

if addrestt5=
addrestt5=0

if addrestt6=
addrestt6=0

if addrestt7=
addrestt7=0

if addrestt8=
addrestt8=0


if addrestt9=
addrestt9=0


if addrestt10=
addrestt10=0




valoopt1:=addrestt1


valoopt2:=addrestt2*multip2



  valoopt3:=addrestt3*multip3


valoopt4:=addrestt4*multip4


valoopt5:=addrestt5*multip5




valoopt6:=addrestt6*multip6

valoopt7:=addrestt7*multip7


valoopt8:=addrestt8*multip8

valoopt9:=addrestt9*multip9

valoopt10:=addrestt10*multip10






prenjm3:=valoopt1+valoopt2+valoopt3+valoopt4+valoopt5
prenjm4:=valoopt6+valoopt7+valoopt8+valoopt9+valoopt10


valornumericoverav2:=prenjm3+prenjm4





















iniWrite, %valornumericoverav2%, %CLAVEain2%,  AVersion, valor
iniWrite, %activarletra1%, %CLAVEain2%,  Sec, 1
iniWrite, %idlnu2%, %CLAVEain2%,  Sec, 2
iniWrite, %activarletra3%, %CLAVEain2%,  Sec, 3
iniWrite, %idlnu4%, %CLAVEain2%,  Sec, 4
iniWrite, %activarletra5%, %CLAVEain2%,  Sec, 5
iniWrite, %idlnu6%, %CLAVEain2%,  Sec, 6
iniWrite, %activarletra7%, %CLAVEain2%,  Sec, 7
iniWrite, %idlnu8%, %CLAVEain2%,  Sec, 8
iniWrite, %activarletra9%, %CLAVEain2%,  Sec, 9
iniWrite, %idlnu10%, %CLAVEain2%,  Sec, 10
iniWrite, %activarletra11%, %CLAVEain2%,  Sec, 11
iniWrite, %idlnu12%, %CLAVEain2%,  Sec, 12
iniWrite, %activarletra13%, %CLAVEain2%,  Sec, 13
iniWrite, %idlnu14%, %CLAVEain2%,  Sec, 14
iniWrite, %activarletra15%, %CLAVEain2%,  Sec, 15
iniWrite, %idlnu16%, %CLAVEain2%,  Sec, 16
iniWrite, %activarletra17%, %CLAVEain2%,  Sec, 17
iniWrite, %idlnu18%, %CLAVEain2%,  Sec, 18
iniWrite, %activarletra19%, %CLAVEain2%,  Sec, 19




sleep, 100




IniRead, valorgeneralaverc, %CLAVEain2%,  AVersion, valor

iniread, activarletra1, %CLAVEain2%,  Sec, 1
iniread, positguardav2, %CLAVEain2%,  Sec, 2
iniread, activarletra3, %CLAVEain2%,  Sec, 3
iniread, positguardav4, %CLAVEain2%,  Sec, 4
iniread, activarletra5, %CLAVEain2%,  Sec, 5
iniread, positguardav6, %CLAVEain2%,  Sec, 6
iniread, activarletra7, %CLAVEain2%,  Sec, 7
iniread, positguardav8, %CLAVEain2%,  Sec, 8
iniread, activarletra9, %CLAVEain2%,  Sec, 9
iniread, positguardav10, %CLAVEain2%,  Sec, 10
iniread, activarletra11, %CLAVEain2%,  Sec, 11
iniread, positguardav12, %CLAVEain2%,  Sec, 12
iniread, activarletra13, %CLAVEain2%,  Sec, 13
iniread, positguardav14, %CLAVEain2%,  Sec, 14
iniread, activarletra15, %CLAVEain2%,  Sec, 15
iniread, positguardav16, %CLAVEain2%,  Sec, 16
iniread, activarletra17, %CLAVEain2%,  Sec, 17
iniread, positguardav18, %CLAVEain2%,  Sec, 18
iniread, activarletra19, %CLAVEain2%,  Sec, 19












Set_Number_AV(2)

return


gceracc:

    Gui, sni:Submit, NoHide



if gceraccedit=
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia, No hay un número., 1
return
}




iniWrite, %gceraccedit%, %CLAVEain2%,  AVersion, valor

valorgeneralaverc=%gceraccedit%


Set_Number_AV(2)
setwindowok()
return









;menucontextual
repairini:

MsgBox 0x40024, %nameofthisscript1% - Verificación, Se restableceran las hotkeys, la pocision de la ventana y los estilos.  ¿Se desea proceder?
IfMsgBox No, {
Return
}

gui, 1:+Disabled



IniWrite, Center, %CLAVEaini%, window position, gui_position
IniWrite, Center, %CLAVEaini%, window position2, gui_position
;archivodefault

;positionn of gui if is new use in new pc
IniWrite, 700/200, %CLAVEaini%, pcnewres, a
;**********************************************************





IniWrite, 0, %CLAVEaini%, AHKhk, a
IniWrite, ^!a, %CLAVEaini%, AHKhk, b
IniWrite, ^!b, %CLAVEaini%, AHKhk, c
IniWrite, ^!c, %CLAVEaini%, AHKhk, d


;SKM Custom
IniWrite, Verdana, %CLAVEaini%, STKG,1
IniWrite, 2, %CLAVEaini%, STKG,2
IniWrite, 8, %CLAVEaini%, STKG,3
IniWrite, ffffff, %CLAVEaini%, STKG,4
IniWrite, 23222B, %CLAVEaini%, STKG,5
IniWrite, 1C1B22, %CLAVEaini%, STKG,6













reload
return


































appsse:


    If cajaavercconf3 = 1
Gui, appsse:+AlwaysOnTop

Gui, appsse:Font, Norm
Gui, appsse:Color ,,%stkcg5%
Gui, appsse:Font, c0x%stkcg4%
Gui, appsse:Color ,%stkcg6%


Gui, appsse:-MinimizeBox

Gui, appsse:+ownerrgr1  ; Make the main window (Gui #1) the owner of the "about box".
Gui rgr1:+Disabled  ; Disable main window.



Gui, appsse:Add, Text, x10 y13 w60 h20 , Explorador
Gui, appsse:Add, Edit, x70 y10 w220 h20 vappssecont1, %appsapp1%

;Gui, appsse:Add, Text, x10 y43 w60 h20 , Navegador
;Gui, appsse:Add, Edit, x70 y40 w220 h20 vappssecont2, %appsapp2%


Gui, appsse:Add, Button, x260 y70 w30 h20 vappssecont3 gappssecont3, Ok
; Generated using SmartGUI Creator 4.0
Gui, appsse:Show, Center h100 w300, %nameofthisscript1% - Apps

return









appssecont3:

Gui, appsse:Submit, NoHide

if  appssecont1=
	appssecont1=No establecido

if  appssecont2=
	appssecont2=No establecido

IniWrite, %appssecont1% , %CLAVEaini%, Apps, a
;IniWrite, %appssecont2%, %CLAVEaini%, Apps, b


appsapp1=%appssecont1%
;appsapp2=%appssecont2%







if appsapp1=No establecido
FoldExpl_univers=0
else
	FoldExpl_univers=%appsapp1%






setwindowok()


appsseGuiclose:
Gui, appsse:Destroy
Gui rgr1:-Disabled 

return











window3:
    if  activeconfig=1
    {
		
		Gui, rgr1:Show
		
        WinGetPos, gui_x2, gui_y2,,, ahk_id %gui_idrgr1%
gui_position2=x%gui_x2% y%gui_y2%

        ;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(525,335,gui_position2,"rgr1")
gui_position2=%guipositionmod%

        
Gui, rgr1:Show, %gui_position2%

        return
    }



















;variable config activa
activeconfig=1



 If cajaavercconf3 = 1
    {
        Gui, rgr1:+AlwaysOnTop
    }

;para la existencia de ciertas guis
varespecialguiexist1=0




Gui, rgr1:Font, Norm
Gui, rgr1:Color ,,%stkcg5%
Gui, rgr1:Font, c0x%stkcg4%
Gui, rgr1:Color ,%stkcg6%



Gui, rgr1:Add, Button, vtollee40 gwindow2  x12 y9 w100 h20 , Valor copia actual

Gui, rgr1:Add, Button, x122  y9 w90 h20 vstkust gstkust, AVersion estilo

Gui, rgr1:Add, Button, x222 y9 w100 h20 vaccdax10 gaccdax10,  Estilo secuencia




Gui, rgr1:Add, Button, vtervcprog gtervcprog  x12 y69 w130 h20 , Programa 3
tervcprog_TT:="Establecer el programa numero 3."

Gui, rgr1:Add, Button, vtervcprog1  gtervcprog1  x142 y69 w20 h20 , C
tervcprog1_TT:="Copiar ruta."




Gui, rgr1:Add, Button, vtollee59 gwindow4  x12 y39 w130 h20 , Programa 2
tollee59_TT:="Establecer el programa numero 2."

Gui, rgr1:Add, Button, vcoppv1  gcoppv1   x142 y39 w20 h20 , C
coppv1_TT:="Copiar ruta."



Gui, rgr1:Add, Button, x172 y39 w150 h20 vwindwutgui gwindwutgui , Avisos



Gui, rgr1:Add, Button, vtollee45  gaccdax4 x172 y69 w150 h20, Ruta secundaria
tollee45_TT:="Cambiar la ruta secundaria de las copias de seguridad."



Gui, rgr1:Add, Button, vtollee62 gaccdax7 x12 y99 w130 h20 , Datos de archivos
tollee62_TT:="Abrir carpeta con los datos de los archivos."

Gui, rgr1:Add, Button, vDeletedaoldx gDeletedaoldx x142 y99 w20 h20 , Bi
Deletedaoldx_TT:="Borrar los ini de archivos inexistentes."

Gui, rgr1:Add, Button, x172 y99 w150 h20 vtollee46 gaccdax5, Borrar datos
tollee46_TT:=" Borrar los datos de los archivos almacenados."



Gui, rgr1:Add, Button, vtollee42 gaccdax2 x12 y129 w150 h20 , Cambiar las notas 





Gui, rgr1:Add, Button, x202 y129 w60 h20 gexperr1 vexperr1, Exp

experr1_TT:="Crea una copia del archivo para poder experimentar."


Gui, rgr1:Add, Button, x172 y129 w30 h20 gClassexc7 vClassexc7, Del

Classexc7_TT:="Mover el experimento a la papaelera."
Gui, rgr1:Add, Button, x262 y129 w30 h20 gClassexc8 vClassexc8, Ret


Classexc8_TT:="Retorno al archivo de origen."



Gui, rgr1:Add, Button, x292 y129 w30 h20 gClassexc9 vClassexc9, Ori
Classexc9_TT:="El experimento se convierte en el archivo origen."




Gui, rgr1:Add, Button, x172 y159 w30 h20 gexperr7 vexperr7, Old*
experr7_TT:="Crea una carpeta con todos los archivos y carpetas de la carpeta Old dentro de la misma."

Gui, rgr1:Add, Button, x202 y159 w120 h20 gexperr4 vexperr4, Borrar 10 copias
experr4_TT:="Borrar 10 copias, sin afectar el archivo original."


Gui, rgr1:Add, Button, x12 y159 w150 h20 vappsse gappsse, Apps






Gui, rgr1:Add, Checkbox, vsettt1 Checked%cajaavercconf1% x12 y219 w140 h20, Carpeta Old_ 
settt1_TT:="Se crea una carpeta  para las copias en el mismo directorio del archivo seleccionado."

Gui, rgr1:Add, Checkbox, vcarpetaespcs Checked%carpinespecial% x172 y219 w120 h20, Carpeta Old_ Sec.
carpetaespcs_TT:="Se crea una carpeta  para las copias, en el directorio secundario, si este esta activo."



Gui, rgr1:Add, Checkbox, vsettt3 Checked%cajaavercconf3% x12 y189 w150 h20, Primer plano

Gui, rgr1:Add, Checkbox, vsettt4 Checked%cajaavercconf4% x172 y189 w150 h20, Guardar copia al salir




Gui, rgr1:Add, Checkbox, vsettt2 Checked%cajaavercconf2% x12 y249 w115 h20,Copia periodica 

Gui, rgr1:Add, Edit, x127 y249 w70 h20 gsegundosastt vsegundosastt center number, %cajaavercconf5%


Gui, rgr1:Add, Text, x209 y254 w150 h20 vcardvalormin, %cajaavercconf6%













Gui, rgr1:Add, Text, x12 y278 w340 h20 center, Ruta rapida
Gui, rgr1:Add, DropDownList, x52 y299 w275 h10 R30 altsubmit vDLsvDLs  hwndCBBID1, %DLsDLsv%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
GuiControl,  rgr1:Choose, DLsvDLs, %recpsdls1%


Gui, rgr1:Add, Button, x12 y299 w40 h21   veyvalcop2 gDLsvDLs, Set
eyvalcop2_TT:="Establecer el archivo."









Gui, rgr1:Add, Text, x12 y329 w50 h20 center, Programas
Gui, rgr1:Add, DropDownList, x72 y327 w255 h10 R30 altsubmit vDLspDLs3   hwndCBBID1, %DLsDLsp%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
GuiControl,  rgr1:Choose, DLspDLs3, %positionedslprog%











Gui, rgr1:Add, Text, x12 y372 w30 h20,DLs
Gui, rgr1:Add, Edit, x42 y369 w280 h20  vgetidlsclav, %DLsconf%





Gui, rgr1:Add, Checkbox, vsetonhkey  Checked%accionstarhk% x122 y399 w115 h20,Activar Hotkeys

Gui, rgr1:Add, Hotkey, x132 y429 w190 h20 vsetonhkey1, %guadchotk1%
Gui, rgr1:Add, Text, x12 y432 w120 h20, Copia normal
Gui, rgr1:Add, Hotkey, x132 y450 w190 h20 vsetonhkey2, %guadchotk2%
Gui, rgr1:Add, Text, x12 y452 w120 h20, Copia con nota extraor.
Gui, rgr1:Add, Hotkey, x132 y470 w190 h20 vsetonhkey3, %guadchotk3%
Gui, rgr1:Add, Text, x12 y472 w120 h20, Copia con nota unica



Gui, rgr1:Add, Button, vtollee43 gokge1 x272 y499 w50 h20 , OK
Gui, rgr1:Add, Button, gdefaulavercon x12 y499 w50 h20 , Default


Gui, rgr1:Add, Button,  vwinabout1 gwinabout1 x142 y499 w50 h20 default, About

;para experimentar

if  ESTOESEXPERIME=
ESTOESEXPERIME=0


if  ESTOESEXPERIME=0
{
    GuiControl,rgr1:Disable,Classexc9
       GuiControl, rgr1:Disable,Classexc8
       GuiControl, rgr1:Disable,Classexc7
}   








        
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(525,335,gui_position2,"rgr1")
gui_position2=%guipositionmod%

        
Gui, rgr1:Show, %gui_position2% h525 w335, %nameofthisscript1% - Configuración



;*******

Gui,rgr1: +Hwndgui_idrgr1


 Efecto_Start("1","window3")







loop
{
    Gui, rgr1:Submit, NoHide
    if  setonhkey=0
    {
        guicontrol, rgr1:Disabled, setonhkey1
    guicontrol, rgr1:Disabled, setonhkey2
    guicontrol, rgr1:Disabled, setonhkey3
}
else{
    

            guicontrol, rgr1:Enabled, setonhkey1
    guicontrol, rgr1:Enabled, setonhkey2
    guicontrol, rgr1:Enabled, setonhkey3

}


sleep 1500
if activeconfig=0
    break

}




Return


rgr1GuiContextMenu:

Menu, sellcconf, Show, %A_GuiX%, %A_GuiY%
return





Deletedaoldx:

MsgBox 0x40024, %nameofthisscript1% - Verificación,¿Desea continuar?
IfMsgBox Yes, {
goto Deletedaoldx2

          } 
              Else IfMsgBox No, {
              Return
              }




Deletedaoldx2:




Gui, rgr1:+Disabled
Gui, 1:+Disabled


varianume1=0

	Loop, %A_ScriptDir%\Data\i\*.*, 1; 
	{
		EnvAdd, varianume1,1
		
		
		varialamproce12:="acccfee12"varianume1
		
		%varialamproce12%=%A_LoopFileFullPath%

	}






varianume1=0

Loop
{

EnvAdd, varianume1,1

fikleiniabb:="acccfee12"varianume1

fikleiniabb2=% %fikleiniabb%


if fikleiniabb2=
break

if fikleiniabb2=ERROR
break


SplitPath, fikleiniabb2, nnnini, dddini, eeeini, nnnnnneeeini


if eeeini !=ini
continue



iniRead,fikleiniabb3, %fikleiniabb2%, AVersion, file

if  !FileExist(fikleiniabb3)
{
    FileDelete, %fikleiniabb2%
    if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto:  %fikleiniabb2%. 
} 

}




}

setwindowok()
Gui, rgr1:-Disabled
Gui, 1:-Disabled
return







DLspDLs3:


Gui, rgr1:Submit, NoHide
downcountppp := "Sepp"DLspDLs3

if  %downcountppp%=Barra
{
return
}


Clipboard=% %downcountppp%
setwindowcopy()
Return







ShowComDLspp:
Gui, rgr1:Submit, NoHide

;Gui mostrar informacion
lidls:="p"
Infohere3=%DLspDLs3%





;not modif
Infohere2pre:="Se" lidls lidls Infohere3
Infohere2=% %Infohere2pre%
Infohere1pre:="DLs" lidls Infohere3
Infohere1=% %Infohere1pre%
goto ShowComDLs

return



EraseComDLspp:
Gui, rgr1:+Disabled
MsgBox 0x40024, %nameofthisscript1% - Verificación, El comando será borrado y para aplicar los cambios es necesario reiniciar la aplicación ¿Se desea proceder?
IfMsgBox No, {
	Gui, rgr1:-Disabled
Return
}

Gui, rgr1:Submit, NoHide
;Gui mostrar informacion
;Gui mostrar informacion
lidls:="p"
Infohere3=%DLspDLs3%


Gui, rgr1:-Disabled
goto EraseComDLs

return










coppv1:
clipboard= %Prog1%
setwindowcopy()

return




rgr1GuiDropFiles:
goto, GuiDropFiles
return


vendiini:
run,  %DLsconf% "%CLAVEDLs%\DLsv.ini", ,  UseErrorLevel
if (ErrorLevel = "ERROR")


MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return

vendiinipp:

run,  %DLsconf% "%CLAVEDLs%\DLsp.ini", ,  UseErrorLevel
if (ErrorLevel = "ERROR")


MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return





fecultcopi:



iniread, datofelemcon, %CLAVEain2%,  Ultimacopia, %Valoacdelete%
iniread, datofelemcondate, %CLAVEain2%,  UltimacopiaFecha, %Valoacdelete%


if  datofelemcon=
{
 MsgBox 0x40040, %nameofthisscript1% - Información, Sin registro., 4
    return
}


if  datofelemcon=ERROR
{
 MsgBox 0x40040, %nameofthisscript1% - Información, Sin registro., 4
    return
}



if  datofelemcondate=
{
 MsgBox 0x40040, %nameofthisscript1% - Información, Sin registro., 4
    return
}


if  datofelemcondate=ERROR
{
 MsgBox 0x40040, %nameofthisscript1% - Información, Sin registro., 4
    return
}




 MsgBox 0x40040, %nameofthisscript1% - Información,   Elemento: %datofelemcon%  `n`nEl archivo se copió a las  %datofelemcondate% 
return





























;-Temas-Tema-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas
;-Temas-Tema-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas
;-Temas-Tema-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas


temsty1:
;letra
GuiControl, guistkc:Choose,stkgv2,Times New Roman
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,1
;fontcolor
GuiControl, guistkc:,stkgv8,FFFFFF
;Background color
GuiControl, guistkc:,stkgv10,35363A
;color gui
GuiControl, guistkc:,stkgv11,2B2B2B





;letra
GuiControl, guistkc:Choose,ttesconguist3,Times New Roman
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,1
;fontcolor
GuiControl, guistkc:,ttesconguist9,FFFFFF
;color gui
GuiControl, guistkc:,ttesconguist11,2B2B2B


return


temsty2:
;letra
GuiControl, guistkc:Choose,stkgv2,Arial
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,1
;fontcolor
GuiControl, guistkc:,stkgv8,0C0C0C
;Background color
GuiControl, guistkc:,stkgv10,FFFFFF
;color gui
GuiControl, guistkc:,stkgv11,F0F0F0




;letra
GuiControl, guistkc:Choose,ttesconguist3,Arial
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,1
;fontcolor
GuiControl, guistkc:,ttesconguist9,0C0C0C
;color gui
GuiControl, guistkc:,ttesconguist11,F0F0F0



return

temsty3:
;letra
GuiControl, guistkc:Choose,stkgv2,Lucida Console
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,1
;fontcolor
GuiControl, guistkc:,stkgv8,0C0C0C
;Background color
GuiControl, guistkc:,stkgv10,6CD877
;color gui
GuiControl, guistkc:,stkgv11,62C46D



;letra
GuiControl, guistkc:Choose,ttesconguist3,Lucida Console
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,1
;fontcolor
GuiControl, guistkc:,ttesconguist9,0C0C0C
;color gui
GuiControl, guistkc:,ttesconguist11,62C46D




return



temsty4:
;letra
GuiControl, guistkc:Choose,stkgv2,Mongolian Baiti
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,1
;fontcolor
GuiControl, guistkc:,stkgv8,0C0C0C
;Background color
GuiControl, guistkc:,stkgv10,FFEF9F
;color gui
GuiControl, guistkc:,stkgv11,FFF9BC



;letra
GuiControl, guistkc:Choose,ttesconguist3,Mongolian Baiti
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,1
;fontcolor
GuiControl, guistkc:,ttesconguist9,0C0C0C
;color gui
GuiControl, guistkc:,ttesconguist11,FFF9BC

return


temsty5:
;letra
GuiControl, guistkc:Choose,stkgv2,Comic Sans MS
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,1
;fontcolor
GuiControl, guistkc:,stkgv8,0C0C0C
;Background color
GuiControl, guistkc:,stkgv10,FFD0B0
;color gui
GuiControl, guistkc:,stkgv11,E8A566



;letra
GuiControl, guistkc:Choose,ttesconguist3,Comic Sans MS
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,1
;fontcolor
GuiControl, guistkc:,ttesconguist9,0C0C0C
;color gui
GuiControl, guistkc:,ttesconguist11,E8A566



return

temsty6:
;letra
GuiControl, guistkc:Choose,stkgv2,Corbel
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,1
;fontcolor
GuiControl, guistkc:,stkgv8,FFFFFF
;Background color
GuiControl, guistkc:,stkgv10,404C94
;color gui
GuiControl, guistkc:,stkgv11,4050AD

;letra
GuiControl, guistkc:Choose,ttesconguist3,Corbel
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,1
;fontcolor
GuiControl, guistkc:,ttesconguist9,FFFFFF
;color gui
GuiControl, guistkc:,ttesconguist11,4050AD


return


temsty7:
;letra
GuiControl, guistkc:Choose,stkgv2,Comic Sans MS
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,1
;fontcolor
GuiControl, guistkc:,stkgv8,0C0C0C
;Background color
GuiControl, guistkc:,stkgv10,C8E6FF
;color gui
GuiControl, guistkc:,stkgv11,C8E6FF


;letra
GuiControl, guistkc:Choose,ttesconguist3,Comic Sans MS
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,1
;fontcolor
GuiControl, guistkc:,ttesconguist9,0C0C0C
;color gui
GuiControl, guistkc:,ttesconguist11,C8E6FF

return








temsty8:
;letra
GuiControl, guistkc:Choose,stkgv2,Constantia
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,3
;fontcolor
GuiControl, guistkc:,stkgv8,0C0C0C
;Background color
GuiControl, guistkc:,stkgv10,FEDEDC
;color gui
GuiControl, guistkc:,stkgv11,FCD4DA


;letra
GuiControl, guistkc:Choose,ttesconguist3,Constantia
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,3
;fontcolor
GuiControl, guistkc:,ttesconguist9,0C0C0C
;color gui
GuiControl, guistkc:,ttesconguist11,FCD4DA

return




temsty9:
;letra
GuiControl, guistkc:Choose,stkgv2,Franklin Gothic Medium
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,2
;fontcolor
GuiControl, guistkc:,stkgv8,0C0C0C
;Background color
GuiControl, guistkc:,stkgv10,DEDEDB
;color gui
GuiControl, guistkc:,stkgv11,CACACA



;letra
GuiControl, guistkc:Choose,ttesconguist3,Franklin Gothic Medium
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,2
;fontcolor
GuiControl, guistkc:,ttesconguist9,0C0C0C
;color gui
GuiControl, guistkc:,ttesconguist11,CACACA
return


temsty10:
;letra
GuiControl, guistkc:Choose,stkgv2,Verdana
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,2
;fontcolor
GuiControl, guistkc:,stkgv8,0C0C0C
;Background color
GuiControl, guistkc:,stkgv10,FFD740
;color gui
GuiControl, guistkc:,stkgv11,FFDF40



;letra
GuiControl, guistkc:Choose,ttesconguist3,Verdana
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,2
;fontcolor
GuiControl, guistkc:,ttesconguist9,0C0C0C
;color gui
GuiControl, guistkc:,ttesconguist11,FFDF40

return

temsty11:
;letra
GuiControl, guistkc:Choose,stkgv2,Verdana
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,1
;fontcolor
GuiControl, guistkc:,stkgv8,FFFFFF
;Background color
GuiControl, guistkc:,stkgv10,5B4068
;color gui
GuiControl, guistkc:,stkgv11,220F27



;letra
GuiControl, guistkc:Choose,ttesconguist3,Verdana
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,1
;fontcolor
GuiControl, guistkc:,ttesconguist9,FFFFFF
;color gui
GuiControl, guistkc:,ttesconguist11,220F27
return




temsty12:
;letra
GuiControl, guistkc:Choose,stkgv2,MV Boli
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,1
;fontcolor
GuiControl, guistkc:,stkgv8,FFFFFF
;Background color
GuiControl, guistkc:,stkgv10,780A09
;color gui
GuiControl, guistkc:,stkgv11,610A09



;letra
GuiControl, guistkc:Choose,ttesconguist3,MV Boli
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,1
;fontcolor
GuiControl, guistkc:,ttesconguist9,FFFFFF
;color gui
GuiControl, guistkc:,ttesconguist11,610A09
return

temsty13:
;letra
GuiControl, guistkc:Choose,stkgv2,MS Mincho
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,3
;fontcolor
GuiControl, guistkc:,stkgv8,C1C1C1
;Background color
GuiControl, guistkc:,stkgv10,34352D
;color gui
GuiControl, guistkc:,stkgv11,0C0C0C


;letra
GuiControl, guistkc:Choose,ttesconguist3,MS Mincho
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,3
;fontcolor
GuiControl, guistkc:,ttesconguist9,C1C1C1
;color gui
GuiControl, guistkc:,ttesconguist11,0C0C0C
return

temsty14:
;letra
GuiControl, guistkc:Choose,stkgv2,Segoe UI
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,2
;fontcolor
GuiControl, guistkc:,stkgv8,0C0C0C
;Background color
GuiControl, guistkc:,stkgv10,A5CFC2
;color gui
GuiControl, guistkc:,stkgv11,A4E3A4



;letra
GuiControl, guistkc:Choose,ttesconguist3,Segoe UI
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,2
;fontcolor
GuiControl, guistkc:,ttesconguist9,0C0C0C
;color gui
GuiControl, guistkc:,ttesconguist11,A4E3A4
return

temsty15:
;letra
GuiControl, guistkc:Choose,stkgv2,Verdana
;Size
GuiControl, guistkc:Choose,stkgv4,8
;Style
GuiControl, guistkc:Choose,stkgv6,2
;fontcolor
GuiControl, guistkc:,stkgv8,ffffff
;Background color
GuiControl, guistkc:,stkgv10,23222B
;color gui
GuiControl, guistkc:,stkgv11,1C1B22


;letra
GuiControl, guistkc:Choose,ttesconguist3,Verdana
;Size
GuiControl, guistkc:Choose,ttesconguist5,8
;Style
GuiControl, guistkc:Choose,ttesconguist7,2
;fontcolor
GuiControl, guistkc:,ttesconguist9,ffffff
;color gui
GuiControl, guistkc:,ttesconguist11,1C1B22

return
;-Temas-Tema-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas
;-Temas-Tema-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas
;-Temas-Tema-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas



guistkcGuiContextMenu:
	
	if A_GUICONTROL=stkgv7
{
contexit=stkgv8
goto mencguistkc
}
else
if A_GUICONTROL=stkgv9
{
contexit=stkgv10
goto mencguistkc
}
else
if A_GUICONTROL=stkgv13
{
contexit=stkgv11
goto mencguistkc
}
else
if  A_GUICONTROL=ttesconguist8
{
contexit=ttesconguist9
goto mencguistkc
}
else
if  A_GUICONTROL=ttesconguist10
{
	contexit=ttesconguist11
	goto mencguistkc
}

Menu, guistkcmenunorm, Show, %A_GuiX%, %A_GuiY%
return


mencguistkc:
Menu, guistkcmenucont, Show, %A_GuiX%, %A_GuiY%
return




slectco1:

GuiControlget, colval_hex, guistkc:,%contexit%
colval_dec:=HexToDec(colval_hex)



colval_dec_user:= ChooseColor(colval_dec, guistkc, , , Palette2*)

;Error, no color
if  (colval_dec_user=0)
return


;guardar colores al salir de la aplicación
coloresaguardar=1



colval_hex_user :=FHex( colval_dec_user,6)
colval_hex_user1 := SubStr(colval_hex_user, 3, 8)

GuiControl, guistkc:,%contexit%,%colval_hex_user1%
return








stkust:

;lista de los nombres de archivos
GetFonts()


contenumb:=1
varcontnumser=1
Loop 20
{
		varcontnumser++
	contenumb.= "|" varcontnumser
}


Gui, guistkc:Menu, guistkcmenuth




sty =
(Join|
Norm|
Bold|
Italic|
Strike|
Underline|
)


 If cajaavercconf3 = 1
    {
        Gui, guistkc:+AlwaysOnTop
    }

Gui, guistkc:Font, Norm
Gui, guistkc:Color ,,%stkcg5%
Gui, guistkc:Font, c0x%stkcg4%
Gui, guistkc:Color ,%stkcg6%


Gui, guistkc:-MinimizeBox +Hwndguistkc

Gui, guistkc:+ownerrgr1  ; Make the main window (Gui #1) the owner of the "about box".
Gui rgr1:+Disabled  ; Disable main window.



Gui, guistkc:Add, Text, x3 y22 w67 h20 vstkgv1 center, Letra
Gui, guistkc:Add, ComboBox, x72 y19  w230 h20 hwndguistkccb1 vstkgv2 r30, %Fontlist%
CtlColors.Attach(guistkccb1,stkcg5,stkcg4)
GuiControl, guistkc:Choose, stkgv2, %stkcg1%




Gui, guistkc:Add, Text, x3 y52 w67 h20 vstkgv3 center, Tamaño
Gui, guistkc:Add, DropDownList, x72 y49 w60 h20 vstkgv4 hwndguistkccb10 r30, %contenumb%
CtlColors.Attach(guistkccb10,stkcg5,stkcg4)
GuiControl, guistkc:Choose, stkgv4, %stkcg3%

Gui, guistkc:Add, Text, x170 y52 w60 h20 vstkgv5  , Formato

Gui, guistkc:Add, DropDownList, x222 y49 w80 h20 R30 altsubmit  vstkgv6  hwndguistkccb2 , %sty%
CtlColors.Attach(guistkccb2,stkcg5,stkcg4)

;para recuperar datos de las DropDownList
GuiControl, guistkc:Choose, stkgv6, %stkcg2%
;*************************



Gui, guistkc:Add, Text, x5 y82 w60 h20 vstkgv7 center, Color letra
Gui, guistkc:Add, Edit, x72 y79 w60 h20 vstkgv8  center, %stkcg4%


Gui, guistkc:Add, Text, x142 y82 w90 h20 vstkgv9 center,  Color trasfondo
Gui, guistkc:Add, Edit, x242 y79 w60 h20 vstkgv10  center,%stkcg5%


Gui, guistkc:Add, Text, x3 y112 w69 h20 vstkgv13  , Color ventana
Gui, guistkc:Add, Edit, x72 y109 w60 h20 vstkgv11  center,%stkcg6%




Gui, guistkc:Add, Button, x12 y139 w60 h20 vstkgv21 gstkgv21, Cargar
Gui, guistkc:Add, Button, x82 y139 w60 h20 vstkgv22 gstkgv22, Guardar

Gui, guistkc:Add, Button, x272 y139 w30 h20 vstkgv12 gstkgv12, Ok
; Generated using SmartGUI Creator 4.0
Gui, guistkc:Show, Center h170 w317, %nameofthisscript1% -  Estilo
Return






Probarguiexp:

	Gui, guistkc:Submit, NoHide

	Gui, 	muestr:Destroy


		;STK custom
     if stkgv6=1
 stkcgfinesp2:="Norm"
   else
          if stkgv6=2
 stkcgfinesp2:="Bold"
 else
       if stkgv6=3
 stkcgfinesp2:="Italic"
 else
       if stkgv6=4
 stkcgfinesp2:="Strike"
    else
       if stkgv6=5
 stkcgfinesp2:="Underline"

	

Gui, muestr:Add, Button, x202 y89 w40 h20 vmuestrcont4, Ok

	
Gui, muestr:Color ,,%stkgv10%
Gui, muestr:Font, S%stkgv4% c0x%stkgv8% %stkcgfinesp2%, %stkgv2%
Gui, muestr:Color ,%stkgv11%
	Gui, muestr:  -MinimizeBox
	
	WinGetPos, muestrx, muestry,,, ahk_id %guistkc%
	
	muestrh=118
	muestrw=249
	muestrx1:=muestrx-muestrw-10
	
	
		
	Gui, muestr:Add, DropDownList, x112 y9 w130 h20 vmuestrcont1 hwndmuestrcont1  r30 , %Fontlist%
	CtlColors.Attach(muestrcont1,stkcg5,stkcg4)
Gui, muestr:Add, Text, x12 y9 w100 h20 vmuestrcont2 ,  Texto 1
Gui, muestr:Add, Edit, x62 y39 w180 h45 vmuestrcont3,  Texto 2
	Gui, muestr:Add, CheckBox, x12 y89 w180 h20 vmuestrcont5 , Texto3

Gui, muestr:Add, Picture, x12 y39 w45 h45 vmuestrcont6 , %A_ScriptDir%\Data\Gui\Guiabout.png
; Generated using SmartGUI Creator 4.0

gui_positmuestr=x%muestrx1% y%muestry%
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(muestrh,muestrw,gui_positmuestr,"guinam")
gui_positmuestr=%guipositionmod%

Gui, muestr:Show,  NA NoActivate %gui_positmuestr%  h%muestrh% w%muestrw%, %nameofthisscript1% - Muestra


	SetTimer, endmuestra, 10000
return


endmuestra:
	Gui, 	muestr:Destroy
return











guistkcGuiClose:
Gui rgr1:-Disabled  ; Disable main window.
Gui guistkc:Destroy  ; Disable main window.
Return



stkgv12:
Gui, guistkc:Submit, NoHide



If stkgv2=
stkgv2=Verdana

If stkgv4=
stkgv4=8

If stkgv8=
stkgv8=ffffff

If stkgv10=
stkgv10=200729

If stkgv11=
stkgv11=200729


IniWrite, %stkgv2%, %CLAVEaini%, STKG,1
IniWrite, %stkgv6%, %CLAVEaini%, STKG,2

IniWrite, %stkgv4%, %CLAVEaini%, STKG,3
IniWrite, %stkgv8%, %CLAVEaini%, STKG,4
IniWrite, %stkgv10%, %CLAVEaini%, STKG,5

IniWrite, %stkgv11%, %CLAVEaini%, STKG,6


;Guardar y reiniciar
Vareloroff=1
goto Relwd2
return














windwutgui:

windwutguiactive=1

Gui, windwutgui:+ownerrgr1  ; Make the main window (Gui #1) the owner of the "about box".
Gui rgr1:+Disabled  ; Disable main window.


Gui, windwutgui:Font, Norm
Gui, windwutgui:Color ,,%stkcg5%
Gui, windwutgui:Font, c0x%stkcg4%
Gui, windwutgui:Color ,%stkcg6%


Gui, windwutgui:-MinimizeBox




Gui, windwutgui:Add, CheckBox, x232 y9 w210 h30 vavisocontr1  Checked%gmensaviso1%,  Avisos de copiado al portapapeles
Gui, windwutgui:Add, CheckBox, x12 y9 w210 h30 vavisocontr2  Checked%gmensaviso2%,  Avisos de completado
Gui, windwutgui:Add, CheckBox, x12 y49 w210 h30 vavisocontr3  Checked%gmensaviso3%,  Mostrar el aviso en forma de ventana
Gui, windwutgui:Add, CheckBox, x232 y49 w210 h30 vavisocontr4  Checked%gmensaviso4%, Siempre al centro de la pantalla
Gui, windwutgui:Add, CheckBox, x12 y79 w210 h30 vavisocontr5  Checked%gmensaviso5%, Con  reproducción de sonido


Gui, windwutgui:Add, CheckBox, x12 y129 w350 h30 vavisocontr6 Checked%gmensaviso6%, Utilizar los diálogos predeterminados del sistema





Gui, windwutgui:Add, Button, x410 y169 w30 h20 vavisocontr7 gavisocontr7, OK
Gui, windwutgui:Add, Button, x10 y169 w60 h20 vavisocontr8 gavisocontr8, Probar


; Generated using SmartGUI Creator 4.0
Gui, windwutgui:Show, Center h199 w455, %nameofthisscript1% - Avisos



Loop
{
Gui, windwutgui:Submit, NoHide


GuiControlGet, varaviso1,windwutgui:, avisocontr1
GuiControlGet, varaviso2,windwutgui:, avisocontr2
GuiControlGet, varaviso6,windwutgui:, avisocontr6




	if  (varaviso1=0 and varaviso2=0) or (varaviso2=0 and varaviso1=0)
	{
GuiControl, windwutgui:Disable, avisocontr3
GuiControl, windwutgui:Disable, avisocontr4
GuiControl, windwutgui:Disable, avisocontr5
GuiControl, windwutgui:Disable, avisocontr6
}
else
{
		GuiControl, windwutgui:Enable, avisocontr3
GuiControl, windwutgui:Enable, avisocontr4
GuiControl, windwutgui:Enable, avisocontr5
GuiControl, windwutgui:Enable,  avisocontr6
}






	if varaviso6=1
{
GuiControl, windwutgui:Hide, avisocontr3
GuiControl, windwutgui:Hide, avisocontr4
GuiControl, windwutgui:Hide, avisocontr5
}
else
{
		GuiControl, windwutgui:Show, avisocontr3
GuiControl, windwutgui:Show, avisocontr4
GuiControl, windwutgui:Show, avisocontr5
}


Sleep 1500

if windwutguiactive=0
break
}




Return




stkgv21:

Gui muestr2:+Disabled
FileSelectFile, CLAVEsavetema, 3, , Open a file, Tema (*.temstk)
if CLAVEsavetema =
  {  
Gui muestr2:-Disabled
    return
    }





	vgrabdat=0
loop 6
{
	vgrabdat++
	
	predatperzg:="datperzg" vgrabdat

	
iniread, %predatperzg%, %CLAVEsavetema%, Tema, %vgrabdat%

}




;letra
GuiControl, guistkc:Choose,stkgv2,%datperzg1%
;Size
GuiControl, guistkc:Choose,stkgv4,%datperzg2%
;Style
GuiControl, guistkc:Choose,stkgv6,%datperzg3%
;fontcolor
GuiControl, guistkc:,stkgv8,%datperzg4%
;Background color
GuiControl, guistkc:,stkgv10,%datperzg5%
;color gui
GuiControl, guistkc:,stkgv11,%datperzg6%





Gui muestr2:-Disabled
setwindowok()

return


stkgv22:


Gui, vaa5:Font, Norm
Gui, vaa5:Color ,,%stkcg5%
Gui, vaa5:Font, c0x%stkcg4%
Gui, vaa5:Color ,%stkcg6%




Gui, vaa5:+ownerguistkc ; Make the main window (Gui #1) the owner of the "about box".
Gui guistkc:+Disabled  ; Disable main window.
Gui, vaa5:-MinimizeBox
Gui, vaa5:Add, Edit, vedespaco1 x12 y9 w400 h20 ,Mi tema
Gui, vaa5:Add, Button , vtollee52 genra5 x172 y39 w80 h20 default, Generar tema

; Generated using SmartGUI Creator 4.0
Gui, vaa5:Show, Center h70 w424, %nameofthisscript1% - Nombre del tema


Return





enra5:

Gui, vaa5:Submit, NoHide

Gui vaa5:hide
FileSelectFolder, foldertema, , 3
if foldertema =
  {  

goto vaa5Guiclose
    }

if edespaco1=
	edespaco1:="No name"


CLAVEsavetema:=foldertema "\" edespaco1 ".temstk"


if FileExist(CLAVEsavetema)
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El archivo ya existe ¿Desea sobrescribir?
IfMsgBox No, {
Gui, 	guistkc:-Disabled
               goto vaa5Guiclose
              }
}




;letra
GuiControlGet, datperzg1, guistkc:,stkgv2
;Size
GuiControlGet, datperzg2, guistkc:,stkgv4
;Style
GuiControlGet, datperzg3, guistkc:,stkgv6
;fontcolor
GuiControlGet, datperzg4, guistkc:,stkgv8
;Background color
GuiControlGet, datperzg5, guistkc:,stkgv10
;color gui
GuiControlGet, datperzg6, guistkc:,stkgv11




	vgrabdat=0
loop 6
{
	vgrabdat++
	
	predatperzg:="datperzg" vgrabdat
	condatperzg=% %predatperzg%
	
IniWrite, %condatperzg%, %CLAVEsavetema%, Tema, %vgrabdat%

}

setwindowok()

vaa5Guiclose:

Gui, guistkc:-Disabled
Gui vaa5:Destroy

return












avisocontr8:

Gui, windwutgui:Submit, NoHide

Gui windwutgui:+Disabled  ; Disable main window.

tmpgmensaviso1=%gmensaviso1%
tmpgmensaviso2=%gmensaviso2%
tmpgmensaviso3=%gmensaviso3%
tmpgmensaviso4=%gmensaviso4%
tmpgmensaviso5=%gmensaviso5%
tmpgmensaviso6=%gmensaviso6%


gmensaviso1=%avisocontr1%
gmensaviso2=%avisocontr2%
gmensaviso3=%avisocontr3%
gmensaviso4=%avisocontr4%
gmensaviso5=%avisocontr5%
gmensaviso6=%avisocontr6%



setwindowok()

setwindowcopy()

setwindowcopyfile()


gmensaviso1=%tmpgmensaviso1%
gmensaviso2=%tmpgmensaviso2%
gmensaviso3=%tmpgmensaviso3%
gmensaviso4=%tmpgmensaviso4%
gmensaviso5=%tmpgmensaviso5%
gmensaviso6=%tmpgmensaviso6%

Gui windwutgui:-Disabled  ; Disable main window.

Return





avisocontr7:
Gui, windwutgui:Submit, NoHide

IniWrite, %avisocontr1%, %CLAVEaini%, Avisos, a
IniWrite, %avisocontr2%, %CLAVEaini%, Avisos, b
IniWrite, %avisocontr3%, %CLAVEaini%, Avisos, c
IniWrite, %avisocontr4%, %CLAVEaini%, Avisos, d
IniWrite, %avisocontr5%, %CLAVEaini%, Avisos, e
IniWrite, %avisocontr6%, %CLAVEaini%, Avisos, f

gmensaviso1=%avisocontr1%
gmensaviso2=%avisocontr2%
gmensaviso3=%avisocontr3%
gmensaviso4=%avisocontr4%
gmensaviso5=%avisocontr5%
gmensaviso6=%avisocontr6%


setwindowok()

windwutguiGuiClose:
windwutguiactive=0
Gui, windwutgui:Destroy
Gui rgr1:-Disabled  ; Disable main window.

Return
























experr2:
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Desea proceder?
 IfMsgBox No, {
              Return
              }
}
Gui rgr1:+Disabled  


iniread, borrarelemt, %CLAVEain2%,  Ultimacopia, %Valoacdelete%

if  borrarelemt=
{
 MsgBox 0x40040, %nameofthisscript1% - Información, Sin registro., 4
 Gui rgr1:-Disabled  
    return
}



FileRecycle, %borrarelemt%
if (ErrorLevel = "ERROR")
{
MsgBox 0x40010, %nameofthisscript1% - Error, La copia %borrarelemt% no pudo ser borrada., 2
 Gui rgr1:-Disabled  
return

}


xcc=
iniwrite, %xcc%, %CLAVEain2%,  Ultimacopia, %Valoacdelete%
iniWrite, %xcc%, %CLAVEain2%,  UltimacopiaFecha, %Valoacdelete%

;Envsub ,Valoacdelete , 1
Valoacdelete -=1

if Valoacdelete=0
Valoacdelete=100

iniwrite, %Valoacdelete%, %CLAVEain2%,  Ultimacopiavaloract, a



Set_Number_AV(0)


Gui rgr1:-Disabled  
setwindowok()
return




experr4:
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, ¿Desea proceder?
 IfMsgBox No, {
              Return
              }
}





Gui rgr1:+Disabled  



loop 10
{
iniread, borrarelemt, %CLAVEain2%,  Ultimacopia, %Valoacdelete%

if  borrarelemt=
{
MsgBox 0x40040, %nameofthisscript1% - Información, Sin registros., 2
Gui rgr1:-Disabled  
return
}



FileRecycle, %borrarelemt%
if (ErrorLevel = "ERROR")
{
    MsgBox 0x40010, %nameofthisscript1% - Error,  %borrarelemt% no pudo ser borrada.
    Gui rgr1:-Disabled  
return
}


xcc=
iniwrite, %xcc%, %CLAVEain2%,  Ultimacopia, %Valoacdelete%
iniWrite, %xcc%, %CLAVEain2%,  UltimacopiaFecha, %Valoacdelete%

Set_Number_AV(0)

Valoacdelete  -=1


if Valoacdelete=0
Valoacdelete=100

iniwrite, %Valoacdelete%, %CLAVEain2%,  Ultimacopiavaloract, a

}


Gui rgr1:-Disabled  

setwindowok()

 

return






DLsvDLs:

Gui, rgr1:Submit, NoHide



;var a modificar
letrainsignia:="v"
fuenteNumber:=DLsvDLs
;var a modificar


;Fijo-No modificar-Fijo-No modificar-Fijo-No modificar-Fijo-No modificar-Fijo-No modificar-Fijo-No modificar
Cominterme_DLs:="Se" letrainsignia letrainsignia fuenteNumber
PreElemCom1:="ElemCom_" letrainsignia letrainsignia "1"
PreElemCom2:="ElemCom_" letrainsignia letrainsignia "2"
PreElemCom3:="ElemCom_" letrainsignia letrainsignia "3"
PreElemCom4:="ElemCom_" letrainsignia letrainsignia "4"

PreComtotal:="Comtotal_" letrainsignia letrainsignia


%PreComtotal%=% %Cominterme_DLs%

;Limpieza de las var
%PreElemCom1%=
%PreElemCom2%=
%PreElemCom3%=
%PreElemCom4%=
numberDLs_Start=0
Loop, Parse, %PreComtotal%, |,
{
   
   EnvAdd, numberDLs_Start,1

PreeElemComstringvar:="ElemCom_" letrainsignia letrainsignia numberDLs_Start



%PreeElemComstringvar%=%A_LoopField%
   
}until numberDLs_Start=4



;Fijo-No modificar-Fijo-No modificar-Fijo-No modificar-Fijo-No modificar-Fijo-No modificar-Fijo-No modificar

;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%
;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%




if  (ElemCom_vv2="Clipboardtxt" or ElemCom_vv2="Clipboard" or ElemCom_vv2="Config" or  ElemCom_vv2="Link" or  ElemCom_vv2="Lista" )
{
MsgBox 0x40040, %nameofthisscript1% - Información, Los comandos de Select and execute no son compatibles ., 3
return
}




if  ElemCom_vv1=Barra
{
return
}


if  !FileExist(ElemCom_vv1)
{
MsgBox 0x40010, %nameofthisscript1% - Error, El archivo no existe., 2
return
}

file4:= ElemCom_vv1

if ElemCom_vv3=
{
    ordenimgdls1:=0
ordenimgdls2:=0
}
else
{
ordenimgdls1:=ElemCom_vv3
ordenimgdls2:=ElemCom_vv4
}


 openinter=1
 
goto guidropfiles

return


eyvalcop:
Gui, rgr1:Submit, NoHide

downcount2 := "Sevv"DLsvDLs

if  %downcount2%=Barra
{

return
}

clipboard= % %downcount2%
setwindowcopy()





return


ShowComDLsvv:
Gui, rgr1:Submit, NoHide

;Gui mostrar informacion
lidls:="v"
Infohere3=%DLsvDLs%





;not modif
Infohere2pre:="Se" lidls lidls Infohere3
Infohere2=% %Infohere2pre%
Infohere1pre:="DLs" lidls Infohere3
Infohere1=% %Infohere1pre%
goto ShowComDLs

return


EraseComDLsvv:
Gui, rgr1:+Disabled
MsgBox 0x40024, %nameofthisscript1% - Verificación, El comando será borrado y para aplicar los cambios es necesario reiniciar la aplicación ¿Se desea proceder?
IfMsgBox No, {
	Gui, rgr1:-Disabled
Return
}

Gui, rgr1:Submit, NoHide
;Gui mostrar informacion
lidls:="v"
Infohere3=%DLsvDLs%


Gui, rgr1:-Disabled
goto EraseComDLs

return









tervcprog:

If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }


 If cajaavercconf3 = 1
    {
        Gui, winprog3:+AlwaysOnTop
    }









Gui rgr1:+Disabled  ; Disable main window.




Gui, winprog3:Font, Norm
Gui, winprog3:Color ,,%stkcg5%
Gui, winprog3:Font, c0x%stkcg4%
Gui, winprog3:Color ,%stkcg6%



Gui, winprog3:+ownerrgr1 ; Make the main window (Gui #1) the owner of the "about box".

Gui, winprog3:-MinimizeBox
Gui, winprog3:Add, Edit, vedespaco33 x12 y9 w400 h20 , %Prog2%
Gui, winprog3:Add, Button, vcontrodenprog31 gcontrodenprog31 x280 y39 w70 h20 Default, Establecer

Gui, winprog3:Add, Button, vcontrodenprog33 gcontrodenprog33 x360 y39 w50 h20 , File



Gui, winprog3:Add, DropDownList, x12 y39 w255 h10 R30 altsubmit vDLspDLs2 gDLspDLs2  hwndCBBID1, %DLsDLsp%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
GuiControl,  winprog3:Choose, DLspDLs2, %positionedslprog%



; Generated using SmartGUI Creator 4.0
Gui, winprog3:Show, Center h74 w429, %nameofthisscript1% - Ruta del programa 3


Return




DLspDLs2:

Gui, winprog3:Submit, NoHide
downcountppp := "Sepp"DLspDLs2

if  %downcountppp%=Barra
{

return
}


GuiControl,winprog3:, edespaco33, % %downcountppp%

Return











controdenprog31:
Gui, winprog3:Submit, NoHide
GuiControlGet, vaes9 ,winprog3:, edespaco33


if vaes9=
vaes9=No especificado

Prog2=%vaes9%
IniWrite, %Prog2%, %CLAVEain2%,  AVersion, Prog2

IniWrite, %DLspDLs2%, %CLAVEaini%,  DLs, d
postDls2=%DLspDLs2%


Gui, rgr1:-Disabled
Gui winprog3:Destroy
setwindowok()


return

controdenprog33:
FileSelectFile, file8, 3, , Open a file, Programas (*.exe)
if file8=
  {  

    return
    }
    else
 {  
GuiControl,winprog3:, edespaco33, %file8%
    }

return


winprog3GuiClose:

Gui, rgr1:-Disabled
Gui winprog3:Destroy
return




tervcprog1:

clipboard= %Prog2%
setwindowcopy()


return


segundosastt:

Loop 30 {
guicontrolget, vfrrrr,rgr1:,segundosastt
    
    
guicontrol, rgr1:,cardvalormin, Segundos
    
    if  vfrrrr>59
{
    minutoscard3:=vfrrrr/60
    
    
                setformvar1:=Format("{:.2f}",minutoscard3)
minutoscard3=%setformvar1%
    
    


guicontrol, rgr1:,cardvalormin, %minutoscard3% Minutos
}


if  vfrrrr>3599
{
    minutoscard2:=vfrrrr/3600
    
                    setformvar1:=Format("{:.2f}",minutoscard2)
minutoscard2=%setformvar1%
    

    
guicontrol, rgr1:,cardvalormin, %minutoscard2% Horas
}

sleep 500

;variable config activa
    if  activeconfig=0
        break

}
Return













defaulavercon:




{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Desea proceder?
IfMsgBox Yes, {
	
FileDelete, %CLAVEaini%




Reload
	
          } 
              Else IfMsgBox No, {
              Return
              }
}

return









experr7:
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación,¿Desea proceder?
IfMsgBox Yes, {
	
	goto, experr77
	
          } 
              Else IfMsgBox No, {
              Return
              }
}

return



experr77:

Gui rgr1:+Disabled  

erroressum2=0


FormatTime, mtec1,y, y
FormatTime, mtec2,M, M
FormatTime, mtec3,d, d
FormatTime, mtec4,HH, H
FormatTime, mtec5,mm, m
FormatTime, mtec6,ss, s

Random, nalsec , 0, 10


TOmocecarpet= %carpetautil%\Y%mtec1%M%mtec2%D%mtec3%H%mtec4%M%mtec5%S%mtec6%V%nalsec%



FileCreateDir, %TOmocecarpet%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %TOmocecarpet%
Gui rgr1:-Disabled  
return
 }



 valorgenesis9=0


foldersavesis9=%carpetautil%\*.*


Loop, %foldersavesis9%, 1 ; 
	{
		EnvAdd, valorgenesis9,1
		
		
		varialamprocesis9:="TEXCAORF"valorgenesis9
		
		%varialamprocesis9%=%A_LoopFileFullPath%


}






 trexar15=0
 Loop
{
 EnvAdd, trexar15,1
 
merx15:="TEXCAORF"trexar15

 
 
  if  %merx15%=
 goto cpseddh1
 
  if  %merx15%=ERROR
 goto cpseddh1

 
   if  %merx15%=%TOmocecarpet%
 goto cpseddh1



SplitPath, % %merx15%, nombrecodes, dircodes, extcodes, name_no_extcodes,


 
 if extcodes=
 goto movercapr15
 else 
 goto movesfiles15



 
movercapr15:




FileMovedir, % %merx15%, %TOmocecarpet%\%nombrecodes%,0
if ErrorLevel
{ 
FormatTime, mtec1,y, y
FormatTime, mtec2,M, M
FormatTime, mtec3,d, d
FormatTime, mtec4,HH, H
FormatTime, mtec5,mm, m
FormatTime, mtec6,ss, s

Random, nalsec , 0, 10

NAMEFILE=%TOmocecarpet%\%nombrecodes% [%mtec1%%mtec2%%mtec3%%mtec4%%mtec5%%mtec6%%nalsec%]

FileMovedir, % %merx15%, %NAMEFILE%,0
if ErrorLevel
{ 

MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %merx15%,

envadd erroressum2, 1

 }
}

goto, salioprt1





movesfiles15:



FileMove, % %merx15%, %TOmocecarpet%\%nombrecodes%,0

if ErrorLevel
{ 
FormatTime, mtec1,y, y
FormatTime, mtec2,M, M
FormatTime, mtec3,d, d
FormatTime, mtec4,HH, H
FormatTime, mtec5,mm, m
FormatTime, mtec6,ss, s

Random, nalsec , 0, 10

NAMEFILE=%TOmocecarpet%\%name_no_extcodes% [%mtec1%%mtec2%%mtec3%%mtec4%%mtec5%%mtec6%%nalsec%] .%extcodes%

FileMove, % %merx15%, %NAMEFILE%,0
if ErrorLevel
{ 

MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %merx15%

envadd erroressum2, 1
 }
 
}



salioprt1:

if  erroressum2=10
Goto cpseddh1
}


cpseddh1:



; limpieza de la variable para uso posterior 

valodeleva15=0

    Loop
    {

envadd, valodeleva15, 1

		xerte15:="acccfee9"valodeleva15
		
%xerte15%=


if valodeleva15=%valorgenesis9%
goto, endlodelme15
    }

endlodelme15:



if  erroressum2>8
{
MsgBox 0x40010, %nameofthisscript1% - Error,  La operación fracaso., 2
}
    else
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Operación terminada., 2
    
    iniwiterr1=0
    
    loop 30
    {
        
     EnvAdd,   iniwiterr1, 1
        
        xcc=
      iniwrite, %xcc%, %CLAVEain2%,  Ultimacopia, %iniwiterr1%      

if  iniwiterr1=31
    goto finloppsswri

    }

  finloppsswri:
    
}



Gui rgr1:-Disabled  

RETURN




Classexc9:

MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Desea proceder?
 IfMsgBox No, {
              Return
              }



 FileCopy, %elemccopaver%, %Rutaccc% ,1
                    if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea no se pudo restaurar: %elemccopaver%,
 }


file4=%Rutaccc%


sleep 100

 openinter=1
 

 
 Gui rgr1:Destroy
 
 
 abrirconfi=1
 
 
setwindowok()
 
 
 
goto guidropfiles



return








Classexc7:



{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Desea proceder?
IfMsgBox Yes, {
	
	goto, Classexc72
	
          } 
              Else IfMsgBox No, {
              Return
              }
}

return

Classexc72:


If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }

SplitPath, elemccopaver, ggg, borradir,


FileRecycle,  %borradir%
if ErrorLevel
{
MsgBox 0x40010, %nameofthisscript1% - Error, Error al reciclar el archivo: %borradir%
return
 }

FileRecycle,  %CLAVEain2%
if ErrorLevel
{
MsgBox 0x40010, %nameofthisscript1% - Error,Error al reciclar el elemento: %borradir%
return
 }


Classexc8:


if Rutaccc=
Rutaccc=No especificado

if  !FileExist(Rutaccc)
{
MsgBox 0x40010, %nameofthisscript1% - Advertencia El elemento %Rutaccc% no se encuentra., 2
    goto Relwd3
}







Vareloroff=1

IniWrite,%Rutaccc%, %CLAVEaini%, actualfile, file

goto Relwd2
return














































rgr1GuiClose:
rgr1GuiEscape:
   Gui rgr1:Show
Gui, rgr1:Submit, NoHide
WinGetPos, gui_x2, gui_y2,,, ahk_id %gui_idrgr1%
 
IniWrite, x%gui_x2% y%gui_y2%, %CLAVEaini%, window position2, gui_position

gui_position2=x%gui_x2% y%gui_y2%



GuiControlGet, vcaaverc77, rgr1:, DLsvDLs
GuiControlGet, vcaaverc88, rgr1:, DLspDLs1





IniWrite, %vcaaverc88%, %CLAVEaini%,  DLSp, a
IniWrite,%vcaaverc77%, %CLAVEaini%, DLs, b

positionedslprog=%vcaaverc88%
recpsdls1=%vcaaverc77%

;variable config activa
activeconfig=0


Gui rgr1:Destroy

 If cajaavercconf3 = 1
    {
        Gui, 1:+AlwaysOnTop
    }






Return


okge1:


GuiControlGet, vcaaverc1, rgr1:, settt1
GuiControlGet, vcaaverc2, rgr1:, settt2
GuiControlGet, vcaaverc3, rgr1:, settt3
GuiControlGet, vcaaverc4, rgr1:, settt4
GuiControlGet, vcaaverc5, rgr1:, segundosastt
GuiControlGet, vcaaverc6, rgr1:, cardvalormin
GuiControlGet, vcaaverc7, rgr1:, DLsvDLs
GuiControlGet, vcaaverc17, rgr1:, carpetaespcs



GuiControlGet, thv1, rgr1:, setonhkey
GuiControlGet, thv2, rgr1:, setonhkey1
GuiControlGet, thv3, rgr1:, setonhkey2
GuiControlGet, thv4, rgr1:, setonhkey3

if thv2=
    thv2=^!a

if thv3=
    thv3=^!b

if thv4=
    thv4=^!c

if vcaaverc5<4
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Valor del tiempo demasiado bajo., 1
    
return
}

if vcaaverc5=
    vcaaverc5=30

if vcaaverc5=0
    vcaaverc5=30



Gui, rgr1:Submit, NoHide



IniWrite, %DLspDLs1%, %CLAVEaini%,  DLSp, a



IniWrite,%getidlsclav%, %CLAVEaini%, DLs, a
IniWrite,%vcaaverc7%, %CLAVEaini%, DLs, b

IniWrite, %vcaaverc1%, %CLAVEaini%, Cajas, a
IniWrite, %vcaaverc2%, %CLAVEaini%, Cajas, b
IniWrite, %vcaaverc3%, %CLAVEaini%, Cajas, c
IniWrite, %vcaaverc4%, %CLAVEaini%, Cajas, d
IniWrite, %vcaaverc17%, %CLAVEaini%, Cajas, e

IniWrite, %vcaaverc5%, %CLAVEaini%, setd, a
IniWrite, %vcaaverc6%, %CLAVEaini%, setd, b


IniWrite, %thv1%, %CLAVEaini%, AHKhk, a
IniWrite, %thv2%, %CLAVEaini%, AHKhk, b
IniWrite, %thv3%, %CLAVEaini%, AHKhk, c
IniWrite, %thv4%, %CLAVEaini%, AHKhk, d


goto Relwd1
Return






accdax1:

If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }





Gui 1:+Disabled 
FileSelectFile,   fileTR, 3, %carpetautil%, Open a file, File of the copy (*.%ext1%)
if fileTR =
  {  

Gui 1:-Disabled 
    return
    }
FileCopy, %fileTR%, %dir1%\%nombre1% ,0
if ErrorLevel
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El elemento:  %dir1%\%nombre1% ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
          FileCopy, %fileTR%, %dir1%\%nombre1% ,1
          if ErrorLevel
            {
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %dir1%\%nombre1%
Gui 1:-Disabled 
            Return
             } 
             Gui 1:-Disabled 
             setwindowcopyfile()
			  Efecto_Start("1","tollee41")
          } 
              Else IfMsgBox No, {
                
                Gui 1:-Disabled 
                
              Return
              }
}
else
{
Gui 1:-Disabled 
Return
}

return

accdax2:


 If cajaavercconf3 = 1
    {
        Gui, sni22:+AlwaysOnTop
    }



Gui, sni22:Font, Norm
Gui, sni22:Color ,,%stkcg5%
Gui, sni22:Font, c0x%stkcg4%
Gui, sni22:Color ,%stkcg6%



Gui, sni22:-MinimizeBox
Gui, sni22:+ownerrgr1 ; Make the main window (Gui #1) the owner of the "about box".
Gui rgr1:+Disabled  ; Disable main window.
Gui, sni22:Add, Edit,r1 vtollee225 x12 y9 w200 h20 ,
GuiControl, sni22:, tollee225, %valabus%
tollee225_TT := "Usar solo letras y que el mensaje`n sea lo mas corto posible."
Gui, sni22:Add, Button, vrr3 gacc221 x12 y39 w200 h20 , Cambiar nota por defecto

Gui, sni22:Add, Edit, r1 vtollee226 x12 y69 w200 h20 , 
tollee226_TT := "Usar solo letras y que el mensaje`n sea lo mas corto posible."
GuiControl, sni22:, tollee226, %valabus2%

Gui, sni22:Add, Button, vrr2 gacc222 x12 y99 w200 h20 , Cambiar nota extraordinaria

; Generated using SmartGUI Creator 4.0
Gui, sni22:Show, center h130 w225, %nameofthisscript1% - Notas
return








experr1:


If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }

 If cajaavercconf3 = 1
    {
        Gui, venespeditcopexp:+AlwaysOnTop
    }

Gui, rgr1:+Disabled 

Gui, venespeditcopexp:+ownerrgr1


Gui, venespeditcopexp:Font, Norm
Gui, venespeditcopexp:Color ,,%stkcg5%
Gui, venespeditcopexp:Font, c0x%stkcg4%
Gui, venespeditcopexp:Color ,%stkcg6%


Gui, venespeditcopexp:-MinimizeBox
Gui, venespeditcopexp:Add, Edit, vedespaco001 x10 y10 w200 h20 , Exp
Gui, venespeditcopexp:Add, Button , vtollee152 genraavv1 x60 y40 w100 h20 default, Generar
tollee152_TT := "Lo mas específico posible."

; Generated using SmartGUI Creator 4.0
Gui, venespeditcopexp:Show, Center h70 w220, %nameofthisscript1% - Experimental


Return







venespeditcopexpGuiclose:
    Gui venespeditcopexp:Destroy 
Gui, rgr1:-Disabled  ; Re-enable the main window (must be done prior to the next step).
Return









enraavv1:
Gui, venespeditcopexp:Submit, NoHide


 
 
    Gui venespeditcopexp:Destroy 
Gui, rgr1:-Disabled  ; Re-enable the main window (must be done prior to the next step).

FormatTime, mtec4,HH, H
FormatTime, mtec5,mm, m




namearvhcarpet=%name_no_ext1%-%mtec4%%mtec5%-%edespaco001%

namearvh=%name_no_ext1%-%edespaco001%.%ext1%




FileCreateDir %carpetautil%\%namearvhcarpet%

if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %carpetautil%\%namearvhcarpet%
return
 }


rutasavecar=%carpetautil%\%namearvhcarpet%


Filecopy, %elemccopaver%, %rutasavecar%\%namearvh%,0
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %rutasavecar%\%namearvh%
return
 }




Gui rgr1:Destroy

 If cajaavercconf3 = 1
    {
        Gui, 1:+AlwaysOnTop
    }



CLAVEain3=%A_ScriptDir%\Data\i\%namearvh%.ini

Filecopy, %CLAVEain2%, %CLAVEain3%, 0
          if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Operación de copia errónea:  %CLAVEain2%,
 }
 
 sleep 100
 
 ; operacion experimentar
iniWrite, 1, %CLAVEain3%,  Experi, a

iniWrite, %elemccopaver%, %CLAVEain3%,  Experi, c

IniWrite,%rutasavecar%\%namearvh%, %CLAVEain3%, AVersion, file
 ;limpiarcopias de seg delete
 
    iniwiterr2=0
    
    loop 30
    {
        
     EnvAdd,   iniwiterr2, 1
        
        xcc=
      iniwrite, %xcc%, %CLAVEain3%,  Ultimacopia, %iniwiterr2%      

if  iniwiterr2=31
    goto finloppsswri2

    }

  finloppsswri2:




Vareloroff=1

IniWrite,%rutasavecar%\%namearvh%, %CLAVEaini%, actualfile, file

goto Relwd2

return









acc221:
Gui, sni22:Submit, NoHide
GuiControlGet, vaes1 ,sni22:, tollee225
IniWrite, %vaes1%, %CLAVEaini%, Nota, a
valabus=%vaes1%
setwindowok()

Return


acc222:
Gui, sni22:Submit, NoHide
GuiControlGet, vaes2 ,sni22:, tollee226
IniWrite, %vaes2%, %CLAVEaini%, Nota, b
valabus2=%vaes2%
setwindowok()
return

sni22GuiClose:
Gui, rgr1:-Disabled
Gui sni22:Destroy
Return






accdax3:

If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }





if cajaavercconf1= 0
    {
        if carpinespecial=0
        carpetautil=%carpetaes%
        else
            carpetautil=%carpetaes%\Old_%name_no_ext1%

    }
    else
    {
       carpetautil=%dir1%\Old_%name_no_ext1%
    }
    
    
    
    if !FileExist(carpetautil)
FileCreateDir, %carpetautil%
    
    OpenFolderDLs(0,carpetautil,0,FoldExpl_univers)
 Efecto_Start("1","tollee44")
return

accdax4:
FileSelectFolder, Rutasave5, , 3
if Rutasave5 =
 {  
	
     return
}


IniWrite, %Rutasave5%, %CLAVEaini%, carpetaes, carpetaes
carpetaes=%carpetaes%
Return


accdax5:
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Se desea proceder?
IfMsgBox Yes, {
FileRemoveDir, %A_ScriptDir%\Data\i,1
} 
Else IfMsgBox No, {
Return
}
}
Return



accdax7:
run, explorer.exe "%A_ScriptDir%\Data\i"
return


window4:

If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }

 If cajaavercconf3 = 1
    {
        Gui, win4:+AlwaysOnTop
    }



Gui rgr1:+Disabled  ; Disable main window.

Gui, win4:Font, Norm
Gui, win4:Color ,,%stkcg5%
Gui, win4:Font, c0x%stkcg4%
Gui, win4:Color ,%stkcg6%


Gui, win4:+ownerrgr1 ; Make the main window (Gui #1) the owner of the "about box".

Gui, win4:-MinimizeBox
Gui, win4:Add, Edit, vedespaco2 x12 y9 w400 h20 , %Prog1%




Gui, win4:Add, Button, vtollee58 genra12 x280 y39 w70 h20 Default, Establecer
Gui, win4:Add, Button, vtollee62 gselecf1 x360 y39 w50 h20 , File



Gui, win4:Add, DropDownList, x12 y39 w255 h10 R30 altsubmit vDLspDLs1 gDLspDLs1  hwndCBBID1, %DLsDLsp%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
GuiControl,  win4:Choose, DLspDLs1, %positionedslprog%




; Generated using SmartGUI Creator 4.0
Gui, win4:Show, Center h74 w429, %nameofthisscript1% - Ruta del programa 2


Return


DLspDLs1:

Gui, win4:Submit, NoHide
downcountppp := "Sepp"DLspDLs1 

if  %downcountppp%=Barra
{
return
}


GuiControl,win4:, edespaco2, % %downcountppp%

Return






selecf1:
FileSelectFile, file7, 3, , Open a file, Programas (*.exe)
if file7=
  {  

    return
    }
    else
 {  
GuiControl,win4:, edespaco2, %file7%
    }
return





enra12:
Gui, win4:Submit, NoHide
GuiControlGet, vaes8 ,win4:, edespaco2

if vaes8=
vaes8=No especificado



Prog1=%vaes8%
IniWrite, %Prog1%, %CLAVEain2%,  AVersion, Prog
IniWrite, %DLspDLs1%, %CLAVEaini%, DLs, c

postDls1=%DLspDLs1%


Gui, rgr1:-Disabled
Gui win4:Destroy
setwindowok()
return


win4GuiClose:


Gui, rgr1:-Disabled
Gui win4:Destroy
return


open22:
If Prog1= No especificado
{
MsgBox 0x40040, %nameofthisscript1% - Información,Ejecutable no especificado., 2
return
}
else
    run, %Prog1% "%elemccopaver%", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return
}

 Efecto_Start("1","tollee60")
return


proganum31:
If Prog1= No especificado
{
MsgBox 0x40040, %nameofthisscript1% - Información,Ejecutable no especificado., 2
return
}
else
    run, %Prog2% "%elemccopaver%", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return
}
 Efecto_Start("1","proganum31")
return





accdax10:


If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }




Gui, snumm2: +ownerrgr1
Gui rgr1:+Disabled  ; Disable main window.

varespecialguiexist1=1

Gui, snumm2:Font, Norm
Gui, snumm2:Color ,,%stkcg5%
Gui, snumm2:Font, c0x%stkcg4%
Gui, snumm2:Color ,%stkcg6%






Gui, snumm2:Add, CheckBox, x12 y9 w40 h20 vactivadorletra1 Checked%activarletra1%, A
activadorletra1_TT := "Activar o desactivar las letras en esta posición."


Gui, snumm2:Add, Edit, x62 y9 w40 h20 ventrenumeros2, %positguardav2%
entrenumeros2_TT := "Simbolo entre posiciónes."


Gui, snumm2:Add, CheckBox, x112 y9 w40 h20 vactivadorletra3  Checked%activarletra3%, A
activadorletra3_TT := "Activar o desactivar las letras en esta posición."


Gui, snumm2:Add, Edit, x162 y9 w40 h20 ventrenumeros4, %positguardav4%
entrenumeros4_TT := "Simbolo entre posiciónes."


Gui, snumm2:Add, CheckBox, x212 y9 w40 h20 vactivadorletra5 Checked%activarletra5%, A
activadorletra5_TT := "Activar o desactivar las letras en esta posición."



Gui, snumm2:Add, Edit, x262 y9 w40 h20 ventrenumeros6, %positguardav6%
entrenumeros6_TT := "Simbolo entre posiciónes."


Gui, snumm2:Add, CheckBox, x312 y9 w40 h20 vactivadorletra7 Checked%activarletra7%, A
activadorletra7_TT := "Activar o desactivar las letras en esta posición."



Gui, snumm2:Add, Edit, x362 y9 w40 h20 ventrenumeros8, %positguardav8%
entrenumeros8_TT := "Simbolo entre posiciónes."

Gui, snumm2:Add, CheckBox, x412 y9 w40 h20 vactivadorletra9 Checked%activarletra9%, A
activadorletra9_TT := "Activar o desactivar las letras en esta posición."





Gui, snumm2:Add, Edit, x462 y9 w40 h20 ventrenumeros10, %positguardav10%
entrenumeros10_TT := "Simbolo entre posiciónes."

Gui, snumm2:Add, CheckBox, x512 y9 w40 h20 vactivadorletra11 Checked%activarletra11%, A
activadorletra11_TT := "Activar o desactivar las letras en esta posición."




Gui, snumm2:Add, Edit, x562 y9 w40 h20 ventrenumeros12, %positguardav12%
entrenumeros12_TT := "Simbolo entre posiciónes."


Gui, snumm2:Add, CheckBox, x612 y9 w40 h20 vactivadorletra13 Checked%activarletra13%, A
activadorletra13_TT := "Activar o desactivar las letras en esta posición."




Gui, snumm2:Add, Edit, x662 y9 w40 h20 ventrenumeros14, %positguardav14%
entrenumeros14_TT := "Simbolo entre posiciónes."



Gui, snumm2:Add, CheckBox, x712 y9 w40 h20 vactivadorletra15 Checked%activarletra15%, A
activadorletra15_TT := "Activar o desactivar las letras en esta posición."




Gui, snumm2:Add, Edit, x762 y9 w40 h20 ventrenumeros16, %positguardav16%
entrenumeros16_TT := "Simbolo entre posiciónes."



Gui, snumm2:Add, CheckBox, x812 y9 w40 h20 vactivadorletra17 Checked%activarletra17%, A
activadorletra17_TT := "Activar o desactivar las letras en esta posición."




Gui, snumm2:Add, Edit, x862 y9 w40 h20 ventrenumeros18, %positguardav18%
entrenumeros18_TT := "Simbolo entre posiciónes."



Gui, snumm2:Add, CheckBox, x912 y9 w40 h20 vactivadorletra19 Checked%activarletra19%, A
activadorletra19_TT := "Activar o desactivar las letras en esta posición."


Gui, snumm2:Add, Button, x132 y60 w110 h20 galorpodiin valorpodiin, Escribir estilo
alorpodiin_TT := " Escribir solo el estilo por defecto en el ini actual."

Gui, snumm2:Add, Button, x912 y60 w40 h20 vestabnumsec gestabnumsec, ok


Gui, snumm2:Add, Button, x12 y60 w110 h20 vestacomprede gestacomprede, Predeterminado
estacomprede_TT := " Establecer el estilo como predeterminado."

Gui, snumm2:Add, Text, x272 y64 w150 h20 , Valor de avance por copia
Gui, snumm2:Add, Edit, x430 y60 w40 h20 vavanceval number, %ancencecopi%


Gui, snumm2:Add, Text, x482 y64 w350 h20 , En lo posible evitar usar una secuencia larga.

Gui,  snumm2:Font, c0xffffff  w300 s16
Gui, snumm2:Add, text, x10 y29 w950 h30 vCENTRALLA center, 


; Generated using SmartGUI Creator 4.0
Gui, snumm2:Show, center h90 w970, %nameofthisscript1% - Estilo de la secuencia






serrvtmp1=0

serrvtmp3=0

serrvtmp5=0

serrvtmp7=0

serrvtmp9=0

serrvtmp11=0

serrvtmp13=0

serrvtmp15=0

serrvtmp17=0

serrvtmp19=323456789999




Loop 100
{
	Sleep, 2500
    
Gui, snumm2:Submit, NoHide

EnvAdd, serrvtmp19, 1


if activadorletra19=1
{

acccalc1:=serrvtmp19/27
adffff1 :=Format("{:d}", acccalc1)
extax1:=serrvtmp19-(adffff1*27)




creatvat:="letratty"extax1
vfgkk19=% %creatvat%

}
else
{

vfgkk19=%serrvtmp19%
    
if vfgkk19>=10
   { 
    acccalc1:=serrvtmp19/10
   adffff1 :=Format("{:d}", acccalc1)
   extax1:=serrvtmp19-(adffff1*10)
   

vfgkk19=%extax1%

}
}



EnvAdd, serrvtmp17, %adffff1%


if activadorletra17=1
{


acccalc1:=serrvtmp17/27
adffff2 :=Format("{:d}", acccalc1)
extax2:=serrvtmp17-(adffff2*27)


creatvat:="letratty"extax2
vfgkk17=% %creatvat%


}
else
{
vfgkk17=%serrvtmp17%

    
if vfgkk17>=10
   { 
    acccalc1:=serrvtmp17/10
   adffff2 :=Format("{:d}", acccalc1)
   extax2:=serrvtmp17-(adffff2*10)
   

vfgkk17=%extax2%



}

}
    
EnvAdd, serrvtmp15, %adffff2%


if activadorletra15=1
{

    acccalc1:=serrvtmp15/27
   adffff3 :=Format("{:d}", acccalc1)
   extax3:=serrvtmp15-(adffff3*27)
   


creatvat:="letratty"extax3
vfgkk15=% %creatvat%


}
else
{
vfgkk15=%serrvtmp15%

    
if vfgkk15>=10
   { 
    acccalc1:=serrvtmp15/10
   adffff3 :=Format("{:d}", acccalc1)
   extax3:=serrvtmp15-(adffff3*10)
   

vfgkk15=%extax3%



}

}
    
    EnvAdd, serrvtmp13, %adffff3%


if activadorletra13=1
{
    acccalc1:=serrvtmp13/27
   adffff4 :=Format("{:d}", acccalc1)
   extax4:=serrvtmp13-(adffff4*27)
   

creatvat:="letratty"extax4
vfgkk13=% %creatvat%



}
else
{
vfgkk13=%serrvtmp13%

    
if vfgkk13>=10
   { 
    acccalc1:=serrvtmp13/10
   adffff4 :=Format("{:d}", acccalc1)
   extax4:=serrvtmp13-(adffff4*10)
   

vfgkk13=%extax4%



}

}
    
    
EnvAdd, serrvtmp11, %adffff4%


if activadorletra11=1
{



    acccalc1:=serrvtmp11/27
   adffff5 :=Format("{:d}", acccalc1)
   extax5:=serrvtmp11-(adffff5*27)
   


creatvat:="letratty"extax5
vfgkk11=% %creatvat%


}
else
{
vfgkk11=%serrvtmp11%

    
if vfgkk11>=10
   { 
    acccalc1:=serrvtmp11/10
   adffff5 :=Format("{:d}", acccalc1)
   extax5:=serrvtmp11-(adffff5*10)
   

vfgkk11=%extax5%



}

}
    
    
EnvAdd, serrvtmp9, %adffff5%


if activadorletra9=1
{


    acccalc1:=serrvtmp9/27
   adffff6 :=Format("{:d}", acccalc1)
   extax6:=serrvtmp9-(adffff6*27)
   

creatvat:="letratty"extax6
vfgkk9=% %creatvat%
}
else
{
vfgkk9=%serrvtmp9%

    
if vfgkk9>=10
   { 
    acccalc1:=serrvtmp9/10
   adffff6 :=Format("{:d}", acccalc1)
   extax6:=serrvtmp9-(adffff6*10)
   

vfgkk9=%extax6%



}

}
    
    
EnvAdd, serrvtmp7, %adffff6%


if activadorletra7=1
{
    

    acccalc1:=serrvtmp7/27
   adffff7 :=Format("{:d}", acccalc1)
   extax7:=serrvtmp7-(adffff7*27)
   
creatvat:="letratty"extax7
vfgkk7=% %creatvat%
}
else
{
vfgkk7=%serrvtmp7%

    
if vfgkk7>=10
   { 
    acccalc1:=serrvtmp7/10
   adffff7 :=Format("{:d}", acccalc1)
   extax7:=serrvtmp7-(adffff7*10)
   

vfgkk7=%extax7%



}

}
    
    
EnvAdd, serrvtmp5, %adffff7%


if activadorletra5=1
{
    

    acccalc1:=serrvtmp5/27
   adffff8 :=Format("{:d}", acccalc1)
   extax8:=serrvtmp5-(adffff8*27)
   

creatvat:="letratty"extax8
vfgkk5=% %creatvat%
}
else
{
vfgkk5=%serrvtmp5%

    
if vfgkk5>=10
   { 
    acccalc1:=serrvtmp5/10
   adffff8 :=Format("{:d}", acccalc1)
   extax8:=serrvtmp5-(adffff8*10)
   

vfgkk5=%extax8%



}

}
    
    
    
EnvAdd, serrvtmp3, %adffff8%


if activadorletra3=1
{
    

    acccalc1:=serrvtmp3/27
   adffff9 :=Format("{:d}", acccalc1)
   extax9:=serrvtmp3-(adffff9*27)
   

creatvat:="letratty"extax9
vfgkk3=% %creatvat%
}
else
{
vfgkk3=%serrvtmp5%

    
if vfgkk3>=10
   { 
    acccalc1:=serrvtmp3/10
   adffff9 :=Format("{:d}", acccalc1)
   extax9:=serrvtmp3-(adffff9*10)
   

vfgkk3=%extax9%



}

}  
    
    
 EnvAdd, serrvtmp1, %adffff9%


if activadorletra1=1
{
    

    acccalc1:=serrvtmp1/27
   adffff10 :=Format("{:d}", acccalc1)
   extax10:=serrvtmp1-(adffff10*27)
   

creatvat:="letratty"extax10
vfgkk1=% %creatvat%
}
else
{
vfgkk1=%serrvtmp1%

    
if vfgkk1>=10
   { 
    acccalc1:=serrvtmp1/10
   adffff10 :=Format("{:d}", acccalc1)
   extax10:=serrvtmp1-(adffff10*10)
   

vfgkk1=%extax10%



}

}
    
      
 




    
if vfgkk1=
serrvtmp2=


if vfgkk3=
serrvtmp4=


if vfgkk5=
serrvtmp6=

if vfgkk7=
serrvtmp8=

if vfgkk9=
serrvtmp10=

if vfgkk11=
serrvtmp12=

if vfgkk13=
serrvtmp14=

if vfgkk15=
serrvtmp16=

if vfgkk17=
serrvtmp18=




    
    
    fgesfe=%vfgkk1%%entrenumeros2%%vfgkk3%%entrenumeros4%%vfgkk5%%entrenumeros6%%vfgkk7%%entrenumeros8%%vfgkk9%%entrenumeros10%%vfgkk11%%entrenumeros12%%vfgkk13%%entrenumeros14%%vfgkk15%%entrenumeros16%%vfgkk17%%entrenumeros18%%vfgkk19%
    
    guicontrol, snumm2:, CENTRALLA, %fgesfe%
    
    
    
    
    
    If varespecialguiexist1=0
        break
    
    }
return




alorpodiin:
iniWrite, %dfectvalavercest1%, %CLAVEain2%,  Sec, 1
iniWrite, %dfectvalavercest2%, %CLAVEain2%,  Sec, 2
iniWrite, %dfectvalavercest3%, %CLAVEain2%,  Sec, 3
iniWrite, %dfectvalavercest4%, %CLAVEain2%,  Sec, 4
iniWrite, %dfectvalavercest5%, %CLAVEain2%,  Sec, 5
iniWrite, %dfectvalavercest6%, %CLAVEain2%,  Sec, 6
iniWrite, %dfectvalavercest7%, %CLAVEain2%,  Sec, 7
iniWrite, %dfectvalavercest8%, %CLAVEain2%,  Sec, 8
iniWrite, %dfectvalavercest9%, %CLAVEain2%,  Sec, 9
iniWrite, %dfectvalavercest10%, %CLAVEain2%,  Sec, 10
iniWrite, %dfectvalavercest11%, %CLAVEain2%,  Sec, 11
iniWrite, %dfectvalavercest12%, %CLAVEain2%,  Sec, 12
iniWrite, %dfectvalavercest13%, %CLAVEain2%,  Sec, 13
iniWrite, %dfectvalavercest14%, %CLAVEain2%,  Sec, 14
iniWrite, %dfectvalavercest15%, %CLAVEain2%,  Sec, 15
iniWrite, %dfectvalavercest16%, %CLAVEain2%,  Sec, 16
iniWrite, %dfectvalavercest17%, %CLAVEain2%,  Sec, 17
iniWrite, %dfectvalavercest18%, %CLAVEain2%,  Sec, 18
iniWrite, %dfectvalavercest19%, %CLAVEain2%,  Sec, 19


iniread, activarletra1, %CLAVEain2%,  Sec, 1
iniread, positguardav2, %CLAVEain2%,  Sec, 2
iniread, activarletra3, %CLAVEain2%,  Sec, 3
iniread, positguardav4, %CLAVEain2%,  Sec, 4
iniread, activarletra5, %CLAVEain2%,  Sec, 5
iniread, positguardav6, %CLAVEain2%,  Sec, 6
iniread, activarletra7, %CLAVEain2%,  Sec, 7
iniread, positguardav8, %CLAVEain2%,  Sec, 8
iniread, activarletra9, %CLAVEain2%,  Sec, 9
iniread, positguardav10, %CLAVEain2%,  Sec, 10
iniread, activarletra11, %CLAVEain2%,  Sec, 11
iniread, positguardav12, %CLAVEain2%,  Sec, 12
iniread, activarletra13, %CLAVEain2%,  Sec, 13
iniread, positguardav14, %CLAVEain2%,  Sec, 14
iniread, activarletra15, %CLAVEain2%,  Sec, 15
iniread, positguardav16, %CLAVEain2%,  Sec, 16
iniread, activarletra17, %CLAVEain2%,  Sec, 17
iniread, positguardav18, %CLAVEain2%,  Sec, 18
iniread, activarletra19, %CLAVEain2%,  Sec, 19






Set_Number_AV(2)





return




snumm2GuiClose:
Gui, rgr1:-Disabled
Gui snumm2:Destroy

varespecialguiexist1=1
return

estabnumsec:

If elemccopaver= No especificado
    {
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
return
    }
    

FileCopy, %A_ScriptDir%\Data\1A ,%A_ScriptDir%\Data\i\0\%fgesfe% ,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Algunos de los carecteres no son soportados por el sistema de archivos. , 2
Return
}
FileDelete, %A_ScriptDir%\Data\i\0\%fgesfe%



if  FileExist(CLAVEain2)
{    

if avanceval=
avanceval=1


iniWrite, %avanceval%, %CLAVEain2%,  Avance, a

iniWrite, %activadorletra1%, %CLAVEain2%,  Sec, 1
iniWrite, %entrenumeros2%, %CLAVEain2%,  Sec, 2
iniWrite, %activadorletra3%, %CLAVEain2%,  Sec, 3
iniWrite, %entrenumeros4%, %CLAVEain2%,  Sec, 4
iniWrite, %activadorletra5%, %CLAVEain2%,  Sec, 5
iniWrite, %entrenumeros6%, %CLAVEain2%,  Sec, 6
iniWrite, %activadorletra7%, %CLAVEain2%,  Sec, 7
iniWrite, %entrenumeros8%, %CLAVEain2%,  Sec, 8
iniWrite, %activadorletra9%, %CLAVEain2%,  Sec, 9
iniWrite, %entrenumeros10%, %CLAVEain2%,  Sec, 10
iniWrite, %activadorletra11%, %CLAVEain2%,  Sec, 11
iniWrite, %entrenumeros12%, %CLAVEain2%,  Sec, 12
iniWrite, %activadorletra13%, %CLAVEain2%,  Sec, 13
iniWrite, %entrenumeros14%, %CLAVEain2%,  Sec, 14
iniWrite, %activadorletra15%, %CLAVEain2%,  Sec, 15
iniWrite, %entrenumeros16%, %CLAVEain2%,  Sec, 16
iniWrite, %activadorletra17%, %CLAVEain2%,  Sec, 17
iniWrite, %entrenumeros18%, %CLAVEain2%,  Sec, 18
iniWrite, %activadorletra19%, %CLAVEain2%,  Sec, 19


ancencecopi=%avanceval%

activarletra1=%vactivadorletra1%
positguardav2=%entrenumeros2%
activarletra3=%vactivadorletra3%
positguardav4=%entrenumeros4%
activarletra5=%vactivadorletra5%
positguardav6=%entrenumeros6%
activarletra7=%vactivadorletra7%
positguardav8=%entrenumeros8%
activarletra9=%vactivadorletra9%
positguardav10=%entrenumeros10%
activarletra11=%vactivadorletra11%
positguardav12=%entrenumeros12%
activarletra13=%vactivadorletra13%
positguardav14=%entrenumeros14%
activarletra15=%vactivadorletra15%
positguardav16=%entrenumeros16%
activarletra17=%vactivadorletra17%
positguardav18 =%entrenumeros18%
activarletra19=%vactivadorletra19%




setwindowok()
}






return


estacomprede:


FileCopy, %A_ScriptDir%\Data\1A ,%A_ScriptDir%\Data\i\0\%fgesfe% ,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Algunos de los carecteres no son soportados por el sistema de archivos. , 2
Return
}
FileDelete, %A_ScriptDir%\Data\i\0\%fgesfe%

if avanceval=
avanceval=1


iniWrite, %avanceval%, %CLAVEaini%,  Avance, a

iniWrite, %activadorletra1%, %CLAVEaini%,  Sec, 1
iniWrite, %entrenumeros2%, %CLAVEaini%,  Sec, 2
iniWrite, %activadorletra3%, %CLAVEaini%,  Sec, 3
iniWrite, %entrenumeros4%, %CLAVEaini%,  Sec, 4
iniWrite, %activadorletra5%, %CLAVEaini%,  Sec, 5
iniWrite, %entrenumeros6%, %CLAVEaini%,  Sec, 6
iniWrite, %activadorletra7%, %CLAVEaini%,  Sec, 7
iniWrite, %entrenumeros8%, %CLAVEaini%,  Sec, 8
iniWrite, %activadorletra9%, %CLAVEaini%,  Sec, 9
iniWrite, %entrenumeros10%, %CLAVEaini%,  Sec, 10
iniWrite, %activadorletra11%, %CLAVEaini%,  Sec, 11
iniWrite, %entrenumeros12%, %CLAVEaini%,  Sec, 12
iniWrite, %activadorletra13%, %CLAVEaini%,  Sec, 13
iniWrite, %entrenumeros14%, %CLAVEaini%,  Sec, 14
iniWrite, %activadorletra15%, %CLAVEaini%,  Sec, 15
iniWrite, %entrenumeros16%, %CLAVEaini%,  Sec, 16
iniWrite, %activadorletra17%, %CLAVEaini%,  Sec, 17
iniWrite, %entrenumeros18%, %CLAVEaini%,  Sec, 18
iniWrite, %activadorletra19%, %CLAVEaini%,  Sec, 19



defectavanceval=%avanceval%

dfectvalavercest1=%activadorletra1%
dfectvalavercest2=%entrenumeros2%
dfectvalavercest3=%activadorletra3%
dfectvalavercest4=%entrenumeros4%
dfectvalavercest5=%activadorletra5%
dfectvalavercest6=%entrenumeros6%
dfectvalavercest7=%activadorletra7%
dfectvalavercest8=%entrenumeros8%
dfectvalavercest9=%activadorletra9%
dfectvalavercest10=%entrenumeros10%
dfectvalavercest11=%activadorletra11%
dfectvalavercest12=%entrenumeros12%
dfectvalavercest13=%activadorletra13%
dfectvalavercest14=%entrenumeros14%
dfectvalavercest15=%activadorletra15%
dfectvalavercest16=%entrenumeros16%
dfectvalavercest17=%activadorletra17%
dfectvalavercest18 =%entrenumeros18%
dfectvalavercest19=%activadorletra19%

setwindowok()

return


obtvraini:

    

clipboard= %valorgeneralaverc%
setwindowcopy()

return


















;opciones de salida


Relwd1:
Vareloroff=1

IniWrite, %elemccopaver%, %CLAVEaini%, actualfile, file

goto Relwd2
return




laexit:
Vareloroff=0

IniWrite, %elemccopaver%, %CLAVEaini%, actualfile, file

goto Relwd2
return









accfinarchact:


;Archivos recientes

if  nombre1=No especificado
goto notwriterecfile2

Numcompname1=0
Loop 20
{
    EnvAdd, Numcompname1,1
concompname1:="Archrecie" Numcompname1
concompname2=% %concompname1%

concompname3:="Nameofrecloop"Numcompname1

SplitPath, concompname2, %concompname3%

}

Numcompname1=0
Loop 20
{
    EnvAdd, Numcompname1,1
concompname3:="Nameofrecloop"Numcompname1

if nombre1=% %concompname3%
goto notwriterecfile2
}


EnvAdd, Archrecie0,1

if Archrecie0>20
    Archrecie0=1

IniWrite, %elemccopaver%, %CLAVEaini%, Recientes, %Archrecie0%



TmpAVarchre1:="Archrecie" Archrecie0
TmpAVarchre2=% %TmpAVarchre1%
SplitPath, TmpAVarchre2, Nameofrec


TmpAVarchre3:="Archrecie" Archrecie0
%TmpAVarchre3%=%nombre1%
TmpAVarchre4=% %TmpAVarchre3%


Menu, AVcionmenu2, Rename, %Archrecie0% %Nameofrec%, %Archrecie0% %TmpAVarchre4%

notwriterecfile2:




Relwd3:
Vareloroff=1
IniWrite,No especificado, %CLAVEaini%, actualfile, file



Relwd2:
;Reload save data






;guardar colores al salir de la aplicación
if coloresaguardar=1
{
	
	
	
;colores personalizados
       maxinarrpal:= Palette2.MaxIndex()



maxinarrpal1:=maxinarrpal

maxinarrpal2=0
arrsave:=[]
Loop, 16
{
	maxinarrpal1--

if (Palette2[maxinarrpal1]=160 or Palette2[maxinarrpal1]=64)
	continue

if (Palette2[maxinarrpal1]=""  )
Palette2[maxinarrpal1]=0
	

maxinarrpal2++
	arrsave[maxinarrpal2]:=Palette2[maxinarrpal1]
	


} until maxinarrpal2=16



;guardado
maxinarrpal4=17
	Loop 16
{
	maxinarrpal4--
	arrcolors_W .= arrsave[maxinarrpal4] . "|"


} 

IniWrite, % arrcolors_W, %CLAVEaini%, STKG,7
;colores personalizados



}














if  activeconfig=1
{
    
   Gui rgr1:Show
    
WinGetPos, gui_x, gui_y,,, ahk_id %gui_idrgr1%
 
IniWrite, x%gui_x% y%gui_y%, %CLAVEaini%, window position2, gui_position

}
Gui 1:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
IniWrite, x%gui_x% y%gui_y%, %CLAVEaini%, window position, gui_position


IniWrite, %carpetaes%, %CLAVEaini%, carpetaes, carpetaes
;positionn of gui if is new use in new pc
IniWrite, %usonuev3%, %CLAVEaini%, pcnewres, a

IniWrite, %Archrecie0%, %CLAVEaini%, Recientes, 0




if Vareloroff=1
Reload
else
ExitApp
return






















































;Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********
;Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********







;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease

ShowGuiPlease(guiZh,guiZw,guiposition,guiname)
{
	

if guiposition=Center
		goto ErrWrit1



	
	
cambscreen=0
Loop, Parse, guiposition, y ,                                  
	{
Envadd, cambscreen, 1

cambscreen2:="cambscreenvv"cambscreen

%cambscreen2%=%A_LoopField%	;para numeracion


}
cambscreenvv4:=StrReplace(cambscreenvv1, "x", "")



if cambscreenvv4=
	goto ErrWrit1

if cambscreenvv2=
	goto ErrWrit1


if cambscreenvv4=ERROR
	goto ErrWrit1

if cambscreenvv2=ERROR
	goto ErrWrit1




if cambscreenvv4 is not integer
	goto ErrWrit1

if cambscreenvv2 is not integer
	goto ErrWrit1




varichan:="winzmodif_"guiname

if %varichan%=1
{
prpo1:=cambscreenvvpcn1/100
prpo2:=cambscreenvv4/prpo1
prpo3:=prpo2/100
prpo4:=usonuev1*prpo3
prpo5 :=Format("{:d}", prpo4)



prpo6:=cambscreenvvpcn2/100
prpo7:=cambscreenvv2/prpo6
prpo8:=prpo7/100
prpo9:=usonuev2*prpo8
prpo10 :=Format("{:d}", prpo9)


cambscreenvv4=%prpo5%
cambscreenvv2=%prpo10%



%varichan%=0
}







prpo15=%cambscreenvv4%
prpo20=%cambscreenvv2%



usonuev1mod:=usonuev1-guiZw-4
usonuev2mod:=usonuev2-guiZh-27


if cambscreenvv4>=%usonuev1mod%
{
	;Tamaño de gui mas espacio 50 w
	prpo15:=usonuev1mod
}


if cambscreenvv2>=%usonuev2mod%
	{
	;Tamaño de gui mas espacio 50 h
		
	prpo20:=usonuev2mod
}


;x
if cambscreenvv4<0
{
	;Tamaño de gui mas espacio 50 w
	prpo15=0
}

;y
if cambscreenvv2<0
{
	;Tamaño de gui mas espacio 50 w
	prpo20=0
}





guipositionmod=x%prpo15% y%prpo20% 
	

	
	Return guipositionmod
	
	
	
	
	
	
	
	
	ErrWrit1:
	guipositionmod:=Center
   Return guipositionmod

}




;-Temas-Tema-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas
;-Temas-Tema-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas
;-Temas-Tema-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas

;By jNizM
;https://www.autohotkey.com/boards/viewtopic.php?t=6434
HexToDec(hex)
{
    VarSetCapacity(dec, 66, 0)
    , val := DllCall("msvcrt.dll\_wcstoui64", "Str", hex, "UInt", 0, "UInt", 16, "CDECL Int64")
    , DllCall("msvcrt.dll\_i64tow", "Int64", val, "Str", dec, "UInt", 10, "CDECL")
    return dec
}
;ok
;16744448
;not
;2551280


; by VxE
;https://www.autohotkey.com/board/topic/85571-dec-hex-without-setformat-command/
FHex( int, pad=0 ) { ; Function by [VxE]. Formats an integer (decimals are truncated) as hex.

; "Pad" may be the minimum number of digits that should appear on the right of the "0x".

	Static hx := "0123456789ABCDEF"

	If !( 0 < int |= 0 )

		Return !int ? "0x0" : "-" FHex( -int, pad )

	s := 1 + Floor( Ln( int ) / Ln( 16 ) )

	h := SubStr( "0x0000000000000000", 1, pad := pad < s ? s + 2 : pad < 16 ? pad + 2 : 18 )

	u := A_IsUnicode = 1

	Loop % s

		NumPut( *( &hx + ( ( int & 15 ) << u ) ), h, pad - A_Index << u, "UChar" ), int >>= 4

	Return h

}





;lista de los nombres de archivos
GetFonts()
{
hDC := DllCall("GetDC", "Ptr", DllCall("GetDesktopWindow", "Ptr"), "Ptr")
Callback := RegisterCallback("EnumFontsCallback", "F")
DllCall("EnumFontFamilies", "Ptr", hDC, "Ptr", 0, "Ptr", Callback, "Ptr", lParam := 0)
DllCall("ReleaseDC", "Ptr", 0, "Ptr", hDC)
EnumFontsCallback(lpelf)
}

EnumFontsCallback(lpelf) {
	global Fontlist
	FontName := StrGet(lpelf + 28, 32)
	If (SubStr(FontName, 1, 1) != "@") {
		Fontlist .= FontName . "|"
	}
	Return True
}




;https://github.com/Appifyer/Colorette/blob/master/Colorette.ahk

; ******* General ******* 
; COLORETTE
;ScriptVersion := 1.01
; Script created using Autohotkey (http://www.autohotkey.com)
; SVN handling by Tortoise SVN ;)
; AHK version: AHK_L (www.autohotkey.net/~Lexikos/AutoHotkey_L)
; Library dependancies:
; - DLG.ahk for color Dialogue
;
; AUTHOR: sumon @ the Autohotkey forums, (simon.stralberg (@) gmail.com)
; License: sumon's Std License (see my forum signature)
; 
; Thanks to: The Naked General _ jamixzol@gmail.com for his "Flashy and impractical color picker" which inspired me to this. Some of his comments may remain.
; || To-do ||
; Settings?
; Smoother solution for the hotkeys

startcolor:


iniread, coloresp, %CLAVEaini%, COLORETTE, a

if (coloresp="" or coloresp="ERROR")
{
IniWrite, 0, %CLAVEaini%, COLORETTE, a
coloresp=0
}


if coloresp <10
{
MsgBox 0x40040, %nameofthisscript1% - Información, Una vez ubicado el color pulse la tecla Ctrl izquierda para seleccionarlo.
coloresp++
IniWrite, %coloresp%, %CLAVEaini%, COLORETTE, a
}



Hotkey, LCtrl, CatchColor
Hotkey, !LCtrl, CatchColor

Hotkey, LCtrl, On
Hotkey, !LCtrl, On

;ColoretteIcon := A_ScriptFullPath
;Traytip, Colorette:, RIGHTCLICK to copy HEX value`nAdd ALT for RGB value`nPress SPACE for a color dialogue, 5
;OnExit, Exit
;SetSystemCursor("IDC_Cross")
;FileCreateDir, data
;FileInstall, data\pick_click.wav, data\pick_click.wav
;If (FileExist("colorette.exe"))
  ; Menu, Tray, Icon, Colorette.exe
; MAIN LOOOP: Pick Color

SetSystemCursor("IDC_Cross")
Gui,COLORETTE: -Caption +ToolWindow +LastFound +AlwaysOnTop +Border
varofCOLORETTEgui=1

Loop
{
  ; CoordMode, Mouse, Screen
   MouseGetPos X, Y
   PixelGetColor Color, X, Y, RGB
   StringRight, color, color, 6 ;removes 0x prefix

   Gui, COLORETTE:Color, %color%
   CoordMode, Pixel 
   mX := X - 25
   mY := Y - 80
   ;GuiControl,,Var,%color%
   Gui, COLORETTE: Show, NoActivate x%mX% y%mY% w50 h50
   
   
   if varofCOLORETTEgui=0
{
	Gui, COLORETTE: Destroy
	break
}
}




CatchColor: ; Catch Hover'd color

StringRight, color, color, 6 ; Color HEX to RGB (or RGB to RGB)

   OutColor := Color
   OutMsg :=  "#" . Color  

GuiControl, guistkc:,%contexit%,%OutColor%



Gui, COLORETTE: Destroy

Hotkey, !LCtrl, Off
Hotkey, LCtrl, Off ; Position this in a nice place

RestoreCursors()

varofCOLORETTEgui=0

return




; FUNCTIONS
; : SetSystemCursor() and RestoreCursors()
HexToRGB(Color, Message="") ; Input: 6 letters
{
   ; If df, d is *16 and f is *1. Thus, Rx = R*16 while Rn = R*1
   Rx := SubStr(Color, 1,1)
   Rn := SubStr(Color, 2,1)
   Gx := SubStr(Color, 3,1)
   Gn := SubStr(Color, 4, 1)
   Bx := SubStr(Color, 5,1)
   Bn := SubStr(Color, 6,1)
   AllVars := "Rx|Rn|Gx|Gn|Bx|Bn"
   Loop, Parse, Allvars, |
   {
   StringReplace, %A_LoopField%, %A_LoopField%, a, 10
   StringReplace, %A_LoopField%, %A_LoopField%, b, 11
   StringReplace, %A_LoopField%, %A_LoopField%, c, 12
   StringReplace, %A_LoopField%, %A_LoopField%, d, 13
   StringReplace, %A_LoopField%, %A_LoopField%, e, 14
   StringReplace, %A_LoopField%, %A_LoopField%, f, 15
}
R := Rx*16+Rn
G := Gx*16+Gn
B := Bx*16+Bn
If (Message)
   Out := "R:" . R . " G:" . G . " B:" . B
else
   Out := R . G . B
 return Out
}

RestoreCursors()
{
   SPI_SETCURSORS := 0x57
   DllCall( "SystemParametersInfo", UInt,SPI_SETCURSORS, UInt,0, UInt,0, UInt,0 )
}

SetSystemCursor( Cursor = "", cx = 0, cy = 0 )
{
   BlankCursor := 0, SystemCursor := 0, FileCursor := 0 ; init
   
   SystemCursors = 32512IDC_ARROW,32513IDC_IBEAM,32514IDC_WAIT,32515IDC_CROSS
   ,32516IDC_UPARROW,32640IDC_SIZE,32641IDC_ICON,32642IDC_SIZENWSE
   ,32643IDC_SIZENESW,32644IDC_SIZEWE,32645IDC_SIZENS,32646IDC_SIZEALL
   ,32648IDC_NO,32649IDC_HAND,32650IDC_APPSTARTING,32651IDC_HELP
   
   If Cursor = ; empty, so create blank cursor 
   {
      VarSetCapacity( AndMask, 32*4, 0xFF ), VarSetCapacity( XorMask, 32*4, 0 )
      BlankCursor = 1 ; flag for later
   }
   Else If SubStr( Cursor,1,4 ) = "IDC_" ; load system cursor
   {
      Loop, Parse, SystemCursors, `,
      {
         CursorName := SubStr( A_Loopfield, 6, 15 ) ; get the cursor name, no trailing space with substr
         CursorID := SubStr( A_Loopfield, 1, 5 ) ; get the cursor id
         SystemCursor = 1
         If ( CursorName = Cursor )
         {
            CursorHandle := DllCall( "LoadCursor", Uint,0, Int,CursorID )   
            Break               
         }
      }   
      If CursorHandle = ; invalid cursor name given
      {
         Msgbox,, SetCursor, Error: Invalid cursor name
         CursorHandle = Error
      }
   }   
   Else If FileExist( Cursor )
   {
      SplitPath, Cursor,,, Ext ; auto-detect type
      If Ext = ico 
         uType := 0x1   
      Else If Ext in cur,ani
         uType := 0x2      
      Else ; invalid file ext
      {
         Msgbox,, SetCursor, Error: Invalid file type
         CursorHandle = Error
      }      
      FileCursor = 1
   }
   Else
   {   
      Msgbox,, SetCursor, Error: Invalid file path or cursor name
      CursorHandle = Error ; raise for later
   }
   If CursorHandle != Error 
   {
      Loop, Parse, SystemCursors, `,
      {
         If BlankCursor = 1 
         {
            Type = BlankCursor
            %Type%%A_Index% := DllCall( "CreateCursor"
            , Uint,0, Int,0, Int,0, Int,32, Int,32, Uint,&AndMask, Uint,&XorMask )
            CursorHandle := DllCall( "CopyImage", Uint,%Type%%A_Index%, Uint,0x2, Int,0, Int,0, Int,0 )
            DllCall( "SetSystemCursor", Uint,CursorHandle, Int,SubStr( A_Loopfield, 1, 5 ) )
         }         
         Else If SystemCursor = 1
         {
            Type = SystemCursor
            CursorHandle := DllCall( "LoadCursor", Uint,0, Int,CursorID )   
            %Type%%A_Index% := DllCall( "CopyImage"
            , Uint,CursorHandle, Uint,0x2, Int,cx, Int,cy, Uint,0 )      
            CursorHandle := DllCall( "CopyImage", Uint,%Type%%A_Index%, Uint,0x2, Int,0, Int,0, Int,0 )
            DllCall( "SetSystemCursor", Uint,CursorHandle, Int,SubStr( A_Loopfield, 1, 5 ) )
         }
         Else If FileCursor = 1
         {
            Type = FileCursor
            %Type%%A_Index% := DllCall( "LoadImageA"
            , UInt,0, Str,Cursor, UInt,uType, Int,cx, Int,cy, UInt,0x10 ) 
            DllCall( "SetSystemCursor", Uint,%Type%%A_Index%, Int,SubStr( A_Loopfield, 1, 5 ) )         
         }          
      }
   }   
}

; Majkinetor's Dlg_Color included with Forms Framework: http://www.autohotkey.com/board/topic/49214-ahk-ahk-l-forms-framework-08/#entry306544
Dlg_Color(ByRef Color, hGui=0) {
;convert from rgb
clr := ((Color & 0xFF) << 16) + (Color & 0xFF00) + ((Color >> 16) & 0xFF)
VarSetCapacity(CHOOSECOLOR, 0x24, 0), VarSetCapacity(CUSTOM, 64, 0)
, NumPut(0x24, CHOOSECOLOR, 0) ; DWORD lStructSize
, NumPut(hGui, CHOOSECOLOR, 4) ; HWND hwndOwner (makes dialog "modal").
, NumPut(clr, CHOOSECOLOR, 12) ; clr.rgbResult
, NumPut(&CUSTOM, CHOOSECOLOR, 16) ; COLORREF *lpCustColors
, NumPut(0x00000103,CHOOSECOLOR, 20) ; Flag: CC_ANYCOLOR || CC_RGBINIT
nRC := DllCall("comdlg32\ChooseColorA", str, CHOOSECOLOR) ; Display the dialog.
if (errorlevel <> 0) || (nRC = 0)
    return false
clr := NumGet(CHOOSECOLOR, 12)
oldFormat := A_FormatInteger
SetFormat, integer, hex ; Show RGB color extracted below in hex format.
;convert to rgb
Color := (clr & 0xff00) + ((clr & 0xff0000) >> 16) + ((clr & 0xff) << 16)
StringTrimLeft, Color, Color, 2
Loop, % 6-strlen(Color)
Color=0%Color%
Color=0x%Color%
SetFormat, integer, %oldFormat%
return true
}






;-Temas-Tema-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas
;-Temas-Tema-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas
;-Temas-Tema-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas-Temas
















;********************************************************************************
;Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********
;Propias del script*








;1 suma de valor predeterminado 
;0 resta de valor predeterminado 
;2 sin accion de suma o resta



Set_Number_AV(mole)
{
	startmaxvalor:

positguardav1=0

positguardav3=0

positguardav5=0

positguardav7=0

positguardav9=0

positguardav11=0

positguardav13=0

positguardav15=0

positguardav17=0



positguardav19=%valorgeneralaverc%


if mole!=2
{
    
    
If mole=0
{
    
    
    
    
    if valorgeneralaverc<%ancencecopi%
      {  
   Goto, noposibsumrest
}
 valorgeneralaverc -=%ancencecopi%
positguardav19-=%ancencecopi%




}
else
    If mole=1
  {
 valorgeneralaverc +=%ancencecopi%
positguardav19 +=%ancencecopi%
}





}

noposibsumrest:






if activarletra19=1
{

acccalc1:=positguardav19/27
suma1 :=Format("{:d}", acccalc1)
resus1:=positguardav19-(suma1*27)




creatvat:="letratty"resus1
positaverc19=% %creatvat%

}
else
{

positaverc19=%positguardav19%
    
    acccalc1:=positguardav19/10
   suma1 :=Format("{:d}", acccalc1)
   resus1:=positguardav19-(suma1*10)


positaverc19=%resus1%


}



EnvAdd, positguardav17, %suma1%


if activarletra17=1
{


acccalc1:=positguardav17/27
suma2 :=Format("{:d}", acccalc1)
resus2:=positguardav17-(suma2*27)


creatvat:="letratty"resus2
positaverc17=% %creatvat%


}
else
{
positaverc17=%positguardav17%


    acccalc1:=positguardav17/10
   suma2 :=Format("{:d}", acccalc1)
   resus2:=positguardav17-(suma2*10)
   

positaverc17=%resus2%



}



EnvAdd, positguardav15, %suma2%


if activarletra15=1
{

    acccalc1:=positguardav15/27
   suma3 :=Format("{:d}", acccalc1)
   resus3:=positguardav15-(suma3*27)
   


creatvat:="letratty"resus3
positaverc15=% %creatvat%


}
else
{
positaverc15=%positguardav15%

 
    acccalc1:=positguardav15/10
   suma3 :=Format("{:d}", acccalc1)
   resus3:=positguardav15-(suma3*10)
   

positaverc15=%resus3%



}


    
    
    EnvAdd, positguardav13, %suma3%


if activarletra13=1
{
    acccalc1:=positguardav13/27
   suma4 :=Format("{:d}", acccalc1)
   resus4:=positguardav13-(suma4*27)
   

creatvat:="letratty"resus4
positaverc13=% %creatvat%



}
else
{
positaverc13=%positguardav13%

 
    acccalc1:=positguardav13/10
   suma4 :=Format("{:d}", acccalc1)
   resus4:=positguardav13-(suma4*10)
   

positaverc13=%resus4%



}


    
    
EnvAdd, positguardav11, %suma4%


if activarletra11=1
{



    acccalc1:=positguardav11/27
   suma5 :=Format("{:d}", acccalc1)
   resus5:=positguardav11-(suma5*27)
   


creatvat:="letratty"resus5
positaverc11=% %creatvat%


}
else
{
positaverc11=%positguardav11%

    

    acccalc1:=positguardav11/10
   suma5 :=Format("{:d}", acccalc1)
   resus5:=positguardav11-(suma5*10)
   

positaverc11=%resus5%



}


EnvAdd, positguardav9, %suma5%


if activarletra9=1
{


    acccalc1:=positguardav9/27
   suma6 :=Format("{:d}", acccalc1)
   resus6:=positguardav9-(suma6*27)
   

creatvat:="letratty"resus6
positaverc9=% %creatvat%
}
else
{
positaverc9=%positguardav9%

    

    acccalc1:=positguardav9/10
   suma6 :=Format("{:d}", acccalc1)
   resus6:=positguardav9-(suma6*10)
   

positaverc9=%resus6%





}
    

    
EnvAdd, positguardav7, %suma6%


if activarletra7=1
{
    

    acccalc1:=positguardav7/27
   suma7 :=Format("{:d}", acccalc1)
   resus7:=positguardav7-(suma7*27)
   
creatvat:="letratty"resus7
positaverc7=% %creatvat%
}
else
{
positaverc7=%positguardav7%

    
    acccalc1:=positguardav7/10
   suma7 :=Format("{:d}", acccalc1)
   resus7:=positguardav7-(suma7*10)
   

positaverc7=%resus7%



}



EnvAdd, positguardav5, %suma7%


if activarletra5=1
{
    

    acccalc1:=positguardav5/27
   suma8 :=Format("{:d}", acccalc1)
   resus8:=positguardav5-(suma8*27)
   

creatvat:="letratty"resus8
positaverc5=% %creatvat%
}
else
{
positaverc5=%positguardav5%

    

    acccalc1:=positguardav5/10
   suma8 :=Format("{:d}", acccalc1)
   resus8:=positguardav5-(suma8*10)
   

positaverc5=%resus8%



}


EnvAdd, positguardav3, %suma8%

if activarletra3=1
{
    

    acccalc1:=positguardav3/27
   suma9 :=Format("{:d}", acccalc1)
   resus9:=positguardav3-(suma9*27)
   

creatvat:="letratty"resus9
positaverc3=% %creatvat%
}
else
{
positaverc3=%positguardav5%

 
    acccalc1:=positguardav3/10
   suma9 :=Format("{:d}", acccalc1)
   resus9:=positguardav3-(suma9*10)
   

positaverc3=%resus9%



}  
    

 EnvAdd, positguardav1, %suma9%



if activarletra1=1
{
    

    acccalc1:=positguardav1/27
   suma10 :=Format("{:d}", acccalc1)
   resus10:=positguardav1-(suma10*27)
   

creatvat:="letratty"resus10
positaverc1=% %creatvat%
}
else
{
positaverc1=%positguardav1%

    

    acccalc1:=positguardav1/10
   suma10 :=Format("{:d}", acccalc1)
   resus10:=positguardav1-(suma10*10)
   

positaverc1=%resus10%



}


    
if positaverc1=
positguardav2=


if positaverc3=
positguardav4=


if positaverc5=
positguardav6=

if positaverc7=
positguardav8=

if positaverc9=
positguardav10=

if positaverc11=
positguardav12=

if positaverc13=
positguardav14=

if positaverc15=
positguardav16=

if positaverc17=
positguardav18=

    
    
    ;serializacpppppppppp

if activarletra19=1
 setxx1=27
else
  setxx1=10


if activarletra17=1
 setxx2=27
else
  setxx2=10



if activarletra15=1
 setxx3=27
else
  setxx3=10


if activarletra13=1
 setxx4=27
else
  setxx4=10
  
  
if activarletra11=1
 setxx5=27
else
  setxx5=10
  
  
  
  if activarletra9=1
 setxx6=27
else
  setxx6=10
  
  
  
  if activarletra7=1
 setxx7=27
else
  setxx7=10
  
  
  
  if activarletra5=1
 setxx8=27
else
  setxx8=10
  
  
    if activarletra3=1
 setxx9=27
else
  setxx9=10
  
  
    if activarletra1=1
 setxx10=27
else
  setxx10=10
  
  







multip2:=setxx1
multip3:=setxx1* setxx2
multip4:=multip3*setxx3
multip5:=multip4*setxx4
multip6:=multip5*setxx5
multip7:=multip6*setxx6
multip8:=multip7*setxx7
multip9:=multip8*setxx8
multip10:=multip9*setxx9


if resus1=
resus1=0



if resus2=
resus2=0

if resus3=
resus3=0

if resus4=
resus4=0

if resus5=
resus5=0

if resus6=
resus6=0

if resus7=
resus7=0

if resus8=
resus8=0


if resus9=
resus9=0


if resus10=
resus10=0




valoopt1:=resus1


valoopt2:=resus2*multip2



  valoopt3:=resus3*multip3


valoopt4:=resus4*multip4


valoopt5:=resus5*multip5




valoopt6:=resus6*multip6

valoopt7:=resus7*multip7


valoopt8:=resus8*multip8

valoopt9:=resus9*multip9

valoopt10:=resus10*multip10


prenjm1:=valoopt1+valoopt2+valoopt3+valoopt4+valoopt5
prenjm2:=valoopt6+valoopt7+valoopt8+valoopt9+valoopt10


valornumericoverav:=prenjm1+prenjm2








 if  valorgeneralaverc>=205891132094650
    {
iniWrite,0, %CLAVEain2%, AVersion, valor
valorgeneralaverc=0
MsgBox 0x40040, %nameofthisscript1% - Información, Valor máximo alcanzado., 1
goto  startmaxvalor
}


 comunVGACPSAV=%positaverc1%%positguardav2%%positaverc3%%positguardav4%%positaverc5%%positguardav6%%positaverc7%%positguardav8%%positaverc9%%positguardav10%%positaverc11%%positguardav12%%positaverc13%%positguardav14%%positaverc15%%positguardav16%%positaverc17%%positguardav18%%positaverc19%




 if  valornumericoverav<205891132094649
   VGACPSAV=%positaverc1%%positguardav2%%positaverc3%%positguardav4%%positaverc5%%positguardav6%%positaverc7%%positguardav8%%positaverc9%%positguardav10%%positaverc11%%positguardav12%%positaverc13%%positguardav14%%positaverc15%%positguardav16%%positaverc17%%positguardav18%%positaverc19%


 if  valornumericoverav<%multip10%
  VGACPSAV=%positaverc3%%positguardav4%%positaverc5%%positguardav6%%positaverc7%%positguardav8%%positaverc9%%positguardav10%%positaverc11%%positguardav12%%positaverc13%%positguardav14%%positaverc15%%positguardav16%%positaverc17%%positguardav18%%positaverc19%


 if  valornumericoverav<%multip9%
  VGACPSAV=%positaverc5%%positguardav6%%positaverc7%%positguardav8%%positaverc9%%positguardav10%%positaverc11%%positguardav12%%positaverc13%%positguardav14%%positaverc15%%positguardav16%%positaverc17%%positguardav18%%positaverc19%


 if  valornumericoverav<%multip8%
  VGACPSAV=%positaverc7%%positguardav8%%positaverc9%%positguardav10%%positaverc11%%positguardav12%%positaverc13%%positguardav14%%positaverc15%%positguardav16%%positaverc17%%positguardav18%%positaverc19%


     if  valornumericoverav<%multip7%
  VGACPSAV=%positaverc9%%positguardav10%%positaverc11%%positguardav12%%positaverc13%%positguardav14%%positaverc15%%positguardav16%%positaverc17%%positguardav18%%positaverc19%

 if  valornumericoverav<%multip6%
  VGACPSAV=%positaverc11%%positguardav12%%positaverc13%%positguardav14%%positaverc15%%positguardav16%%positaverc17%%positguardav18%%positaverc19%
  
  
   if  valornumericoverav<%multip5%
  VGACPSAV=%positaverc13%%positguardav14%%positaverc15%%positguardav16%%positaverc17%%positguardav18%%positaverc19%
  
     if  valornumericoverav<%multip4%
  VGACPSAV=%positaverc15%%positguardav16%%positaverc17%%positguardav18%%positaverc19%
  
  
     if  valornumericoverav<%multip3%
  VGACPSAV=%positaverc17%%positguardav18%%positaverc19%
  
  
   if  valornumericoverav<%multip2%
  VGACPSAV=%positaverc19%


 
GuiControl,1:, tollee2, %VGACPSAV%

iniWrite, %valorgeneralaverc%, %CLAVEain2%,  AVersion, valor
	
	
	
	
	
}




























































;registro de copias y las fechas
RegistroAV(Datagrabar)
{
    Valoacdelete +=1
    ;Numero total de registros
if Valoacdelete>=101
Valoacdelete=0


iniWrite, %Datagrabar%, %CLAVEain2%,  Ultimacopia, %Valoacdelete%

iniWrite, %Valoacdelete%, %CLAVEain2%,  Ultimacopiavaloract, a



FormatTime, tifeco7,y, yyyy
FormatTime, tifeco6,M, MMMM
FormatTime, tifeco5,d, dd
FormatTime, tifeco4,d, dddd

FormatTime, tifeco1,HH, HH
FormatTime, tifeco2,mm, mm
FormatTime, tifeco3,ss, ss

dateucf:=tifeco1 ":" tifeco2 ":" tifeco3   " el dia " tifeco4 " " tifeco5 " de " tifeco6  " del " tifeco7

iniWrite, %dateucf%, %CLAVEain2%,  UltimacopiaFecha, %Valoacdelete%

return
}







;gui utilitaria de copiar
setwindowcopyfile()
{
	
		if gmensaviso2=0
	return
	
		;sin ventanita especial
	if gmensaviso6=1
	{
		MsgBox 0x40040, %nameofthisscript1%, ¡Copia del archivo realizada!, 1
		return
	}

;sin sonido de ventanita especial
	if gmensaviso5=1
	SoundPlay, *64
	
	
	;avisos en forma de ventana
if gmensaviso3=0
	return





;al centro de la pantalla
if gmensaviso4=0
{
MouseGetPos ,stkposix,stkposiy
EnvSub, stkposix,105
EnvSub, stkposiy,55
	
gui_positionwin1=x%stkposix% y%stkposiy%
}
else
{
gui_positionwin1=center
}

guipositionmod:=ShowGuiPlease(50,100,gui_positionwin1,"copyfile")
gui_positionwin1=%guipositionmod%



Gui, copyfile:Show, NA %gui_positionwin1% w100 h50, ......
Sleep, 1000

Gui copyfile:Hide
Return
}



;operaciones de copiado principales---operaciones de copiado principales---operaciones de copiado principales
CopiaArchivo_AV(filedestino)
{
	
	 exito=0
	
	
	
	If elemccopaver=No especificado
    {
	MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
	return exito
    }
	
	
	if  !FileExist(elemccopaver)
        {
	MsgBox 0x40040, %nameofthisscript1% - Información, Elemento inexistente., 2
	return exito
    }
   

;finalmente se genera el archivo
if  !FileExist(carpetautil)
FileCreateDir, %carpetautil%
if ErrorLevel
{ 
	MsgBox 0x40010, %nameofthisscript1% - Error, Operación para crear la carpeta errónea: %carpetautil%
		return exito
}






FileCopy, %elemccopaver%,%filedestino%,0
if ErrorLevel
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El elemento: %filedestino%  ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
          FileCopy, %elemccopaver%,%filedestino%,1
						if ErrorLevel
						{ 
						MsgBox 0x40010, %nameofthisscript1% - Error, Operación de copia errónea: %filedestino%
						return exito
						}
					} 
              Else IfMsgBox No, {
				return exito
			}
	}
	
	
	
	;registro de copias y las fechas
RegistroAV(filedestino)
;registro de copias y las fechas





;comprobacion final de operacion exitosa

;existencia
if !FileExist(filedestino)
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Operación de copia errónea:  %filedestino%
return exito
 }
 
 
 ;no copias sin nada
 FileGetSize, tamfilec, %filedestino%
 if tamfilec=0
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Operación de copia errónea:  %filedestino%
return exito
 }
 
 
 ;Fin del procedimiento
 exito=1
 
setwindowcopyfile()


	return exito
}





;Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********Propias del script********
;Propias del script*

;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS*****




CreateListDLs(LetraofDLs)
{

iex=

Loop 1
{
	


IniDLs:=CLAVEDLs "\DLs" LetraofDLs ".ini"



IniWrite, 10, %IniDLs%, DLWT, a
IniWrite, Nueva lista DLs, %IniDLs%, DLWT, b
iniwrite, -------{, %IniDLs%, DLWT, c
iniwrite, }-------, %IniDLs%, DLWT, d
iniwrite, 0, %IniDLs%, DLWT, e


NumbiniDLs=0
Loop
{
EnvAdd, NumbiniDLs, 1

IniWrite, . , %IniDLs%, %NumbiniDLs%, a
IniWrite, %iex% , %IniDLs%, %NumbiniDLs%, b

}until NumbiniDLs=100

}
}










Efecto_Start(gui_id,control_id)
{
	
	loop, 4
	{
	guicontrol,%gui_id%:Hide,%control_id%
	sleep 100
	guicontrol,%gui_id%:Show,%control_id%
	sleep 100
}
	
	return
}




;gui utilitaria de COPIAR
setwindowcopy()
{
	
	if gmensaviso1=0
	return
	
	;sin ventanita especial
	if gmensaviso6=1
	{
		MsgBox 0x40040, %nameofthisscript1%, ¡Copiado!, 1
		return
	}

;sin sonido de ventanita especial
	if gmensaviso5=1
	SoundPlay, *64



;avisos en forma de ventana
if gmensaviso3=0
	return



;al centro de la pantalla
if gmensaviso4=0
{
MouseGetPos ,copyx,copyy

EnvSub, copyx,105
EnvSub, copyy,55



gui_positionwin1=x%copyx% y%copyy%
}
else
{
gui_positionwin1=center
}

guipositionmod:=ShowGuiPlease(50,100,gui_positionwin1,"copygui")
gui_positionwin1=%guipositionmod%



Gui, copygui:Show, NA %gui_positionwin1% w100 h50, ......
Sleep, 1000

Gui copygui:Hide
Return
}







;gui utilitaria de OK
setwindowok()
{
	
	
		if gmensaviso2=0
	return
	
		;sin ventanita especial
	if gmensaviso6=1
	{
		MsgBox 0x40040, %nameofthisscript1%, ¡Correcto!, 1
		return
	}

;sin sonido de ventanita especial
	if gmensaviso5=1
	SoundPlay, *64
	
	
	;avisos en forma de ventana
if gmensaviso3=0
	return





;al centro de la pantalla
if gmensaviso4=0
{
MouseGetPos ,stkposix,stkposiy
EnvSub, stkposix,105
EnvSub, stkposiy,55
	
gui_positionwin1=x%stkposix% y%stkposiy%
}
else
{
gui_positionwin1=center
}

guipositionmod:=ShowGuiPlease(50,100,gui_positionwin1,"gec")
gui_positionwin1=%guipositionmod%



Gui, gec:Show, NA %gui_positionwin1% w100 h50, ......
Sleep, 1000

Gui gec:Hide
Return
}




;mostrar las imagenes nesesarias
ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
{

;si no existe dato alguno
if Elemento=
      {
         GuiControl, %guiname%:, %control%, *icon1 *h%h% *w%w% %A_ScriptDir%\Data\gui\Nodata.png
         return
      }







;salto de confirmar si existe algo que no se puedeverificar existencia
;Clipboardtxt si se verifica la existencia del mismo
;Lista se verifica la existencia del archivo con los comandos
if (Parametro="Clipboard"  or  Parametro="Config" or Parametro="Link")
goto sinverifexist

if Elemento=Barra
goto sinverifexist



;si no existe el elemento
        if !FileExist(Elemento)
      {
         GuiControl, %guiname%:, %control%, *icon1 *h%h% *w%w% %A_ScriptDir%\Data\gui\Noapp.png
         return
      }


sinverifexist:
;Imagen personalizada

If icoimadll=
{
goto notimagperz
}
else
{
	
    SplitPath, icoimadll, , , extifdll
	
    if extifdll=dll
    {
GuiControl, %guiname%:, %control%, *icon%index% *h%h% *w%w% %icoimadll% 
return

    }
    else
    {
        if FileExist(icoimadll)
{
GuiControl, %guiname%:, %control%, *icon1 *h%h% *w%w% %icoimadll%
return
}
    
}
    
    
}
notimagperz:
;Imagen personalizada


if Elemento=Barra
{
         GuiControl, %guiname%:, %control%, *icon1 *h%h% *w%w% %A_ScriptDir%\Data\gui\Barra.png
		 return
}


;para las opciones shell
If InStr(Elemento, "shell:")
goto shellimag



;instrucciones propias


;if (Color = "Green" or Color = "Cyan")

if (Parametro="Clipboardtxt"  or  Parametro="Clipboard")
goto imagforclip



if Parametro=Config
{
GuiControl, %guiname%:, %control%, *icon1 *h%h% *w%w% %A_ScriptDir%\Data\gui\imacong.png
return
}
if Parametro=Link
{
GuiControl, %guiname%:, %control%, *icon1 *h%h% *w%w% %A_ScriptDir%\Data\gui\linkima.png
return
}


if Parametro=Lista
{
GuiControl, %guiname%:, %control%, *icon1 *h%h% *w%w% %A_ScriptDir%\Data\gui\Lista.png
return
}



;Folder, exe or file

SplitPath, Elemento, , , carpexeorfil

FileGetAttrib, carpexeorfilresult, %Elemento%
;Modulo carpeta
If InStr(carpexeorfilresult, "D")
goto itsFolder



if carpexeorfil=exe
goto itsExe





;Files-Files-Files-Files-Files-Files-Files-Files-Files-Files-Files



setima1=% %hwndID%



SplitPath, Elemento, , , extoffile
pextoffile:="." extoffile




For Size, Value In SizFile {
   If !IsObject(Icon := GetSysImgLstIcon(pextoffile, Size)) {
GuiControl, %guiname%:, %control%, *icon272 *h%h% *w%w% %SystemRoot%\system32\SHELL32.dll

   }

SendMessage, 0x0170, % Icon.HICON, 0, , ahk_id %setima1%   
}
Return

;Files-Files-Files-Files-Files-Files-Files-Files-Files-Files-Files




;Folders-Folders-Folders-Folders-Folders-Folders-Folders-Folders-Folders-Folders-Folders
itsFolder:

;icono from ini sytem 1

iniread, getiniico, %Elemento%\desktop.ini,.ShellClassInfo, IconResource


if getiniico=
	goto itsFolder2
if getiniico=ERROR
	goto itsFolder2

varcomimg=0
Loop, Parse, getiniico, `,
{
EnvAdd, varcomimg,1

comdataofico:="dataofico"varcomimg

%comdataofico%=%A_LoopField%
}

;cambio en el index
if dataofico2>=0
envadd, dataofico2,1
;cambio en el index


GuiControl, %guiname%:, %control%, *icon%dataofico2% *h%h% *w%w% %dataofico1% 
return




itsFolder2:

iniread, getiniico2, %Elemento%\desktop.ini,.ShellClassInfo, IconFile
iniread, getiniico3, %Elemento%\desktop.ini,.ShellClassInfo, IconIndex

if getiniico2=
	goto itsFolder3
if getiniico2=ERROR
	goto itsFolder3


;si el icono es una ruta;
	;si el icono esta en en lá carpeta
presofexist=%Elemento%\%getiniico2% 
        if FileExist(presofexist)
		{
GuiControl, %guiname%:, %control%, *icon%getiniico3% *h%h% *w%w% %presofexist% 
}
else
{
	
	;si el icono esta en otra carpeta
	if FileExist(getiniico2)
GuiControl, %guiname%:, %control%,  *icon%getiniico3% *h%h% *w%w% %getiniico2% 
	else
	goto itsFolder3
}
return


itsFolder3:
GuiControl, %guiname%:, %control%, *icon1 *h%h% *w%w% %A_ScriptDir%\Data\gui\Folder.png
return
;Folders-Folders-Folders-Folders-Folders-Folders-Folders-Folders-Folders-Folders-Folders


;Aplicación-Aplicación-Aplicación-Aplicación-Aplicación-Aplicación-Aplicación-Aplicación-Aplicación-Aplicación-Aplicación
itsExe:
GuiControl, %guiname%:, %control%, *icon1 *h%h% *w%w% %Elemento%
return
;Aplicación-Aplicación-Aplicación-Aplicación-Aplicación-Aplicación-Aplicación-Aplicación-Aplicación-Aplicación-Aplicación







;icon for shell
shellimag:
GuiControl, %guiname%:, %control%, *icon1 *h%h% *w%w% %A_ScriptDir%\Data\gui\Shell.png
return




;;instrucciones propias
imagforclip:
GuiControl, %guiname%:, %control%, *icon1 *h%h% *w%w% %A_ScriptDir%\Data\gui\Clipb.png
return


}






;Elemento
;Comando especifico de un elemento de una lista

;Parametro
;Parametroespecifico de un elemento de una lista

;FoldExpl
;Programa alterno para abrir el elemento de lo contrario"0"
;LinkNaveg
;Programa alterno para abrir el elemento de lo contrario"0"

;ejecutar los comandos
StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
{
	
	if Elemento=Barra
	return
	
	

if Parametro=Config
goto Explorer

if Parametro=Clipboardtxt
goto clipbtxt


if Parametro=Clipboard
goto clipbnorm


if Parametro=Link
{
	if LinkNaveg=0
goto simplestart
else
	if LinkNaveg=2
				goto clipbnorm
			else
goto Linkplus
	
}








if Parametro !=
goto startparametros



FileGetAttrib, atribelem, %Elemento%
;Modulo carpeta
If InStr(atribelem, "D")
{
	if FoldExpl=0
	goto Explorer
	else
			if FoldExpl=2
				goto clipbnorm
			else
		  goto Explorerplus
		
  
}




;normal (para los archivos)
simplestart:
Run, %Elemento%  , ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return


startparametros:
Run, %Elemento%  %Parametro%  , ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

return



Explorer:
OpenFolderDLs(0,Elemento,0,0)
return



Explorerplus:
OpenFolderDLs(0,Elemento,0,FoldExpl)
return


Linkplus:
Run, %LinkNaveg% %Elemento% , ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return



clipbnorm:
ToTheClipboardDLs(Elemento,1)
return


clipbtxt:
FileRead, textloadtxt, %Elemento% 
if ErrorLevel
{
   MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al leer: %Elemento% 
   return
}


clipboard=%textloadtxt%
setwindowcopy()
return



}




StartCommandDLs_Lista(Elemento,FoldExpl,LinkNaveg)
{
	
	
	
	
	
	
	
	
FileRead, listofcom, %Elemento% 
if ErrorLevel
{
   MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al leer: %Elemento% 
   return
}



numcom=0
Loop, Parse, listofcom, `n, `r 
{
	numcom++
	
	
precomtotxt:="comtotxt"numcom

%precomtotxt%=%A_LoopField%	;para numeracion
	
	
	if numcom>30
		break
}





numcom2=0
Loop %numcom%
{
	numcom2++

preconcomtotxt:="comtotxt"numcom2
concomtotxt=% %preconcomtotxt%



comtotxtcomand1=
comtotxtcomand2=

numcom3=0
Loop, Parse, concomtotxt, |
{
	numcom3++

precomtotxtcomand:="comtotxtcomand"numcom3

%precomtotxtcomand%=%A_LoopField%	;para numeracion
	
	
}until numcom3=2


if comtotxtcomand1=
	continue



;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(comtotxtcomand1,comtotxtcomand2,FoldExpl,LinkNaveg)



}


}








;copiar todo el comando actual
ToTheClipboardDLs(input_Com,DLs)
{
	
if DLs!=0
{
if  input_Com=Barra
return


if  input_Com=
return

}




clipboard=%input_Com%
setwindowcopy()

return
}



;abrir una carpeta para DLs
OpenFolderDLs(Elemento,Carp,Exist,Folexplo)
{




if Elemento!=0
{
if  Elemento=Barra
return


if  Elemento=
return

}



if Exist!=0
{

if !FileExist(Carp)
{
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, La carpeta no existe., 2 	
return
}
}






if Folexplo=0
{
	Run, explorer.exe "%Carp%", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
}
else
	if Folexplo=2
{
	ToTheClipboardDLs(Elemento,0)
setwindowcopy()
}
else
{
		Run, %Folexplo% "%Carp%", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
	
}

return
}




ComTieneDirectorioDLs(Parametro)
{
Nocarpeta=0

if Parametro=Clipboardtxt
Nocarpeta=1

if Parametro=Clipboard
Nocarpeta=1

if Parametro=Config
Nocarpeta=1

if Parametro=Link
Nocarpeta=1


return Nocarpeta
}



;Borrar informacion

EraseComDLs:

prefiledls:= "DLs" lidls ".ini"
filedls:=CLAVEDLs "\" prefiledls

DLsComand=
IniWrite, ., %filedls%, %Infohere3%, a
IniWrite, %DLsComand% , %filedls%, %Infohere3%, b

goto relforthisapp
return





;Gui mostrar informacion
ShowComDLs:

if ShowComDLsonvar=1
{
	Gui, ShowComDLs:Show
	return
}





Gui,ShowComDLs: Add, GroupBox, x7 y10 w85 h125 vShowComDLscont3 ,
prefiledls:= "DLs" lidls ".ini"
filedls:=CLAVEDLs "\" prefiledls

Gui, ShowComDLs:Color ,,%stkcg5%
Gui, ShowComDLs:Font, S%stkcg3% c0x%stkcg4% %stkcgfin2%, %stkcg1%
Gui, ShowComDLs:Color ,%stkcg6%

Gui, ShowComDLs:  -MinimizeBox 

Gui, ShowComDLs:Add, Edit, x93 y15 w600 h60 vShowComDLscont1, %Infohere1%
Gui, ShowComDLs:Add, Edit, x93 y75 w600 h60 vShowComDLscont2, %Infohere2%



stkcg3ShowComDLs=%stkcg3%
Envadd,stkcg3ShowComDLs ,2
Gui, ShowComDLs:Font, S%stkcg3ShowComDLs%
Gui, ShowComDLs:Add, Text, x10 y55 w73 h40 vShowComDLscont4 gShowComDLscont4 center,%Infohere3%

Gui, ShowComDLs:Font, Norm s9
Gui, ShowComDLs:Add, Button, x540 y145 w150 h20 vShowComDLscont5 gShowComDLscont5, Guardar  y reiniciar
Gui, ShowComDLs:Add, Button, x10 y145 w60 h20 vShowComDLscont6 gShowComDLscont6, Guardar
; Generated using SmartGUI Creator 4.0

Gui, ShowComDLs:Show, center  h175 w700,  %nameofthisscript1% - %prefiledls%
ShowComDLsonvar=1
return


ShowComDLscont4:
Gui, ShowComDLs:Submit, NoHide

Clipboard:=ShowComDLscont1 "`n" ShowComDLscont2

setwindowcopy()
return



ShowComDLscont5:

reaprob=1
goto  ShowComDLscont65def
ShowComDLscont6:

reaprob=0

ShowComDLscont65def:

Gui, ShowComDLs:Submit, NoHide


IniWrite, %ShowComDLscont1%, %filedls%, %Infohere3%, a
IniWrite, %ShowComDLscont2% , %filedls%, %Infohere3%, b

setwindowok()

if  reaprob=0
goto  ShowComDLsGuiClose

goto relforthisapp
return


ShowComDLsGuiClose:
Gui, ShowComDLs:Destroy
ShowComDLsonvar=0
return








;Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Nucle
;Guardar y reiniciar sin apps
relforthisapp:
goto Relwd1
return
;Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Nucle



;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS*****




;Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********
;Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********



































winabout1:


Gui, winabout:+ownerrgr1  
Gui rgr1:+Disabled  



Gui, winabout:-MinimizeBox








Gui, winabout:Font, Norm
Gui, winabout:Color ,,%stkcg5%
Gui, winabout:Font, c0x%stkcg4%
Gui, winabout:Color ,%stkcg6%



Gui, winabout:Add, Picture, vaccchtpps17 gaccchtpps17 x138 y15 w150 h150 ,%A_ScriptDir%\Data\Gui\Guiabout.png
Gui, winabout:Add, Picture, vaccchtpps16 gaccchtpps16 x305 y15 w100 h120 ,%A_ScriptDir%\Data\Gui\Dona.png



Gui, winabout:Font,  s12
Gui, winabout:Add, Text, x5 y180 w416 h30  vaccchtpps18 gaccchtpps18 center, %nameofthisscript1% %Veract1%
Gui, winabout:Add, Text, x5 y490 w416 h30 vaccchtpps19  vaccchtpps19 center, ¡A todos, Gracias! - Thank you all!
Gui, winabout:Font,  s9
Gui, winabout:Add, Text, x5 y210 w416 h20 vaccchtpps20 center, Creditos
Gui, winabout:Font,  s8




Gui, winabout:Add, Text,   x5 y80 w130 h20 valadeoimagenabout3 galadeoimagenabout3 center, ¡Cliquéame! - Click me!





Gui, winabout:Add, Text, gaccchtpps2 vaccchtpps2 x12 y235 w416 h20 center, RGUriel,  Idea, imagenes y  programación del script.


Gui, winabout:Add, Text,  gaccchtpps1 vaccchtpps1 x5 y255 w416 h20 center,AutoHotkey scripting language,  Created by Chris Mallet and Others



Gui, winabout:Add, Text, gaccchtpps3 vaccchtpps3 x5 y275 w416 h20 center, SmartGUI Creator by  Rajat


Gui, winabout:Add, Text, gaccchtpps4 vaccchtpps4 x5 y295 w416 h20 center, Message Box Generator for AutoHotkey  by Alguimist


Gui, winabout:Add, Text, gaccchtpps5 vaccchtpps5  x5 y315 w416 h20 center, SciTE4AutoHotkey,  AutoHotkey script editor


Gui, winabout:Add, Text, gaccchtpps6 vaccchtpps6 x5 y335 w416 h20 center, Class_CtlColors by AHK-just-me, colors for some AHK GUI controls




Gui, winabout:Add, Text, gaccchtpps8 vaccchtpps8 x5 y355 w416 h20  center, GetSysImgLstIcon retrieve the associated icon by Just me

Gui, winabout:Add, Text, gaccchtpps9 vaccchtpps9 x5 y375 w416 h20  center, ChooseColor display the standard Windows color picker dialog by rbrtryn 


Gui, winabout:Add, Text, gaccchtpps11 vaccchtpps11x5 y395 w416 h20 center, Colorette - Simple Color Picker (v 1.01) by sumon


Gui, winabout:Add, Text, x5 y520 w416 h70  vacciespinfeng2 gacciespinfeng2 center, Este programa no tiene garantía`, úselo bajo su propio riesgo. No me responsabilizo ante la perdida de datos o el mal uso del mismo.`nLicencia del script escrito por RGUriel`, exceptuando el código de terceros especificado en el mismo: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007





Gui, winabout:Add, Button, x188 y620 w50 h20 gAboutptk, Aceptar



Gui, winabout:Show, Center h650 w426, %nameofthisscript1% - About


return


Aboutptk:
winaboutguiclose:
Gui rgr1:-Disabled  
Gui, winabout: Destroy 

return








accchtpps1:
Run, "https://www.autohotkey.com/", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

Run,  "https://github.com/lexikos/autohotkey_l", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

return




accchtpps16:
Run, "http://iexproyectos.blogspot.com/2022/09/donaciones.html", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return


accchtpps17:
Run, "http://iexproyectos.blogspot.com", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return


accchtpps18:
MsgBox 0x40040, %nameofthisscript1% - Información,  AutoHotkey Base File v1.1.34.03 U64 Unicode 64-bit.bin
return


accchtpps19:
Run, "", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return



accchtpps2:
clipboard := "urielrigue@outlook.com"
setwindowcopy()
return





accchtpps3:
Run, "https://www.autohotkey.com/board/topic/738-smartgui-creator/", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return


accchtpps4:
Run, "https://sourceforge.net/projects/magicbox-factory/", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

return
accchtpps5:
Run,  "https://www.autohotkey.com/scite4ahk/" ,,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2


return
accchtpps6:
Run, "https://github.com/AHK-just-me/Class_CtlColors", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

return


accchtpps8:
Run,  "https://www.autohotkey.com/boards/viewtopic.php?f=6&t=1004", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

return




accchtpps9:
Run,  "https://www.autohotkey.com/board/topic/91229-windows-color-picker-plus/", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

return


accchtpps11:
Run,  "https://www.autohotkey.com/boards/viewtopic.php?t=66463", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

return












acciespinfeng2:
MsgBox 0x40040, %nameofthisscript1% - Información,This program has no guarantee`, use it at your own risk. I do not take responsibility for the loss of data or the misuse of it.`nScript license written by RGUriel`, except for the third-party code specified in the same: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007
Run, %A_ScriptDir%\GNU GENERAL PUBLIC LICENSE v3.txt, ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return
















aladeoimagenabout3:
MsgBox 0x40040, %nameofthisscript1% - Información,  Obtén más información dando clic en las letras e imágenes. `nGet more information by clicking on the letters and images.
return















