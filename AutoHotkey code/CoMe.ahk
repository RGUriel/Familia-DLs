;Changes a property in the compiled executable's version information.


;@Ahk2Exe-SetFileVersion 3.3D
;@Ahk2Exe-SetProductVersion 3.3D
;@Ahk2Exe-SetVersion 3.3D


;@Ahk2Exe-SetInternalName CoMe
;@Ahk2Exe-SetName CoMe
;@Ahk2Exe-SetOrigFilename CoMe
;@Ahk2Exe-SetProductName CoMe

;@Ahk2Exe-SetDescription Diferentes operaciones con archivos. 


;____Not CHANGE
;@Ahk2Exe-SetLanguage 0x0409
;@Ahk2Exe-SetCopyright Copyright © 2022 RGUriel


;Changes a property in the compiled executable's version information.


#SingleInstance off
;sin 10mlseg entre linea de codigo
SetBatchLines -1 
;reeplasocconforme a las reglas locales
StringCaseSense Locale


SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include %A_ScriptDir%\Data\Class_CtlColors.ahk
;para los botones con imagenes
#Include %A_ScriptDir%\Data\Class_ImageButton.ahk


;para los iconos de los archivos en gui
#Include %A_ScriptDir%\Data\GetSysImgLstIcon.ahk

;temas
#Include %A_ScriptDir%\Data\ChooseColor.ahk


;derterminar nombre del Executable

SplitPath, A_ScriptFullPath, , , , titleofgui,

;derterminar nombre del Executable

;NAMENAMENAME
;___________________________________________
nameofthisscript1:=titleofgui
;___________________________________________
;VVVVVVVVVVversión
Veract1:="3.3D"
;VVVVVVVVVVV

;exit app
vartoexorre=0





;********************************************************************************
;********************************************************************************
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS
;para los iconos de los archivos en gui
FileEncoding, UTF-8

CoordMode,Mouse,Screen

global nameofthisscript1
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS
;para los iconos de los archivos en gui

;*para deshacer********************************************
Deshacer=%A_ScriptDir%\Data\Dsh
if !FileExist(Deshacer)
FileCreateDir, %Deshacer%

Deshacer2=%A_ScriptDir%\Data\Dsh\Dsh






CLAVEaini=%A_ScriptDir%\CoMe.ini
;**********************************************************
;si no existe el archivo se crea
if !FileExist(CLAVEaini)
{
MsgBox 0x40041, RGUriel - %nameofthisscript1%, `*Spanish`: `n`nEste programa no tiene garantía`, úselo bajo su propio riesgo. No me responsabilizo ante la perdida de datos o el mal uso del mismo. `n`nLicencia del script escrito por RGUriel`, exceptuando el código de terceros especificado en el mismo: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007`n`n`*English`:`n`nThis program has no guarantee`, use it at your own risk. I do not take responsibility for the loss of data or the misuse of it.`n`nScript license written by RGUriel`, except for the third-party code specified in the same: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007
IfMsgBox Cancel, {
exitapp
}


IniWrite, 1, %CLAVEaini%, Go, a
IniWrite, 1, %CLAVEaini%, Go, b
IniWrite, 1, %CLAVEaini%, Go, c
IniWrite, 1, %CLAVEaini%, Go, d
IniWrite, 1, %CLAVEaini%, Go, e
iniWrite, 0, %CLAVEaini%, Go, f
iniWrite, 0, %CLAVEaini%, Go, g
IniWrite, 0, %CLAVEaini%, Go, h
iniWrite,  %A_Desktop% , %CLAVEaini%, Go, i
IniWrite, 0, %CLAVEaini%, Go, j
IniWrite, 0, %CLAVEaini%, Go, k
IniWrite, 0, %CLAVEaini%, DESH, a


;oper29
IniWrite, 0, %CLAVEaini%, OperSave, a
;oper27
IniWrite, 0, %CLAVEaini%, OperSave, b


;block Variables
IniWrite, 0, %CLAVEaini%, Block, a


IniWrite, 0, %CLAVEaini%, VEOP, a
IniWrite, 0, %CLAVEaini%, VEOP, b
IniWrite, 0, %CLAVEaini%, VEOP, c

IniWrite, Center, %CLAVEaini%, window position, gui_position

IniWrite, Center, %CLAVEaini%, ventanita, gui_position
;positionn of gui if is new use in new pc
IniWrite, 700/200, %CLAVEaini%, pcnewres, a


IniWrite, No especificado, %CLAVEaini%, 7z, a
IniWrite, No especificado, %CLAVEaini%, MP, a
IniWrite,No especificado, %CLAVEaini%, DLs, a
IniWrite,No especificado, %CLAVEaini%, Expl, a
;ventanita
IniWrite, 0, %CLAVEaini%, Ventanita, a
IniWrite, Titulo de la ventana, %CLAVEaini%, Ventanita, b
IniWrite, Texto superior, %CLAVEaini%, Ventanita, c
IniWrite, Texto inferior, %CLAVEaini%, Ventanita, d
IniWrite, 97A0D4, %CLAVEaini%, Ventanita, e
IniWrite, c0xffffff, %CLAVEaini%, Ventanita, f

IniWrite,500, %CLAVEaini%, Movcant, a

cvss=
IniWrite, mp3, %CLAVEaini%, Resp, a
IniWrite,%cvss%, %CLAVEaini%, Resp, b
IniWrite, %cvss%, %CLAVEaini%, Resp, c
IniWrite, %cvss%, %CLAVEaini%, Resp, d
IniWrite, %cvss%, %CLAVEaini%, Resp, e

;imagen ventanita
IniWrite, 0, %CLAVEaini%, imagenvent, 1
IniWrite, %A_ScriptDir%\Data\Gui\IMG0.png,%CLAVEaini%, imagenvent, 2
IniWrite, 0, %CLAVEaini%, imagenvent, 3
IniWrite, %A_ScriptDir%\Data\Gui\IMG0.png,%CLAVEaini%, imagenvent, 4
IniWrite, 0,%CLAVEaini%, imagenvent, 5
iniWrite, %A_ScriptDir%\Data\Gui\IMG0.png, %CLAVEaini%, imagenvent, 6
iniWrite, 0, %CLAVEaini%, imagenvent, 7
IniWrite, %A_ScriptDir%\Data\Gui\IMG0.png, %CLAVEaini%, imagenvent, 8
IniWrite, 0,%CLAVEaini%, imagenvent, 9
IniWrite, %A_ScriptDir%\Data\Gui\IMG0.png,%CLAVEaini%, imagenvent, 10
IniWrite, 0,%CLAVEaini%, imagenvent, 11
IniWrite, %A_ScriptDir%\Data\Gui\IMG0.png,%CLAVEaini%, imagenvent, 12
IniWrite, 0,%CLAVEaini%, imagenvent, 13
iniWrite, %A_ScriptDir%\Data\Gui\IMG0.png, %CLAVEaini%, imagenvent, 14
iniWrite, 0, %CLAVEaini%, imagenvent, 15
IniWrite, %A_ScriptDir%\Data\Gui\IMG0.png, %CLAVEaini%, imagenvent, 16
IniWrite, 0, %CLAVEaini%, imagenvent, 17
IniWrite, %A_ScriptDir%\Data\Gui\IMG0.png, %CLAVEaini%, imagenvent, 18
IniWrite, 0, %CLAVEaini%, imagenvent, 19
IniWrite, %A_ScriptDir%\Data\Gui\IMG0.png, %CLAVEaini%, imagenvent, 20
IniWrite, 0, %CLAVEaini%, imagenvent, 21
IniWrite, %A_ScriptDir%\Data\Gui\IMG0.png, %CLAVEaini%, imagenvent, 22






IniWrite, 003F24, %CLAVEaini%, Opercolor, 1
IniWrite, ffffff , %CLAVEaini%, Opercolor, 2
IniWrite, 000F62, %CLAVEaini%, Opercolor, 3
IniWrite, ffffff , %CLAVEaini%, Opercolor, 4
IniWrite, 2E1E39, %CLAVEaini%, Opercolor, 5
IniWrite, ffffff , %CLAVEaini%, Opercolor, 6
IniWrite, 59000D, %CLAVEaini%, Opercolor, 7
IniWrite, ffffff , %CLAVEaini%, Opercolor, 8
IniWrite, C5B657, %CLAVEaini%, Opercolor, 9
IniWrite, ffffff , %CLAVEaini%, Opercolor, 10
IniWrite, 4B484A, %CLAVEaini%, Opercolor, 11
IniWrite, ffffff , %CLAVEaini%, Opercolor, 12
IniWrite, B2B2B2, %CLAVEaini%, Opercolor, 13
IniWrite, ffffff , %CLAVEaini%, Opercolor, 14
IniWrite, 30583F, %CLAVEaini%, Opercolor, 15
IniWrite, ffffff , %CLAVEaini%, Opercolor, 16
IniWrite, FFFFFF, %CLAVEaini%, Opercolor, 17
IniWrite, 272822 , %CLAVEaini%, Opercolor, 18
IniWrite, ffffff, %CLAVEaini%, Opercolor, 19
IniWrite, 008485 , %CLAVEaini%, Opercolor, 20




;SKM Custom
IniWrite, Verdana, %CLAVEaini%, STKG,1
IniWrite, 2, %CLAVEaini%, STKG,2
IniWrite, 8, %CLAVEaini%, STKG,3
IniWrite, Verdana, %CLAVEaini%, STKG,4
IniWrite, 2, %CLAVEaini%, STKG,5
IniWrite, 8, %CLAVEaini%, STKG,6
;colores personalizados
;Color por defecto
colsant_Def:=[16777215,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

Loop % colsant_Def.Length()
colsant_Def_W .= colsant_Def[A_Index] . "|"

IniWrite, % colsant_Def_W, %CLAVEaini%, STKG,7
;colores personalizados



;Avisos
IniWrite, 1, %CLAVEaini%, Avisos, a
IniWrite, 1, %CLAVEaini%, Avisos, b
IniWrite, 1, %CLAVEaini%, Avisos, c
IniWrite, 0, %CLAVEaini%, Avisos, d
IniWrite, 1, %CLAVEaini%, Avisos, e
IniWrite, 0, %CLAVEaini%, Avisos, f


}
;*********************************************************
IniRead, DLsaDLsselecccom, %CLAVEaini%, Go, a
IniRead, gui_position, %CLAVEaini%, window position, gui_position
IniRead, gui_position2, %CLAVEaini%, ventanita, gui_position
IniRead, alwotcome, %CLAVEaini%, Go, b
IniRead, DLsopDLsselecopecom, %CLAVEaini%, Go, c
IniRead, autonamecom, %CLAVEaini%, Go, d
IniRead, nametxt2, %CLAVEaini%, Go, e
IniRead, elimnomv, %CLAVEaini%, Go, f
IniRead, nametxt, %CLAVEaini%, Go, g
IniRead, cajautilita, %CLAVEaini%, Go, h
IniRead, carpetatemporaenc, %CLAVEaini%, Go, i
IniRead, nueatribfiles, %CLAVEaini%, Go, j
IniRead, vaselebnc, %CLAVEaini%, Go, k
IniRead, inideshn, %CLAVEaini%, DESH, a
;positionn of gui if is new use in new pc




IniRead, extearchiv1, %CLAVEaini%, Resp, a
IniRead, extearchiv2, %CLAVEaini%, Resp, b
IniRead, extearchiv3, %CLAVEaini%, Resp, c
IniRead, extearchiv4, %CLAVEaini%, Resp, d
IniRead, extearchiv5, %CLAVEaini%, Resp, e



;oper29
IniRead, cheffolders29, %CLAVEaini%, OperSave, a
;oper27
IniRead, sobresc1, %CLAVEaini%, OperSave, b


;block Variables
IniRead, Blockaccion, %CLAVEaini%, Block, a




IniRead, valoespnumvalor2, %CLAVEaini%, VEOP, a
IniRead, activadelnombre, %CLAVEaini%, VEOP, b
IniRead, activadelnombre2, %CLAVEaini%, VEOP, c

IniRead, solomelvalor, %CLAVEaini%, Movcant, a

IniRead, pcnewres, %CLAVEaini%, pcnewres, a

iniread, code7z, %CLAVEaini%, 7z, a
iniread, codeMeinPlatz, %CLAVEaini%, MP, a
IniRead, dlsexeval, %CLAVEaini%, DLs, a
IniRead,Explorsec, %CLAVEaini%, Expl, a

;ventanita
iniread, gui_position2, %CLAVEaini%, ventanita, gui_position


iniread, activenescom, %CLAVEaini%, Ventanita, a
iniread, Tituentana, %CLAVEaini%, Ventanita, b
iniread, Textosu, %CLAVEaini%, Ventanita, c
iniread, Textoin, %CLAVEaini%, Ventanita, d
iniread, colorven , %CLAVEaini%, Ventanita, e
iniread, colofonvent, %CLAVEaini%, Ventanita, f



;imagen ventanita
iniread, imagenvented1, %CLAVEaini%, imagenvent, 1
iniread, imagenvented2,%CLAVEaini%, imagenvent, 2
iniread, imagenvented3, %CLAVEaini%, imagenvent, 3
iniread, imagenvented4,%CLAVEaini%, imagenvent, 4
iniread, imagenvented5,%CLAVEaini%, imagenvent, 5
iniread, imagenvented6, %CLAVEaini%, imagenvent, 6
iniread, imagenvented7, %CLAVEaini%, imagenvent, 7
iniread, imagenvented8, %CLAVEaini%, imagenvent, 8
iniread, imagenvented9,%CLAVEaini%, imagenvent, 9
iniread, imagenvented10,%CLAVEaini%, imagenvent, 10
iniread, imagenvented11,%CLAVEaini%, imagenvent, 11
iniread, imagenvented12,%CLAVEaini%, imagenvent, 12
iniread, imagenvented13,%CLAVEaini%, imagenvent, 13
iniread, imagenvented14, %CLAVEaini%, imagenvent, 14
iniread, imagenvented15, %CLAVEaini%, imagenvent, 15
iniread, imagenvented16, %CLAVEaini%, imagenvent, 16
iniread, imagenvented17, %CLAVEaini%, imagenvent, 17
iniread, imagenvented18, %CLAVEaini%, imagenvent, 18
iniread, imagenvented19, %CLAVEaini%, imagenvent, 19
iniread, imagenvented20, %CLAVEaini%, imagenvent, 20
iniread, imagenvented21, %CLAVEaini%, imagenvent, 21
iniread, imagenvented22, %CLAVEaini%, imagenvent, 22









iniRead, varpaventan1, %CLAVEaini%, Opercolor, 1
iniRead, varpaventan2, %CLAVEaini%, Opercolor, 2
iniRead, varpaventan3, %CLAVEaini%, Opercolor, 3
iniRead, varpaventan4, %CLAVEaini%, Opercolor, 4
iniRead, varpaventan5, %CLAVEaini%, Opercolor, 5
iniRead, varpaventan6, %CLAVEaini%, Opercolor, 6
iniRead, varpaventan7, %CLAVEaini%, Opercolor, 7
iniRead, varpaventan8, %CLAVEaini%, Opercolor, 8
iniRead, varpaventan9, %CLAVEaini%, Opercolor, 9
iniRead, varpaventan10, %CLAVEaini%, Opercolor, 10
iniRead, varpaventan11, %CLAVEaini%, Opercolor, 11
iniRead, varpaventan12, %CLAVEaini%, Opercolor, 12
iniRead, varpaventan13, %CLAVEaini%, Opercolor, 13
iniRead, varpaventan14, %CLAVEaini%, Opercolor, 14
iniRead, varpaventan15, %CLAVEaini%, Opercolor, 15
iniRead, varpaventan16, %CLAVEaini%, Opercolor, 16
iniRead, varpaventan17, %CLAVEaini%, Opercolor, 17
iniRead, varpaventan18, %CLAVEaini%, Opercolor, 18
iniRead, varpaventan19, %CLAVEaini%, Opercolor, 19
iniRead, varpaventan20 , %CLAVEaini%, Opercolor, 20




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





;Avisos
IniRead, gmensaviso1, %CLAVEaini%, Avisos, a
IniRead, gmensaviso2, %CLAVEaini%, Avisos, b
IniRead, gmensaviso3, %CLAVEaini%, Avisos, c
IniRead, gmensaviso4, %CLAVEaini%, Avisos, d
IniRead, gmensaviso5, %CLAVEaini%, Avisos, e
IniRead, gmensaviso6, %CLAVEaini%, Avisos, f




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
	winzmodif_zx=0
}
else
{
	winzmodif_1=1
	winzmodif_zx=1
}


Global usonuev1
Global usonuev2
Global usonuev3
Global pcnewres
Global cambscreenvvpcn1
Global cambscreenvvpcn2








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

;STK customventanita
     if stkcg5=1
 stkcgfin5:="Norm"
   else
          if stkcg5=2
 stkcgfin5:="Bold"
 else
       if stkcg5=3
 stkcgfin5:="Italic"
 else
       if stkcg5=4
 stkcgfin5:="Strike"
    else
       if stkcg5=5
 stkcgfin5:="Underline"



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
;#################################################################################
global CLAVEDLs

;Create lists

IniDLs:=CLAVEDLs "\DLsa.ini"
if !FileExist(IniDLs)
CreateListDLs("a")















LetraofDLs:="a"
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

;#################################################################################
;#################################################################################

;_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos

global gmensaviso1
global gmensaviso2
global gmensaviso3
global gmensaviso4
global gmensaviso5
global gmensaviso6
;Gui lista
Gui, copygui:+AlwaysOnTop -Caption +ToolWindow
Gui, copygui:Add, Picture, x0 y0 w100 h50 , %A_ScriptDir%\Data\Gui\windowcopy.png





;Gui lista
Gui, gec:+AlwaysOnTop -Caption +ToolWindow
Gui, gec:Add, Picture, x0 y0 w100 h50 , %A_ScriptDir%\Data\Gui\window1.png
;_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos
;menucontextual




;ShowComDLs
ShowComDLsonvar=0





;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS*****


;clavenewoperation1
;;NOMBRES DE APLICACIONES



namexx1=Copiar
namexx2=Mover
namexx3=Papelera de reciclaje
namexx4=Eliminar
namexx5=Tamaño
namexx6=Renombrar fecha-hora
namexx7=Editar nombre
namexx8=Numeración
namexx9=7-Zip Open folder
namexx10=Oculto On
namexx11=Oculto  Off
namexx12=Solo lectura On
namexx13=Solo lectura  Off
namexx14=Archivo del sistema On
namexx15=Archivo del sistema Off
namexx16=Borrar subcarpetas
namexx17=Numeración 2
namexx18=Reemplazo
namexx19=Borrar si carpeta no contiene
namexx20=Borrar carpeta/tipo
namexx21=Copiar ruta
namexx22=Mover carpetas/tipo
namexx23=Copiar carpetas/tipo
namexx24=Eliminar contenido
namexx25=Lanzar aplicación
namexx26=Mover cantidad
namexx27=Mover sí existe carpeta
namexx28=Organizar por tipo
namexx29=Buscar
;custom


;clavenewoperation2
;utiliza carpeta central?

varcutct1=1
varcutct2=1
varcutct3=0
varcutct4=0
varcutct5=0
varcutct6=0
varcutct7=0
varcutct8=0
varcutct9=0
varcutct10=0
varcutct11=0
varcutct12=0
varcutct13=0
varcutct14=0
varcutct15=0
varcutct16=0
varcutct17=0
varcutct18=0
varcutct19=0
varcutct20=0
varcutct21=0
varcutct22=1
varcutct23=1
varcutct24=0
varcutct25=0
varcutct26=0

varcutct27=0
varcutct28=0
varcutct29=1
;custom








;grupos
;1 Copiar
;2 Mover
;3 papelera
;4 eliminar
;5 otros
;6 renombrar
;7 parametros

namexxgroup1=1
namexxgroup2=2
namexxgroup3=3
namexxgroup4=4
namexxgroup5=5
namexxgroup6=6
namexxgroup7=6
namexxgroup8=6
namexxgroup9=5
namexxgroup10=7
namexxgroup11=7
namexxgroup12=7
namexxgroup13=7
namexxgroup14=7
namexxgroup15=7
namexxgroup16=3
namexxgroup17=6
namexxgroup18=6
namexxgroup19=3
namexxgroup20=3
namexxgroup21=5
namexxgroup22=2
namexxgroup23=1
namexxgroup24=4
namexxgroup25=5
namexxgroup26=2
namexxgroup27=2
namexxgroup28=2
namexxgroup29=5



global namexxgroup1
global namexxgroup2
global namexxgroup3
global namexxgroup4
global namexxgroup5
global namexxgroup6
global namexxgroup7
global namexxgroup8
global namexxgroup9
global namexxgroup10
global namexxgroup11
global namexxgroup12
global namexxgroup13
global namexxgroup14
global namexxgroup15
global namexxgroup16
global namexxgroup17
global namexxgroup18
global namexxgroup19
global namexxgroup20
global namexxgroup21
global namexxgroup22
global namexxgroup23
global namexxgroup24
global namexxgroup25
global namexxgroup26
global namexxgroup27
global namexxgroup28
global namexxgroup29







;explorador alterno

if !FileExist(Explorsec)
Folexplodsh=0
else
	Folexplodsh=%Explorsec%










;clavenewoperation3
op=
(Join|
Copiar|
Copiar carpetas/tipo|
Mover|
Mover carpetas/tipo|
Mover cantidad|
Mover sí existe carpeta|
Organizar por tipo|
Editar nombre|
Numeración|
Numeración 2|
Reemplazo|
Renombrar fecha-hora|
7-Zip Open folder|
Copiar ruta|
Lanzar aplicación|
Tamaño|
Archivo del sistema On|
Archivo del sistema Off|
Oculto On|
Oculto  Off|
Solo lectura On|
Solo lectura  Off|
Papelera de reciclaje|
Borrar carpeta/tipo|
Borrar subcarpetas|
Eliminar|
Eliminar contenido|
Borrar si carpeta no contiene|
Buscar|
)



;lllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


Menu, menu1, Add, Abrir directorio, opendirect1
Menu, menu1, Add, Copiar comando de la lista, controlpickold
Menu, menu1, Add, Mostrar comando, ShowComDLsaa
Menu, menu1, Add, Borrar comando ,EraseComDLsaa
Menu, menu1, Add, Abrir lista, vendiini
Menu, menu1, Add
Menu, menu1, Add, Configuración, conset
Menu, menu1, Add, Reiniciar, reloadguiforcontextmenu
Menu, menu1, Add, Exit, exitopc






;Tray---------------------------------------
Menu, Tray, NoStandard
Menu, Tray, Add, Abrir directorio, opendirect1
Menu, Tray, Add, Copiar comando de la lista, controlpickold
Menu, Tray, Add, Mostrar comando, ShowComDLsaa
Menu, Tray, Add, Abrir lista, vendiini
Menu, Tray, Add
Menu, Tray, Add, Mostrar ventana, nretor22 
Menu, Tray, Add, Reparar configuración, repairini
Menu, Tray, Add
Menu, Tray, Add, Configuración, conset
Menu, Tray, Add, Reiniciar, reloadguiforcontextmenu
Menu, Tray, Add, Exit, exitopc
Menu, Tray, Default, Mostrar ventana

;Tray---------------------------------------




;menu secundario
Menu, guistkcmenucont, Add, Color personalizado, slectco1
Menu, guistkcmenucont, Add, Identificar color, startcolor

;colores personalizados
Global Palette2
;colores personalizados

;guardar colores al salir de la aplicación
coloresaguardar=0
;otros menus de otras ventanas-;otros menus de otras ventanas










;clavenewoperation4
;se denine la variable DLsopDLs para se utilizada desde el inicio

if DLsopDLsselecopecom=1
DLsopDLs=1
else
if DLsopDLsselecopecom=2
DLsopDLs=23
else
if DLsopDLsselecopecom=3
DLsopDLs=2
else
if DLsopDLsselecopecom=4
DLsopDLs=22

else
if DLsopDLsselecopecom=5
DLsopDLs=26
else
if DLsopDLsselecopecom=6
DLsopDLs=27

else
if DLsopDLsselecopecom=7
DLsopDLs=28

else
if DLsopDLsselecopecom=8
DLsopDLs=7

else
if DLsopDLsselecopecom=9
DLsopDLs=8

else
if DLsopDLsselecopecom=10
DLsopDLs=17

else
if DLsopDLsselecopecom=11
DLsopDLs=18

else
if DLsopDLsselecopecom=12
DLsopDLs=6

else
if DLsopDLsselecopecom=13
DLsopDLs=9

else
if DLsopDLsselecopecom=14
DLsopDLs=21

else
if DLsopDLsselecopecom=15
DLsopDLs=25


else
if DLsopDLsselecopecom=16
DLsopDLs=5

else
if DLsopDLsselecopecom=17
DLsopDLs=14

else
if DLsopDLsselecopecom=18
DLsopDLs=15


else
if DLsopDLsselecopecom=19
DLsopDLs=10

else
if DLsopDLsselecopecom=20
DLsopDLs=11

else
if DLsopDLsselecopecom=21
DLsopDLs=12
else
if DLsopDLsselecopecom=22
DLsopDLs=13

else
if DLsopDLsselecopecom=23
DLsopDLs=3

else
if DLsopDLsselecopecom=24
DLsopDLs=20

else
if DLsopDLsselecopecom=25
DLsopDLs=16
else
if DLsopDLsselecopecom=26
DLsopDLs=4
else
if DLsopDLsselecopecom=27
DLsopDLs=24
else
if DLsopDLsselecopecom=28
DLsopDLs=19
else
if DLsopDLsselecopecom=29
DLsopDLs=29


;globales para funcion colores of gui
		;color	especial
global colorguicome1 := colorven
global colorguicome2 := colofonvent
		;color	especial
global colorguicome3 := varpaventan1
global colorguicome4 := varpaventan2
global colorguicome5 := varpaventan3
global colorguicome6 := varpaventan4
global colorguicome7 := varpaventan5
global colorguicome8 := varpaventan6
global colorguicome9 := varpaventan7
global colorguicome10 := varpaventan8
global colorguicome11 := varpaventan9
global colorguicome12 := varpaventan10
global colorguicome13 := varpaventan11
global colorguicome14 := varpaventan12
global colorguicome15 := varpaventan13
global colorguicome16 := varpaventan14
global colorguicome17 := varpaventan15
global colorguicome18 := varpaventan16
global colorguicome19 := varpaventan17
global colorguicome20 := varpaventan18
global colorguicome21 := varpaventan19
global colorguicome22 := varpaventan20
;globales para funcion colores of gui




global DLsopDLsglob := DLsopDLs

global activenescomglob := activenescom


;Valor especial para evitar erorres de remplazo NR
global recontR1=0









;temporal o carpeta guardadada
temocaguar1=0





;carpetanueva
;valor´pra renovar icono de la carpeta
secreoeldirect=0













inicguy:



;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo
coloskinguicont:=Coloresofgui()

coloskinguicont:=StrSplit(coloskinguicont, "|")

coloskingui1=% coloskinguicont[1]
coloskingui2=% coloskinguicont[2]
coloskingui3=% coloskinguicont[3]
;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo
Gui, +Hwndgui_id -MinimizeBox

Gui, Color ,%coloskingui1%
Gui, Font, c0x%coloskingui2%  S%stkcg3% %stkcgfin2%, %stkcg1%
Gui, Color , ,%coloskingui3%

restcolorfont:=coloskingui2

ventapnamenombventcont:="namexx"DLsopDLs
ventapnamenombvent= % %ventapnamenombventcont%




if activenescom=1
	      	{ 
ventapnamenombvent=%Tituentana%
}





	If  DLsopDLs=17
	{

Gui, Add, Button, x193 y120 w30 h20 grestanum0 vrestanum0   hwndHBT4, % ""
Opt1 := [0,"Data\Gui\11.png"]                                          ; normal image
Opt2 := {2:"Data\Gui\12.png"}                                      ; hot image (object syntax)
If !ImageButton.Create(HBT4, Opt1, Opt2)
   MsgBox, 0, ImageButton Error Btn4, % ImageButton.LastError

restanum0_TT := "Empezar la numeración desde 1."

}




    If alwotcome = 1
    {
        Gui, +AlwaysOnTop
    }
    else
    {
        Gui, -AlwaysOnTop
    }








Gui, Add, Button, x272  y120 w70 h20 vcajatpm2 gcajatpm2  hwndHBT4, % ""
Opt1 := [0,"Data\Gui\temp1.png"]                                          ; normal image
Opt2 := {2:"Data\Gui\temp2.png"}                                      ; hot image (object syntax)
If !ImageButton.Create(HBT4, Opt1, Opt2)
   MsgBox, 0, ImageButton Error Btn4, % ImageButton.LastError
   
cajatpm_TT := "Utilizar un elemento registrado."


Gui, Add, Button, x272  y120 w70 h20 vcajatpm gcajatpm  hwndHBT4, % ""
Opt1 := [0,"Data\Gui\lis1.png"]                                          ; normal image
Opt2 := {2:"Data\Gui\lis2.png"}                                      ; hot image (object syntax)
If !ImageButton.Create(HBT4, Opt1, Opt2)
   MsgBox, 0, ImageButton Error Btn4, % ImageButton.LastError
cajatpm2_TT := "Utilizar un elemento de forma temporal o que no está registrado."

Gui, Add, Button, x233 y120 w30 h20  vloadfold1 gloadfold1  hwndHBT4, % ""
Opt1 := [0,"Data\Gui\Carp1.png"]                                          ; normal image
Opt2 := {2:"Data\Gui\Carp2.png"}                                      ; hot image (object syntax)
If !ImageButton.Create(HBT4, Opt1, Opt2)
   MsgBox, 0, ImageButton Error Btn4, % ImageButton.LastError


Gui, Add, Picture, x5 y25 w90 h90 vimagenespcarpe  gDLsacc20  hwndimgelemet 0x200 0x3, 
imagenespcarpe_TT := "Abir el elemento central."





Gui, 1:Font, c0xffffff
Gui, Add, Edit, x100 y40 w240 h20 R1  vnuevacarpetatemp,  %carpetatemporaenc%







Gui, Add, Button, x340 y40 w40 h20  vsettemp gsettemp  hwndHBT4, % ""
Opt1 := [0,"Data\Gui\S1.png"]                                          ; normal image
Opt2 := {2:"Data\Gui\S2.png"}                                      ; hot image (object syntax)
If !ImageButton.Create(HBT4, Opt1, Opt2)
   MsgBox, 0, ImageButton Error Btn4, % ImageButton.LastError
   
   
settemp_TT := "Establecer un elemento temporal."
Gui, 1:Font, c0x%restcolorfont%


Gui, Add, DropDownList, x100 y40 w280 h20 R30 altsubmit gsestcardest vDLsaDLs hwndCBBID16 , %DLsDLsa%

CtlColors.Attach(CBBID16,coloskingui1,coloskingui2)
GuiControl, Choose, DLsaDLs, %DLsaDLsselecccom%
DLsaDLs_TT := "Elemento central."



Gui, Add, Button, x350 y80 w30 h20 gconfimati vconfimati   hwndHBT4, % ""
Opt1 := [0,"Data\Gui\DH1.png"]                                          ; normal image
Opt2 := {2:"Data\Gui\DH2.png"}                                      ; hot image (object syntax)
If !ImageButton.Create(HBT4, Opt1, Opt2)
   MsgBox, 0, ImageButton Error Btn4, % ImageButton.LastError
confimati_TT := "Deshacer la ultima operación."



Gui, Add, DropDownList, x100 y80 w250 h20 R30 altsubmit gaccionagepos1 vaccionagepos1 hwndCBBID17, %op%
CtlColors.Attach(CBBID17,coloskingui1,coloskingui2)
GuiControl, Choose, accionagepos1,  %DLsopDLsselecopecom%
accionagepos1_TT := "Seleccione una operación."


Gui, Add, Button, x5 y120 w30 h20 vconset gconset  hwndHBT4, % ""
Opt1 := [0,"Data\Gui\conf1.png"]                                          ; normal image
Opt2 := {2:"Data\Gui\conf2.png"}                                      ; hot image (object syntax)
If !ImageButton.Create(HBT4, Opt1, Opt2)
   MsgBox, 0, ImageButton Error Btn4, % ImageButton.LastError
conset_TT := "Configuración"







Gui, Add, Button,   x45 y120 w30 h20 gddddinfo vddddinfo  hwndHBT4, % ""
Opt1 := [0,"Data\Gui\inf1.png"]                                          ; normal image
Opt2 := {2:"Data\Gui\inf2.png"}                                      ; hot image (object syntax)
If !ImageButton.Create(HBT4, Opt1, Opt2)
   MsgBox, 0, ImageButton Error Btn4, % ImageButton.LastError

ddddinfo_TT := "Informacion sobre la operación seleccionada."



Gui, Add, Button,  x350 y120 w30 h20 vminiwin gminiwin  hwndHBT4, % ""
Opt1 := [0,"Data\Gui\V1.png"]                                          ; normal image
Opt2 := {2:"Data\Gui\V2.png"}                                      ; hot image (object syntax)
If !ImageButton.Create(HBT4, Opt1, Opt2)
   MsgBox, 0, ImageButton Error Btn4, % ImageButton.LastError
miniwin_TT := "Ventanita"





Gui, 1:Font, s10 
Gui, Add, text, x0 y10 w385 h20 r1 vtollee1 center,|||||||||||||||||  Listo  |||||||||||||||||


; Generated using SmartGUI Creator 4.0


;*******************************************************************************
; Generated using SmartGuiXP Creator mod 4.3.29.7






;********************************************************************************
;positionn of gui if is new use in new pc

		
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(145,385,gui_position,"1")
gui_position=%guipositionmod%
				
Gui, Show, %gui_position% h145 w385, %nameofthisscript1% - %ventapnamenombvent%

;********************************************************************************
;mostrar - ocultar gui
activagui1=1
activagui2=0

ventanamostrada=1









;para los tooltip 
OnMessage(0x200, "WM_MOUSEMOVE")



if (Blockaccion=1)
{
	
	GuiControl, 1:Disable, DLsaDLs, 
GuiControl, 1:Disable,cajatpm2
GuiControl, 1:Disable, nuevacarpetatemp, 
GuiControl, 1:Disable, settemp, 
GuiControl, 1:Disable, cajatpm, 
GuiControl, 1:Disable, loadfold1, 
GuiControl, 1:Disable, accionagepos1, 
}




  If (cajautilita = 1)
     { 
GuiControl, 1:Hide, DLsaDLs, 
GuiControl, 1:Hide,cajatpm2
GuiControl, 1:Show, nuevacarpetatemp, 
GuiControl, 1:Show, settemp, 
GuiControl, 1:Show, cajatpm, 
GuiControl, 1:Show, loadfold1, 
;temporal o carpeta guardadada
temocaguar1=1
goto settemp

}
else
 {
GuiControl, 1:Hide, nuevacarpetatemp, 
GuiControl, 1:Hide, settemp, 
GuiControl, 1:Hide, cajatpm, 
GuiControl, 1:Hide, loadfold1, 
GuiControl, 1:Show, DLsaDLs, 
GuiControl, 1:Show,cajatpm2
;temporal o carpeta guardadada
temocaguar1=0
goto sestcardest
}


return





cajatpm2:



GuiControl, 1:Hide, DLsaDLs, 
GuiControl, 1:Hide,cajatpm2
GuiControl, 1:Show, nuevacarpetatemp, 
GuiControl, 1:Show, settemp, 
GuiControl, 1:Show, cajatpm, 
GuiControl, 1:Show, loadfold1, 
;temporal o carpeta guardadada
temocaguar1=1
cajautilita=1
goto settemp




return


cajatpm:



GuiControl, 1:Hide, nuevacarpetatemp, 
GuiControl, 1:Hide, settemp, 
GuiControl, 1:Hide, cajatpm, 
GuiControl, 1:Hide, loadfold1, 
GuiControl, 1:Show, DLsaDLs, 
GuiControl, 1:Show,cajatpm2
;temporal o carpeta guardadada
temocaguar1=0

cajautilita=0
goto sestcardest
return

restanum0:
valoespnumvalor2=0
MsgBox 0x40040, %nameofthisscript1%, ¡Correcto!, 1
return



loadfold1:

Gui, 1:+Disabled 
FileSelectFolder, Rutasave2, , 3
if Rutasave2 =
    {  

Gui, 1:-Disabled 
     return
}


GuiControl, 1:, nuevacarpetatemp,%Rutasave2%
sleep 100
Gui, 1:-Disabled 

goto settemp

return



controlpickold:


ToTheClipboardDLs(downcountvalreal,0)
setwindowcopy()
Return





GuiContextMenu:

Menu, menu1, Show, %A_GuiX%, %A_GuiY%

return







;menucontextual
repairini:

MsgBox 0x40024, %nameofthisscript1% - Verificación, Se restableceran la pocision de la ventana y los estilos.  ¿Se desea proceder?
IfMsgBox No, {
Return
}

gui, 1:+Disabled





IniWrite, Center, %CLAVEaini%, window position, gui_position

IniWrite, Center, %CLAVEaini%, ventanita, gui_position
;positionn of gui if is new use in new pc
IniWrite, 700/200, %CLAVEaini%, pcnewres, a



;ventanita
IniWrite, 0, %CLAVEaini%, Ventanita, a
IniWrite, Titulo de la ventana, %CLAVEaini%, Ventanita, b
IniWrite, Texto superior, %CLAVEaini%, Ventanita, c
IniWrite, Texto inferior, %CLAVEaini%, Ventanita, d
IniWrite, 97A0D4, %CLAVEaini%, Ventanita, e
IniWrite, c0xffffff, %CLAVEaini%, Ventanita, f






IniWrite, 003F24, %CLAVEaini%, Opercolor, 1
IniWrite, ffffff , %CLAVEaini%, Opercolor, 2
IniWrite, 000F62, %CLAVEaini%, Opercolor, 3
IniWrite, ffffff , %CLAVEaini%, Opercolor, 4
IniWrite, 2E1E39, %CLAVEaini%, Opercolor, 5
IniWrite, ffffff , %CLAVEaini%, Opercolor, 6
IniWrite, 59000D, %CLAVEaini%, Opercolor, 7
IniWrite, ffffff , %CLAVEaini%, Opercolor, 8
IniWrite, C5B657, %CLAVEaini%, Opercolor, 9
IniWrite, ffffff , %CLAVEaini%, Opercolor, 10
IniWrite, 4B484A, %CLAVEaini%, Opercolor, 11
IniWrite, ffffff , %CLAVEaini%, Opercolor, 12
IniWrite, B2B2B2, %CLAVEaini%, Opercolor, 13
IniWrite, ffffff , %CLAVEaini%, Opercolor, 14
IniWrite, 30583F, %CLAVEaini%, Opercolor, 15
IniWrite, ffffff , %CLAVEaini%, Opercolor, 16
IniWrite, FFFFFF, %CLAVEaini%, Opercolor, 17
IniWrite, 272822 , %CLAVEaini%, Opercolor, 18
IniWrite, ffffff, %CLAVEaini%, Opercolor, 19
IniWrite, 008485 , %CLAVEaini%, Opercolor, 20




;SKM Custom
IniWrite, Verdana, %CLAVEaini%, STKG,1
IniWrite, 2, %CLAVEaini%, STKG,2
IniWrite, 8, %CLAVEaini%, STKG,3
IniWrite, Verdana, %CLAVEaini%, STKG,4
IniWrite, 2, %CLAVEaini%, STKG,5
IniWrite, 8, %CLAVEaini%, STKG,6











reload
return





















opendirect1:



if carpetafinaloper=.
{
MsgBox 0x40040, %nameofthisscript1% - Información, Carpeta invalida, 1
return
}

if carpetafinaloper=
{
MsgBox 0x40040, %nameofthisscript1% - Información, Carpeta invalida, 1
return
}


if !FileExist(carpetafinaloper)
{
MsgBox 0x40040, %nameofthisscript1% - Información, El elemento no existe, 1
return
}


SplitPath, carpetafinaloper, , opendir


Run, explorer.exe %opendir%, ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

return










GuiDropFiles:
Gui, 1:Submit, NoHide


saltarposit1=0









;desactivar cualquier ToolTip que este actualmente desplegado
ToolTip
























Gui, 1:+Disabled 
Gui, zx:+Disabled 



;clavenewoperation9

listaelemmove1 := A_GuiEvent
Loop, Parse, listaelemmove1, `n, `r                                    
	{
		
	if DLsopDLs=9
	 If (A_Index >= 2)
{
MsgBox 0x40040, %nameofthisscript1% - Información, El limite de elementos para esta operación es de 1., 
		Gui, 1:-Disabled 
Gui, zx:-Disabled 
		return
}

		if DLsopDLs=5
	 If (A_Index >= 11)
{
MsgBox 0x40040, %nameofthisscript1% - Información, El limite de elementos para esta operación es de 10., 
		Gui, 1:-Disabled 
Gui, zx:-Disabled 
		return
	}
		
				if DLsopDLs=16
	 If (A_Index >= 2)
{
MsgBox 0x40040, %nameofthisscript1% - Información, El limite de elementos para esta operación es de 1., 
		Gui, 1:-Disabled 
Gui, zx:-Disabled 
		return
		}	
		
		
		
						if DLsopDLs=19
	 If (A_Index >= 2)
{
MsgBox 0x40040, %nameofthisscript1% - Información, El limite de elementos para esta operación es de 1., 
		Gui, 1:-Disabled 
Gui, zx:-Disabled 
		return
		}	
		
		
		
		
		
		
if DLsopDLs=21
If (A_Index >= 2)
{
MsgBox 0x40040, %nameofthisscript1% - Información, El limite de elementos para esta operación es de 1., 
		Gui, 1:-Disabled 
Gui, zx:-Disabled 
		return
}		


		if DLsopDLs=23
If (A_Index >= 2)
{
MsgBox 0x40040, %nameofthisscript1% - Información, El limite de elementos para esta operación es de 1., 
		Gui, 1:-Disabled 
Gui, zx:-Disabled 
		return
	}		
		
		
		
		if DLsopDLs=25
If (A_Index >10)
{
MsgBox 0x40040, %nameofthisscript1% - Información, El limite de elementos para esta operación es de 10., 
		Gui, 1:-Disabled 
Gui, zx:-Disabled 
		return
	}		
		
						if DLsopDLs=27
	 If (A_Index >= 2)
{
MsgBox 0x40040, %nameofthisscript1% - Información, El limite de elementos para esta operación es de 1., 
		Gui, 1:-Disabled 
Gui, zx:-Disabled 
		return
		}	
		
						if DLsopDLs=28
	 If (A_Index >= 2)
{
MsgBox 0x40040, %nameofthisscript1% - Información, El limite de elementos para esta operación es de 1., 
		Gui, 1:-Disabled 
Gui, zx:-Disabled 
		return
		}	
		
		
		
				
						if DLsopDLs=29
	 If (A_Index >= 2)
{
MsgBox 0x40040, %nameofthisscript1% - Información, El limite de elementos para esta operación es de 1., 
		Gui, 1:-Disabled 
Gui, zx:-Disabled 
		return
		}	
		
		
		;custom
				

		
		
		;% EN CONSOLA
		cantidadofelements=%A_Index%
		;para limpiar las variables al final
		valoronlyforeraseinfoforclean=%A_Index%
		
	}				

continuacxc1:


		
;clavenewoperation10


if DLsopDLs=4
goto inicoperaren2

if DLsopDLs=24
	goto inicoperaren2




if DLsopDLs=18
goto guipreoprat1
		
		
		

if DLsopDLs=29
goto guipreoprat2
		
		
		

	





retornopreguis:



	
 ;se agrega una operacion a deshacer
EnvAdd, inideshn, 1

if inideshn>=201
inideshn=1


dhsfileini=%Deshacer2%%inideshn%.ini
	;eliminar ini de una operacion anteriror

FileDelete,%dhsfileini%




	;para numeracion
valserial=0


	;para mover cantidad
movercantidadv=0

        ;autoload archive of listgfggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg
accionvalr=0

;ordenar listade elementos
if DLsopDLs=8
{
Sort, listaelemmove1,F SortStrCmpLogical

}



Loop, Parse, listaelemmove1, `n, `r   
{

	
EnvAdd, accionvalr, 1


soloportenvarlo:="architmpovarl"accionvalr

%soloportenvarlo%=%A_LoopField%	;para numeracion



if A_Index=% FileList.MaxIndex()	
Goto,endlodfiles
}

;para los ini de deshacer
numescini=0

endlodfiles:

vaacccopiop=0


;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

porcopert1:=100/cantidadofelements
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %




readfileup1:


;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numescini*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%




nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

porctelem:="%"

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

EnvAdd, vaacccopiop, 1

soloportenvarlo:="architmpovarl"vaacccopiop


Fileoctlist=% %soloportenvarlo%

if vaacccopiop>%accionvalr%
Goto,finaloperaty




Goto,Ejecusio





finaloperaty:
endopets7z:




valserial=-1


;activar por un momento ggggggggggggggggggg--------



listaelemmovestk1=0
vardelimvalo1=0
Loop
{

	
EnvAdd, vardelimvalo1, 1


soloportenvarlo:="architmpovarl"vardelimvalo1



if vardelimvalo1>%valoronlyforeraseinfoforclean%
	break
break
}



;ggggggggggggggggggg--------
Gui, 1:-Disabled 
Gui, zx:-Disabled 




GuiControl,1:, tollee1, |||||||||||||||||  Listo  |||||||||||||||||




;carpetanueva
if secreoeldirect=1
{
secreoeldirect=0


if cajautilita=1
goto settemp
else 
goto sestcardest
}
return











Ejecusio:




;para los ini de deshacer
EnvAdd, numescini, 1




;clavenewoperation12

IniWrite, %DLsopDLs%,%dhsfileini%, Proceso, a




prevarcutct1:="varcutct" DLsopDLs
prevarcutct2=% %prevarcutct1%

if prevarcutct2=0
goto, paraborrar1



;Comprobaciones de carpeta central, si no existe o no es carpeta o es una barra
;Comprobaciones de carpeta central, si no existe o no es carpeta o es una barra
;Comprobaciones de carpeta central, si no existe o no es carpeta o es una barra





if carpetafinaloper=Barra
{
	MsgBox 0x40040, %nameofthisscript1% - Información, Carpeta invalida, 1
goto finaloperaty
}





if carpetafinaloper=
		{ 
MsgBox 0x40040, %nameofthisscript1% - Información, Carpeta invalida, 1
goto, finaloperaty
	} 

if carpetafinaloper=.
		{ 
MsgBox 0x40040, %nameofthisscript1% - Información, Carpeta invalida, 1
goto, finaloperaty
	} 
	
	;los exe
if extcarpope=exe
		{ 
MsgBox 0x40040, %nameofthisscript1% - Información, Carpeta invalida, 1
goto, finaloperaty
	} 








	
;si no existe la carpeta se crea

if !FileExist(carpetafinaloper)
{
MsgBox 0x40024, %nameofthisscript1% - Verificación,La carpeta no existe ¿Desea crearla?
IfMsgBox Yes, {
FileCreateDir, %carpetafinaloper% 
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %carpetafinaloper%, 1
goto finaloperaty
}

secreoeldirect=1

          } 
              Else IfMsgBox No, {
MsgBox 0x40040, %nameofthisscript1% - Información, Carpeta invalida, 1
goto finaloperaty
              Return
              }
}


;si no existe la carpeta se crea



;comprobacion de archivos en la carpeta final


FileGetAttrib, deteopeforfile, %carpetafinaloper%

If not InStr(deteopeforfile, "D")
{
MsgBox 0x40040, %nameofthisscript1% - Información, Carpeta invalida, 1
goto finaloperaty
}




;Comprobaciones de carpeta central, si no existe o no es carpeta o es una barra
;Comprobaciones de carpeta central, si no existe o no es carpeta o es una barra
;Comprobaciones de carpeta central, si no existe o no es carpeta o es una barra














paraborrar1:


  ;funciones para establecer un nuev valor al sistema

;Forzaroperacion  unica de soltar_ddddddddddddddddddddddddddddddddddddddddddddddddddd

;Forzaroperacion_ddddddddddddddddddddddddddddddddddddddddddddddddddd
  
aacini=%Fileoctlist%


SplitPath, aacini, nombre1, dir1, ext1, name_no_ext1, drive1




FileGetAttrib, valoarcorfold, %aacini%

If InStr(valoarcorfold, "D")
        {
Goto, DLsacc11
}
else
        {
			Goto, DLsacc12

}


return





;guis preoperations
guipreoprat1:


;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo
coloskinguicont:=Coloresofgui()

coloskinguicont:=StrSplit(coloskinguicont, "|")

coloskingui1=% coloskinguicont[1]
coloskingui2=% coloskinguicont[2]
coloskingui3=% coloskinguicont[3]
;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo


Gui, strrena:Color,, %coloskingui1%
Gui, strrena:Font, c0x%coloskingui2%
Gui, strrena:Color ,%coloskingui3%


    If alwotcome = 1
    {
        Gui, strrena:+AlwaysOnTop
    }




Gui, strrena:+owner1  ; Make the main window (Gui #1) the owner of the "about box".
Gui 1:+Disabled  ; Disable main window.


Gui, strrena:Add, Text, x12 y9 w130 h20 center , Buscar
Gui, strrena:Add, Edit,  vedivieren1 x12 y29 w130 h20 

Gui, strrena:Add, Text, x12 y59 w130 h20 center , Reemplazo
Gui, strrena:Add, Edit, vedivieren2 x12 y79 w130 h20 ,
Gui, strrena:Add, Button, x52 y109 w50 h20 ginicoperaren1, Ok



; Generated using SmartGUI Creator 4.0
Gui, strrena:Show, Center h143 w158, %nameofthisscript1% - %namexx18%
Return

strrenaGuiClose:
Gui, strrena:Destroy
goto finaloperaty
return





inicoperaren1:
Gui,strrena:Submit, NoHide
searchstr1=%edivieren1%
remplcstr1=%edivieren2%




renfsecur1=%A_ScriptDir%\Data\%remplcstr1% abc


FileCopy, %A_ScriptDir%\Data\1A ,%renfsecur1% ,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,  Algunos de los carecteres no son soportados por el sistema de archivos. , 2

if  FileExist(renfsecur1)
FileDelete, %renfsecur1%

return
}


if  FileExist(renfsecur1)
FileDelete, %renfsecur1%


Gui, strrena:Destroy
goto retornopreguis
return


inicoperaren2:
MsgBox 0x40031, %nameofthisscript1% - Verificación, Los archivos serán eliminados de manera permanente.

IfMsgBox OK, {
goto	retornopreguis

} Else IfMsgBox Cancel, {
	goto finaloperaty

}  
return



guipreoprat2:

;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo
coloskinguicont:=Coloresofgui()

coloskinguicont:=StrSplit(coloskinguicont, "|")

coloskingui1=% coloskinguicont[1]
coloskingui2=% coloskinguicont[2]
coloskingui3=% coloskinguicont[3]
;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo


Gui, busqg:Color,, %coloskingui1%
Gui, busqg:Font, c0x%coloskingui2%
Gui, busqg:Color ,%coloskingui3%


    If alwotcome = 1
    {
        Gui, busqg:+AlwaysOnTop
    }




Gui, busqg:+owner1  ; Make the main window (Gui #1) the owner of the "about box".
Gui 1:+Disabled  ; Disable main window.


Gui, busqg:Add, Text, x12 y9 w130 h20 center , Buscar
Gui, busqg:Add, Edit,  veffb1 x12 y29 w130 h20 
Gui, busqg:Add, Checkbox,  veffb3 x12 y59 w130 h20  Checked%cheffolders29% , Incluir carpetas


Gui, busqg:Add, Button, x52 y89 w50 h20 veffb2 geffb2, Ok



; Generated using SmartGUI Creator 4.0
Gui, busqg:Show, Center h120  w158, %nameofthisscript1% - %namexx29%
Return

busqgGuiClose:
Gui, busqg:Destroy
goto finaloperaty
return





effb2:
Gui,busqg:Submit, NoHide
abuscar1=%effb1%
abuscar2=%effb3%



;oper29
IniWrite, %abuscar2%, %CLAVEaini%, OperSave, a
cheffolders29=%abuscar2%


renfsecur1=%A_ScriptDir%\Data\%effb1% abc


FileCopy, %A_ScriptDir%\Data\1A ,%renfsecur1% ,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,  Algunos de los carecteres no son soportados por el sistema de archivos. , 2

if  FileExist(renfsecur1)
FileDelete, %renfsecur1%



return
}


if  FileExist(renfsecur1)
FileDelete, %renfsecur1%


Gui, busqg:Destroy
goto retornopreguis
return








;clavenewoperation5
accionagepos1:

Gui, 1:Submit, NoHide
if accionagepos1=1
DLsopDLs=1
else
if accionagepos1=2
DLsopDLs=23
else
if accionagepos1=3
DLsopDLs=2
else
if accionagepos1=4
DLsopDLs=22

else
if accionagepos1=5
DLsopDLs=26
else
if accionagepos1=6
DLsopDLs=27

else
if accionagepos1=7
DLsopDLs=28

else
if accionagepos1=8
DLsopDLs=7

else
if accionagepos1=9
DLsopDLs=8

else
if accionagepos1=10
DLsopDLs=17

else
if accionagepos1=11
DLsopDLs=18

else
if accionagepos1=12
DLsopDLs=6

else
if accionagepos1=13
DLsopDLs=9

else
if accionagepos1=14
DLsopDLs=21

else
if accionagepos1=15
DLsopDLs=25


else
if accionagepos1=16
DLsopDLs=5

else
if accionagepos1=17
DLsopDLs=14

else
if accionagepos1=18
DLsopDLs=15


else
if accionagepos1=19
DLsopDLs=10

else
if accionagepos1=20
DLsopDLs=11

else
if accionagepos1=21
DLsopDLs=12
else
if accionagepos1=22
DLsopDLs=13

else
if accionagepos1=23
DLsopDLs=3

else
if accionagepos1=24
DLsopDLs=20

else
if accionagepos1=25
DLsopDLs=16
else
if accionagepos1=26
DLsopDLs=4
else
if accionagepos1=27
DLsopDLs=24
else
if accionagepos1=28
DLsopDLs=19
else
if accionagepos1=29
DLsopDLs=29
;globales para funcion colores of gui
global DLsopDLsglob := DLsopDLs



winprincolor:

Gui, 1:Submit, NoHide

;Datos de ventana actual
WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position= x%gui_x% y%gui_y%

GuiControlGet, rgggd1, 1:, soperati
vaselebnc=%rgggd1%



GuiControlGet, foldsaveinc, 1:, nuevacarpetatemp
carpetatemporaenc=%foldsaveinc%


GuiControlGet, vca1, 1:, DLsaDLs
DLsaDLsselecccom=%vca1%
GuiControlGet, vcacadop, 1:, accionagepos1
DLsopDLsselecopecom=%vcacadop%
Gui, 1:Destroy

Goto, inicguy


return






























;clavenewoperation11
ddddinfo:
Gui, 1:Submit, NoHide


If  DLsopDLs=1
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Copia de los mismos en la carpeta previamente guardada o en la carpeta temporal.  `nDeshacer: Eliminación de los archivos copiados.

else
If  DLsopDLs=2
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Envía  los mismos a la carpeta previamente guardada o en la carpeta temporal. `nDeshacer: Regreso de los archivos a la ubicación original.
else
If  DLsopDLs=3
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite. `nSalida: Envía  los mismos a la papelera de reciclaje.  `nDeshacer: Abrir la papelera de reciclaje.
else
If  DLsopDLs=4
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Elimina los archivos directamente, sin embargo es posible  recuperarlos  con un programa especializado. `nDeshacer: CoMe no puede revertir la operación.
else
If  DLsopDLs=5
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas, 10 elementos a la vez.  `nSalida: Envía  las carpetas o en su defecto los directorios de los archivos al programa externo para su inspección.  
else
If  DLsopDLs=6
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Renombre de los archivos con datos provenientes de la fecha y hora actuales. `nDeshacer: Retorno de los nombres originales.
else
If  DLsopDLs=7
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Renombre de los elementos de forma manual. `nDeshacer: Retorno de los nombres originales.
else
If  DLsopDLs=8
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Se cambia el nombre de  los elementos por una numeración. `nDeshacer: Retorno de los nombres originales.


else
If  DLsopDLs=9
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Un archivo o carpeta.  `nSalida: En el caso de un archivo envía el directorio del mismo a 7-zip, en el caso de una carpeta se envía la misma al programa.


else
If  DLsopDLs=10
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Activa el parámetro  oculto de los elementos. `nDeshacer: Desactiva el parámetro.
else
	
If  DLsopDLs=11
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Desactiva el parámetro  oculto de los elementos. `nDeshacer: Activa el parámetro.
else
If  DLsopDLs=12
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Activa el parámetro  solo de lectura de los elementos. `nDeshacer: Desactiva el parámetro.
	else
If  DLsopDLs=13
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Desactiva el parámetro  solo de lectura de los elementos.  `nDeshacer: Activa el parámetro.
	else
If  DLsopDLs=14
MsgBox 0x40040, %nameofthisscript1% - Información,  Entrada: Archivos y carpetas sin límite.  `nSalida: Activa el parámetro  archivo del sistema de los elementos. `nDeshacer: Desactiva el parámetro.
	else
If  DLsopDLs=15
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Desactiva el parámetro  archivo del sistema de los elementos. `nDeshacer: Activa el parámetro.
	else
If  DLsopDLs=16
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Un archivo o carpeta.  `nSalida: Elimina las subcarpetas en la carpeta seleccionada o directorio del archivo especificado conservando solo los archivos.  `nDeshacer: Restaura las carpetas eliminadas.
						else
If  DLsopDLs=17
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Renombra los elementos mediante una numeracion partiendo del valor especial guardado en configuración. `nDeshacer: Retorno de los nombres originales.

						else
If  DLsopDLs=18
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Sustitución de palabras o caracteres en los nombres de los elementos. `nDeshacer: Retorno de los nombres originales.
						else
If  DLsopDLs=19
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Una carpeta  o un archivo.  `nSalida: Borrar cualquier carpeta dentro del directorio o en su defecto el directorio del archivo especificado que no contenga algún tipo de archivo de los especificados en configuración. `nDeshacer:  Los elementos deben recuperarse manualmente de la papelera.


else
If  DLsopDLs=20
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Carpetas o Archivos sin límite, aunque actúe con precaución. `nSalida: Borra la carpeta en cuestión dejando los archivos y carpetas en el directorio donde se encontraba la carpeta especificada, en su defecto borra todos los archivos con la misma extensión de entrada. `nDeshacer: las operaciones de la carpeta se deshacen una a la vez es decir carpeta por carpeta de entrada. En su defecto los archivos deben recuperarse manualmente de la papelera.
else
If  DLsopDLs=21
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Una carpeta  o un archivo. `nSalida: Copia al portapapeles  la ruta del elemento especificado.
else
If  DLsopDLs=22
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Carpetas o Archivos sin límite, aunque actúe con precaución. `nSalida: Envía todos los archivos con la extensión del elemento especificado o en su defecto todas las carpetas del directorio (Solo es necesario seleccionar una carpeta por directorio es decir la ubicación actual de los elementos.) a la carpeta previamente guardada o la carpeta temporal. `nDeshacer: Regreso de los elementos a la ubicación original.

else
If  DLsopDLs=23
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Carpetas o Archivos sin límite, aunque actúe con precaución. `nSalida: Copia todos los archivos con la extensión del elemento especificado o en su defecto todas las carpetas del directorio (Solo es necesario seleccionar una carpeta por directorio es decir la ubicación actual de los elementos.) a la carpeta previamente guardada o la carpeta temporal. `nDeshacer: Regreso de los elementos a la ubicación original.

else
If  DLsopDLs=24
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite, aunque actúe con precaución.  `nSalida: Eliminación del contenido del directorio es decir la ubicación actual del archivo y en el caso de una carpeta, elimina su contenido sin afectar la misma. El objetivo es eliminar todos los archivos excepto los que afectan la personalización de la carpeta es decir los archivos con extensiones .ini e .ico.  `nDeshacer: Esta operación no se puede deshacer.
else
If  DLsopDLs=25
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos o Carpetas 10 como máximo. `nSalida: Lanzar la aplicación seleccionada para abrir el elemento o elementos especificados.
else
If  DLsopDLs=26
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Archivos y carpetas sin límite.  `nSalida: Soló mueve la cantidad de elementos especificada en configuración a la carpeta previamente guardada o en la carpeta temporal,  .  `nDeshacer: Restaurar los archivos a su posicion original.

else
If  DLsopDLs=27
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Una carpeta  o un archivo. `nSalida: Mueve el contenido de las carpetas dentro de la carpeta o directorio del archivo  especificado sí es que existe ya una carpeta con el mismo nombre en la carpeta previamente guardada o en la carpeta temporal, si la carpeta origen esta vacía se borrará, `nDeshacer: Restaurar los archivos a su posición original.
else
If  DLsopDLs=28
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Una carpeta  o un archivo.  `nSalida: Agrupa los elementos de la carpeta o directorio del archivo  especificado en diferentes carpetas conforme su extensión.  `nDeshacer: Restaurar los archivos a su posición original.
else
If  DLsopDLs=29
MsgBox 0x40040, %nameofthisscript1% - Información, Entrada: Una carpeta o un archivo.  `nSalida: Crea accesos directos a los elementos que contengan el texto especificado. De la carpeta o directorio del archivo especificado a la carpeta previamente guardada o en la carpeta temporal.  `nDeshacer: Borra los accesos directos creados.
return












settemp:
Gui, 1:+Disabled
GuiControlGet, valorcar, 1:,nuevacarpetatemp



carpetafinaloper=%valorcar%


;los exe
SplitPath, carpetafinaloper, namecarpope, dircarpope, extcarpope, name_no_extcarpope,drivecarpope



;ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
ShowMyImageDLs(carpetafinaloper,0,0,0,{EXTRALARGE: 0x02},"1","imagenespcarpe","imgelemet",80,80)
Gui, 1:-Disabled


GuiControl,1:, tollee1,|||||  %namecarpope%  |||||
Sleep, 2000
;lo de la imagen
GuiControl,1:, tollee1, |||||||||||||||||  Listo  |||||||||||||||||

return














sestcardest:



Gui, 1:Submit, NoHide

Gui, 1:+Disabled

;var a modificar
letrainsignia:="a"
fuenteNumber:=DLsaDLs
Util_Dir=0
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



;Utilidad1: datos de la var principal
if Util_Dir=1
{
PreUtiFolder:="UtiFolder_" letrainsignia letrainsignia
SplitPath, %PreElemCom1%, , %PreUtiFolder%,
}

;Fijo-No modificar-Fijo-No modificar-Fijo-No modificar-Fijo-No modificar-Fijo-No modificar-Fijo-No modificar


carpetafinaloper=%ElemCom_aa1%


;los exe
SplitPath, carpetafinaloper, namecarpope, dircarpope, extcarpope, name_no_extcarpope,drivecarpope



;ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
ShowMyImageDLs(ElemCom_aa1,ElemCom_aa2,ElemCom_aa3,ElemCom_aa4,{EXTRALARGE: 0x02},"1","imagenespcarpe","imgelemet",80,80)



GuiControl,1:, tollee1,|||||  %namecarpope%  |||||
Sleep, 1000
;lo de la imagen
GuiControl,1:, tollee1, |||||||||||||||||  Listo  |||||||||||||||||
Gui, 1:-Disabled
return




ShowComDLsaa:



Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="a"
Infohere3=%DLsaDLs%

;not modif
Infohere2pre:="Comtotal_" lidls lidls
Infohere2=% %Infohere2pre%
Infohere1pre:="DLs" lidls Infohere3
Infohere1=% %Infohere1pre%
goto ShowComDLs


return

EraseComDLsaa:
Gui, 1:+Disabled
MsgBox 0x40024, %nameofthisscript1% - Verificación, El comando será borrado y para aplicar los cambios es necesario reiniciar la aplicación ¿Se desea proceder?
IfMsgBox No, {
	Gui, 1:-Disabled
Return
}

Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="a"
Infohere3=%DLsaDLs%

Gui, 1:-Disabled
goto EraseComDLs

return



DLsacc20:





if cajautilita=1
	{ 
	

	OpenFolderDLs(0,carpetafinaloper,1,Folexplodsh)
	Efecto_Start("1","imagenespcarpe")
} 
else
{
	
	
	
	if ElemCom_aa2=Lista
{
	StartCommandDLs_Lista(ElemCom_aa1,Folexplodsh,0)
	Efecto_Start("1","imagenespcarpe")
	return
}
	
	
	
	
	
	;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_aa1,ElemCom_aa2,Folexplodsh,0)
	Efecto_Start("1","imagenespcarpe")
}
return


;Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes
;Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes
;Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes



;clavenewoperation8
DLsacc12:


If  DLsopDLs=1
    goto, DLsacc1
else
If  DLsopDLs=2
    goto,DLsacc2
else
If  DLsopDLs=3
	goto,DLsacc4
else
If  DLsopDLs=4
    goto,DLsacc3
else
If  DLsopDLs=5
    goto,gettama1
else
If  DLsopDLs=6
    goto,renamefile
else
If  DLsopDLs=7
    goto,ednfilerr
else


If  DLsopDLs=8
goto, numeraticfil
else


If  DLsopDLs=9
goto, filesto7zip
else


If  DLsopDLs=10
	 goto,fileHidden1
else
If  DLsopDLs=11
	 goto,fileHidden2
else

	 If  DLsopDLs=12
	 goto,fileRead1
else
	 If  DLsopDLs=13
	 goto,fileRead2
else
	 If  DLsopDLs=14
	 goto,fileSystem1
else
	 If  DLsopDLs=15
	 goto,fileSystem2
else
	 	 If  DLsopDLs=16
	 goto,loopfilesfoldersinallsubdirfiles
else
	 If  DLsopDLs=17
	 goto, numerfil22
else
	 	 If  DLsopDLs=18
	 goto, sustnamwfiles
else

	 	 If  DLsopDLs=19
	 goto, prelopcarpandsubfolders
else

 	 If  DLsopDLs=20
	 goto, deletesubdir1
else

 If  DLsopDLs=21
	 goto, pachaget
else
 
  If  DLsopDLs=22
	 goto,  movetofilesototipe
else
 
  If  DLsopDLs=23
	 goto, copisolotipo
else
 
 If  DLsopDLs=24
	 goto, deleteall2
else
 
 If  DLsopDLs=25
	 goto, openexe
else

 If  DLsopDLs=26
	 goto, movercantifiles
else

 If  DLsopDLs=27
	 goto, deletesubf2
else

 If  DLsopDLs=28
	 goto, ganizartipo2
 else
  If  DLsopDLs=29
	 goto, loopfilesfoldersinallsubdirfiles
 ;custom



return



DLsacc11:


If  DLsopDLs=1
    goto, DLsacc7
else
If  DLsopDLs=2
    goto,DLsacc8
else
If  DLsopDLs=3
    goto,DLsacc4
else
If  DLsopDLs=4
    goto,DLsacc9
else
If  DLsopDLs=5
    goto,gettama2
else
If  DLsopDLs=6
    goto,renamefold
else

If  DLsopDLs=7
    goto,ednfolder
else

If  DLsopDLs=8
goto, numeraticcarp
else

If  DLsopDLs=9
goto, folderto7zip
else


	 If  DLsopDLs=10
	 goto,folderHidden1
else
If  DLsopDLs=11
	 goto,folderHidden2
else
	 
	 If  DLsopDLs=12
	 goto,folderRead1
else
	 If  DLsopDLs=13
	 goto,folderRead2
else
	 If  DLsopDLs=14
	 goto,folderSystem1
else
	 If  DLsopDLs=15
	 goto,folderSystem2
else
	 
	 	 If  DLsopDLs=16
	 goto,loopfilesfoldersinallsubdir
else

	 If  DLsopDLs=17
	 goto, numerfold22
else

	 If  DLsopDLs=18
goto sustnamwfolder
else
	 
	 If  DLsopDLs=19
 goto, lopcarpandsubfolders

else

 	 If  DLsopDLs=20
	 goto, deletesubdir2
else
	 
 If  DLsopDLs=21
	 goto, pachaget
else

  If  DLsopDLs=22
	 goto,  movetoonlyfold
else
	 
 If  DLsopDLs=23
	 goto, copisolocarp
else

If  DLsopDLs=24
	 goto, deleteall1
else

 If  DLsopDLs=25
	 goto, openexe2
else
 
 If  DLsopDLs=26
	 goto, movercantifolders
else

 If  DLsopDLs=27
	 goto, existecarpeta
else

 If  DLsopDLs=28
	 goto, ganizartipo
  else
  If  DLsopDLs=29
	 goto, loopfilesfoldersinallsubdir
 
 
 ;custom

	return
;Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes
;Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes
;Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes__________________Rama de operaciónes




























































































































;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________







;1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********
;1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********1********


DLsacc1:





FileCopy, %aacini%, %carpetafinaloper%\%name_no_ext1%.%ext1%,0
    
if ErrorLevel
{ 
   if autonamecom=1
   goto, renombzrcop1
   else
   { 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El elemento: %carpetafinaloper%\%name_no_ext1%.%ext1%  ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
          FileCopy, %aacini%, %carpetafinaloper%\%name_no_ext1%.%ext1%,1
		 
goto, readfileup2
		  
		  Return
          } 
              Else IfMsgBox No, {
				
              IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
			  
goto, readfileup1
			  Return
              }
}
}
readfileup2:



;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%name_no_ext1%.%ext1%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}






IniWrite, %carpetafinaloper%\%name_no_ext1%.%ext1%,%dhsfileini%, Operation, %numescini%
IniWrite, %dir1%,%dhsfileini%, Dirmov, %numescini%
goto, readfileup1


return





renombzrcop1:
contnTFN1:=TimeFileName1()	

NAMEFILE=%carpetafinaloper%\%name_no_ext1% %contnTFN1% .%ext1%

	FileCopy, %aacini%, %NAMEFILE%,0
if ErrorLevel
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El elemento: %NAMEFILE%  ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
	FileCopy, %aacini%, %NAMEFILE%,1
		 
goto, readfileup3
	
		  Return
          } 
              Else IfMsgBox No, {
			 
			 IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1
			  
              Return
              }
}

readfileup3:

;comprobar si existe el archivo 

if !FileExist(NAMEFILE)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %NAMEFILE%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}





IniWrite, %NAMEFILE%,%dhsfileini%, Operation, %numescini%
IniWrite, %dir1%,%dhsfileini%, Dirmov, %numescini%
goto, readfileup1

return





;3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********
;3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********3********











DLsacc2:







	FileMove, %aacini%, %carpetafinaloper%\%name_no_ext1%.%ext1%,0
    
if ErrorLevel
{ 
   if autonamecom=1
   goto, renombzrmov1
   else
   { 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El elemento: %carpetafinaloper%\%name_no_ext1%.%ext1% ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
          FileMove, %aacini%, %carpetafinaloper%\%name_no_ext1%.%ext1%,1
		  
        
goto, readfileup9


		  Return
          } 
              Else IfMsgBox No, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1
              Return
              }
}
  
} 
readfileup9:

;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%name_no_ext1%.%ext1%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}



      IniWrite, %carpetafinaloper%\%name_no_ext1%.%ext1%,%dhsfileini%, Operation, %numescini%

IniWrite, %dir1%,%dhsfileini%, Dirmov, %numescini%

goto, readfileup1



return






renombzrmov1:
contnTFN1:=TimeFileName1()	


namearvhmove=%carpetafinaloper%\%name_no_ext1% %contnTFN1% .%ext1%


	FileMove, %aacini%, %namearvhmove%,0
if ErrorLevel
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación,El elemento: %namearvhmove% ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
	FileMove, %aacini%, %namearvhmove%,1

goto, readfileup8

		  Return
          } 
              Else IfMsgBox No, {
			       IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1
              Return
              }
}
  readfileup8:
  
  
  ;comprobar si existe el archivo 
if !FileExist(namearvhmove)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}


  
  
  
        IniWrite, %namearvhmove%,%dhsfileini%, Operation, %numescini%
  
   IniWrite, %dir1%,%dhsfileini%, Dirmov, %numescini%
  
goto, readfileup1

return





;5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********
;5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********5********


DLsacc3:



FileDelete, %aacini%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %aacini%. 
goto, readfileup1
} 
goto, readfileup1
Return


;6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********
;6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********6********


DLsacc4:



FileRecycle, %aacini%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %aacini%, 
goto, readfileup1
} 
goto, readfileup1
Return




;7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********
;7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********7********







DLsacc7:







	  



	FileCopyDir, %aacini%, %carpetafinaloper%\%nombre1%,0
if ErrorLevel
{ 
	if autonamecom=1
   goto, renombcarpco1
   else
   { 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El elemento: %carpetafinaloper%\%nombre1%  ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
          FileCopyDir, %aacini%, %carpetafinaloper%\%nombre1%,1
		 
goto, readfileup4

		  Return
          } 
              Else IfMsgBox No, {

IniWrite, No aplica,%dhsfileini%, Operation, %numescini%

goto, readfileup1
              Return
              }
}
  
} 

readfileup4:

;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%nombre1%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}





IniWrite, %carpetafinaloper%\%nombre1%,%dhsfileini%, Operation, %numescini%
	IniWrite, %dir1%,%dhsfileini%, Dirmov, %numescini%
goto, readfileup1



return







renombcarpco1:

contnTFN1:=TimeFileName1()	

namedireco=%Seaa1%\%nombre1% %contnTFN1%

FileCopyDir, %aacini%, %namedireco%,0
if ErrorLevel
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El elemento: %namedireco%  ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
          FileCopyDir, %aacini%, %namedireco%,1
		  
		 
goto, readfileup5
		  
		  Return
          } 
              Else IfMsgBox No, {
			  
			 IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1

              Return
              }
}

readfileup5:


;comprobar si existe el archivo 

if !FileExist(namedireco)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namedireco%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}


      IniWrite, %namedireco%,%dhsfileini%, Operation, %numescini%
	  IniWrite, %dir1%,%dhsfileini%, Dirmov, %numescini%
	  
goto, readfileup1


return














;9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********
;9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********9********









DLsacc8:




	FileMoveDir, %aacini%, %carpetafinaloper%\%nombre1%,0
if ErrorLevel
{ 
	if autonamecom=1
   goto, renombcarpmov1
   else
   { 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El elemento: %carpetafinaloper%\%nombre1%  ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
          FileMoveDir, %aacini%, %carpetafinaloper%\%nombre1%,1

goto, readfileup6

		Return
          } 
              Else IfMsgBox No, {
			  			 IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
			 
goto, readfileup1

              Return
              }
}
} 

readfileup6:

;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%nombre1%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}



			  			 IniWrite, %carpetafinaloper%\%nombre1%,%dhsfileini%, Operation, %numescini%
IniWrite, %dir1%,%dhsfileini%, Dirmov, %numescini%

goto, readfileup1


return








renombcarpmov1:
contnTFN1:=TimeFileName1()	


namedirecnue=%carpetafinaloper%\%nombre1% %contnTFN1%

FileMoveDir, %aacini%,%namedirecnue%,0
if ErrorLevel
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El elemento: %namedirecnue%  ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
          FileMoveDir, %aacini%, %namedirecnue%,1
		 
goto, readfileup7
		  	
		  Return
          } 
              Else IfMsgBox No, {
			  
			 			 IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1

              Return
              }
}


readfileup7:
;comprobar si existe el archivo 

if !FileExist(namedirecnue)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namedirecnue%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}





			 			 IniWrite,  %namedirecnue%,%dhsfileini%, Operation, %numescini%

IniWrite, %dir1%,%dhsfileini%, Dirmov, %numescini%


goto, readfileup1


return




;11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********
;11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********11********



filesto7zip:
codediropen:=dir1
goto emtrafilesto7zip
return



;13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********
;13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********13********





folderto7zip:

codediropen:=aacini

emtrafilesto7zip:


Run, %code7z% "%codediropen%", , Min UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

goto, endopets7z
return



;14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********
;14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********14********



fileHidden1:
FileSetAttrib, +H , %aacini%
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}



IniWrite, %aacini%,%dhsfileini%, Operation, %numescini%
goto, readfileup1
return


;15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********
;15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********15********



fileHidden2:


FileSetAttrib, -H , %aacini%
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}




IniWrite, %aacini%,%dhsfileini%, Operation, %numescini%
goto, readfileup1
return
	 


;16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********
;16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********16********

fileRead1:
FileSetAttrib, +R , %aacini%
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}


IniWrite, %aacini%,%dhsfileini%, Operation, %numescini%
goto, readfileup1
return


;17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********
;17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********17********


fileRead2:
FileSetAttrib, -R , %aacini%
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}



IniWrite, %aacini%,%dhsfileini%, Operation, %numescini%
goto, readfileup1
return


;18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********
;18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********18********



fileSystem1:
FileSetAttrib, +S , %aacini%
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}



IniWrite, %aacini%,%dhsfileini%, Operation, %numescini%
goto, readfileup1
return



;19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********
;19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********19********



fileSystem2:
FileSetAttrib, -S , %aacini%
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}




IniWrite, %aacini%,%dhsfileini%, Operation, %numescini%
goto, readfileup1
return



;20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********
;20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********20********






folderHidden1:
if nueatribfiles=1
{
FileSetAttrib, +H , %aacini%\*, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}
}


FileSetAttrib, +H , %aacini%, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}


IniWrite, %aacini%,%dhsfileini%, Operation, %numescini%


goto, readfileup1
return


;21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********
;21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********21********


folderHidden2:
if nueatribfiles=1
{
FileSetAttrib, -H , %aacini%\*, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}
}


FileSetAttrib, -H , %aacini%, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}




IniWrite, %aacini%,%dhsfileini%, Operation, %numescini%
goto, readfileup1
return
	 


;22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********
;22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********22********





folderRead1:
if nueatribfiles=1
{
FileSetAttrib, +R , %aacini%\*, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}
}



FileSetAttrib, +R , %aacini%, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}




IniWrite, %aacini%,%dhsfileini%, Operation, %numescini%
goto, readfileup1
return



;23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********
;23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********23********




folderRead2:
if nueatribfiles=1
{
FileSetAttrib, -R , %aacini%\*, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}
}



FileSetAttrib, -R , %aacini%, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}



IniWrite, %aacini%,%dhsfileini%, Operation, %numescini%
goto, readfileup1
return




;24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********
;24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********24********


folderSystem1:
if nueatribfiles=1
{
FileSetAttrib, +S , %aacini%\*, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}
}


FileSetAttrib, +S , %aacini%, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}


IniWrite, %aacini%,%dhsfileini%, Operation, %numescini%
goto, readfileup1
return



;25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********
;25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********25********




folderSystem2:
if nueatribfiles=1
{
FileSetAttrib, -S , %aacini%\*, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}
}



FileSetAttrib, -S , %aacini%, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%  ¿Continuar con la operación?
IfMsgBox No, {
goto finaloperaty
}
}




IniWrite, %aacini%,%dhsfileini%, Operation, %numescini%
goto, readfileup1
return



;26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********
;26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********26********





DLsacc9:


FileRemoveDir, %aacini%,1
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %aacini%, 
goto, readfileup1
return
} 
goto, readfileup1
return









;28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********
;28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********28********










gettama1:

direxam:=dir1

goto entergettama1
Return


;29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********
;29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********29********



gettama2:

direxam:=aacini


entergettama1:



Run, %codeMeinPlatz% "%direxam%", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

goto, readfileup1
return




;30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********
;30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********30********



renamefile:


nombrenjuego=%name_no_ext1%

if elimnomv=1
{ 	
nombrenjuego=
}

contnTFN2:=TimeFileName2()	


creaciinn=%nombrenjuego% %contnTFN2% .%ext1%

if nametxt=1
		{ 	
		FileAppend, %nombre1%=%creaciinn%`n , %dir1%\CoMe-[Name]-.txt
			}



FileMove, %aacini%, %dir1%\%creaciinn%,1
if ErrorLevel
{ 
	IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
MsgBox 0x40010, %nameofthisscript1% - Error, Elemento en conflicto: %dir1%\%creaciinn%, 1


goto, readfileup1
 }



;comprobar si existe el archivo 
archivxcomp=%dir1%\%creaciinn%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}


IniWrite,  %dir1%\%creaciinn%,%dhsfileini%, Operation, %numescini%
IniWrite, %aacini%,%dhsfileini%, Dirmov, %numescini%


      
goto, readfileup1
		  Return


;31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********
;31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********31********





renamefold:

nombrenjuego=%nombre1%

if elimnomv=1
{ 	
nombrenjuego=
}

contnTFN2:=TimeFileName2()	
creaciinn=%nombrenjuego% %contnTFN2%

if nametxt=1
		{ 	
		FileAppend, %nombre1%=%creaciinn%`n , %aacini%\CoMe-[Name]-.txt
		Sleep 500
			}




FileMoveDir, %aacini%, %dir1%\%creaciinn%,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Elemento en conflicto: %dir1%\%creaciinn%
       IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1
 }


;comprobar si existe el archivo 
archivxcomp=%dir1%\%creaciinn%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}





IniWrite,   %dir1%\%creaciinn% ,%dhsfileini%, Operation, %numescini%
IniWrite, %aacini%,%dhsfileini%, Dirmov, %numescini%


goto, readfileup1
		  Return


;32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********
;32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********32********








numeraticfil:


EnvAdd, valserial, 1





Fileinc1=%dir1%\%valserial%.%ext1%
if FileExist(Fileinc1)
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto, ya existe el elemento: %Fileinc1%, 2
	goto finaloperaty
}

if nametxt2=1
		{ 	
		FileAppend, %nombre1%=%valserial%.%ext1%`n , %dir1%\CoMe-Nu-[Name]-.txt
			}



FileMove, %aacini%, %dir1%\%valserial%.%ext1% ,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%, 2
       IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1
 }



;comprobar si existe el archivo 
archivxcomp=%dir1%\%valserial%.%ext1%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}








IniWrite, %dir1%\%valserial%.%ext1%,%dhsfileini%, Operation, %numescini%
IniWrite, %aacini%,%dhsfileini%, Dirmov, %numescini%



goto, readfileup1
Return


;33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********
;33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********33********



numeraticcarp:


EnvAdd, valserial, 1





Fileinc1=%dir1%\%dir1%\%valserial%
if FileExist(Fileinc1)
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto, ya existe el elemento: %Fileinc1%, 2
	goto finaloperaty
}





if nametxt2=1
		{ 	
		FileAppend, %nombre1%=%valserial%`n , %aacini%\CoMe-Nu-[Name]-.txt
		Sleep 500
			}



FileMoveDir, %aacini%, %dir1%\%valserial% ,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%, 2
       IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1
 }
 
 
 ;comprobar si existe el archivo 
archivxcomp=%dir1%\%valserial%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}


 
 
 
 
 
 
IniWrite,  %aacini%, %dir1%\%valserial%,%dhsfileini%, Operation, %numescini%
IniWrite, %aacini%,%dhsfileini%, Dirmov, %numescini%
goto, readfileup1
Return


;34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********
;34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********34********




ednfilerr:


    If alwotcome = 1
    {
        Gui, vaa1:+AlwaysOnTop
    }



Gui,  vaa1:Color,, %varpaventan13%
Gui,  vaa1:Font, c0x%varpaventan14% s13 w500
Gui,  vaa1:Color ,%varpaventan13%

Gui, vaa1:-MinimizeBox
Gui, vaa1:Add, Edit, vedespaco1 x5 y4 w590 h25 ,%Nombre1%
Gui, vaa1:Add, Button , vtollee52 genra1 x200 y39 w200 h20 default, Cambiar nombre

; Generated using SmartGUI Creator 4.0
Gui, vaa1:Show, Center h70 w600, %nameofthisscript1% - %namexx7%


Return





enra1:
Gui, vaa1:Submit, NoHide



FileMove, %aacini%, %dir1%\%edespaco1% ,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%, 2

      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%

    Gui vaa1:Destroy   
	   
goto, readfileup1

 }


;comprobar si existe el archivo 
archivxcomp=%dir1%\%edespaco1%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}





IniWrite, %dir1%\%edespaco1%,%dhsfileini%, Operation, %numescini%
IniWrite, %aacini%,%dhsfileini%, Dirmov, %numescini%


    Gui vaa1:Destroy 
	
	
	
	
	
	
goto, readfileup1
Return





vaa1Guiclose:
    Gui vaa1:Destroy 
	
	
	
goto, readfileup1
Return



;35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********
;35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********35********























ednfolder:

    If alwotcome = 1
    {
        Gui, vaa21:+AlwaysOnTop
    }




Gui,  vaa21:Color,, %varpaventan13%
Gui,  vaa21:Font, c0x%varpaventan14% s11
Gui,  vaa21:Color ,%varpaventan13%

Gui, vaa21:-MinimizeBox
Gui, vaa21:Add, Edit, vedespaco12 x5 y4 w590 h25 ,%Nombre1%
Gui, vaa21:Add, Button ,  genra12 x200 y39 w200 h20 default, Cambiar nombre

; Generated using SmartGUI Creator 4.0
Gui, vaa21:Show, Center h70 w600, %nameofthisscript1% - %namexx7%


Return





enra12:
Gui, vaa21:Submit, NoHide



FileMovedir, %aacini%, %dir1%\%edespaco12% ,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%, 2


      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  
    Gui vaa1:Destroy   
	
	   
goto, readfileup1

 }


;comprobar si existe el archivo 
archivxcomp=%dir1%\%edespaco12%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}








IniWrite, %dir1%\%edespaco12%,%dhsfileini%, Operation, %numescini%
IniWrite, %aacini%,%dhsfileini%, Dirmov, %numescini%


    Gui vaa21:Destroy 
	
	

	
	
goto, readfileup1
Return





vaa21Guiclose:
    Gui vaa21:Destroy 
	
	

	
	
	
goto, readfileup1
Return








;38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********
;38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********38********



numerfil22:


EnvAdd, valoespnumvalor2, 1







if activadelnombre=0
		{ 	
nameofarchnum=%dir1%\%valoespnumvalor2%.%ext1%
			}
else
			{ 	
nameofarchnum=%dir1%\%valoespnumvalor2% %nombre1%
			}




if FileExist(nameofarchnum)
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto, ya existe el elemento: %nameofarchnum%, 2
	goto finaloperaty
}






if activadelnombre2=1
		{ 	
		FileAppend, %nombre1%=%nameofarchnum%`n , %dir1%\CoMe-Nu2-[Name]-.txt
			}
			




FileMove, %aacini%, %nameofarchnum%,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%, 2
       IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1
 }



;comprobar si existe el archivo 

if !FileExist(nameofarchnum)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %nameofarchnum%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}





IniWrite, %nameofarchnum%,%dhsfileini%, Operation, %numescini%
IniWrite, %aacini%,%dhsfileini%, Dirmov, %numescini%



goto, readfileup1
Return



;39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********
;39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********39********


numerfold22:



EnvAdd, valoespnumvalor2, 1






if activadelnombre=0
		{ 	
nameofarchnum2=%dir1%\%valoespnumvalor2%
			}
else
			{ 	
nameofarchnum2=%dir1%\%valoespnumvalor2% %nombre1%
			}




if FileExist(nameofarchnum2)
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto, ya existe el elemento: %nameofarchnum2%, 2
	goto finaloperaty
}



if activadelnombre2=1
		{ 	
		FileAppend, %nombre1%=%nameofarchnum2%`n , %aacini%\CoMe-Nu2-[Name]-.txt
		Sleep 500
			}
			








FileMoveDir, %aacini%, %nameofarchnum2%,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Elemento en conflicto: %aacini%, 2
       IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1
 }



;comprobar si existe el archivo 

if !FileExist(nameofarchnum2)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %nameofarchnum2%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}






IniWrite, %nameofarchnum2%,%dhsfileini%, Operation, %numescini%
IniWrite, %aacini%,%dhsfileini%, Dirmov, %numescini%


goto, readfileup1
Return





;40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********
;40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********40********







yzsinpoassfold:
MsgBox 0x40040, %nameofthisscript1% - Información, No existe una secuencia de acciones para una carpeta en esta operación., 2
 IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1
return











;44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********
;44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********44********


deletesubdir1:

; devido a el tipo de operacion en desahacer la operacion siempredesemboca en  en la opcion 20 de cualquier ramal
IniWrite, 3,%dhsfileini%, Proceso, a

 valorgene2=0


foldersave89=%dir1%\*.%ext1%

foldersave90=%dir1%\*.*
;Existen folders?
numberofdir=0
Loop, Files, %foldersave90%, D
{
numberofdir:=A_Index
}
if numberofdir=0
	goto nofolderin





;;;;Aviso se continua o no
namexxcon1:="namexx"DLsopDLs
namexxcon2=% %namexxcon1%
MsgBox 0x40024,  %nameofthisscript1% - Verificación, ¿Incluir subdirectorios?

IfMsgBox Yes, {


Loop, Files, %foldersave89%, FR
{
		EnvAdd, valorgene2,1
		
		
		varialamproce2:="acccfee"valorgene2
		
		%varialamproce2%=%A_LoopFileFullPath%



;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%
	}
goto nofolderin2
}


nofolderin:


Loop, Files, %foldersave89%, F
{
		EnvAdd, valorgene2,1
		
		
		varialamproce2:="acccfee"valorgene2
		
		%varialamproce2%=%A_LoopFileFullPath%



;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%
	}



nofolderin2:


 
 
 
 valorgene3=0
 numescini=0
 
 
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

 
 
 
 Loop
{
	


;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numescini*porcopert1
            setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%


 EnvAdd, numescini,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

	
	

	
 EnvAdd, valorgene3,1
 
 varialamproce3:="acccfee"valorgene3
 
 
 SplitPath, % %varialamproce3%, , , extborrar
 
 
  ;verificar que el elemento sea una carpeta
;el loop solo busca archivos
 
 if  %varialamproce3%=
 goto exittrab1
 
 
 if extborrar =%ext1%
 goto delte
 else 
 goto finislodelta

 
 
 delte:
 FileRecycle,% %varialamproce3%,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Elemento en conflicto: %varialamproce3%, 
 }
 
 
 
 finislodelta:
}
 
 
exittrab1:
 
 

; limpieza de la variable para uso posterior 

valodeleva=0

    Loop
    {

envadd, valodeleva, 1

		 varialamproce3:="acccfee"valodeleva
		
%varialamproce3%=


if valodeleva>=%valorgene3%
goto, endlodelme3
    }

endlodelme3:





 
 
  ;se agrega una operacion a deshacer para poder tener mas operaciones

			 ;se agrega una operacion a deshacer
EnvAdd, inideshn, 1

if inideshn>=201
inideshn=1


dhsfileini=%Deshacer2%%inideshn%.ini
	;eliminar ini de una operacion anteriror

FileDelete,%dhsfileini%




 
goto readfileup1

return





;45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********
;45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********45********








deletesubdir2:

valorgene1=0


foldersave88=%aacini%\*.*

Loop, Files, %foldersave88%, FD
	{
		EnvAdd, valorgene1,1
		
		
		varialamproce:="acccf"valorgene1
		
		%varialamproce%=%A_LoopFileFullPath%
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%
	}





numescini=0
valorgene2=0





Loop
	{



		EnvAdd, valorgene2,1



primefil:="acccf"valorgene2






if %primefil%=
goto exilopfin


SplitPath, %primefil%, nombrecod, dircod, extcod, name_no_extcod,



EnvAdd, numescini,1


;primer nombre del archivo u carpeta
IniWrite, % %primefil%,%dhsfileini%, Dirmov, %numescini% 


 ;verificar que el elemento sea una carpeta
 namevariaachec=% %primefil%
 FileGetAttrib, namecomunuso1, %namevariaachec%
 If InStr(namecomunuso1, "D")
        {
extcod=
}
 ;verificar que el elemento sea una carpeta

if extcod=
goto acc1mov
else
goto acc2mov




acc1mov:





dest1=%dir1%\%nombrecod%
FileMovedir,% %primefil%,%dest1%, 0
if ErrorLevel
{ 
	
namrrve6:=TimeFileName1()	
namrrve5=%dir1%\%name_no_extcod% %namrrve6%
FileMovedir,% %primefil%,%namrrve5%, 0
if ErrorLevel
{ 
IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto contejloop
 }
 
 
 ;comprobar si existe el archivo 
archivxcomp=%namrrve5%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, contejloop
} Else IfMsgBox No, {
goto exilopfin
}
}

 
 
 
  IniWrite, %namrrve5%,%dhsfileini%, Operation, %numescini% 
 goto contejloop
}
	
	
	;comprobar si existe el archivo 
archivxcomp=%dest1%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, contejloop
} Else IfMsgBox No, {
goto exilopfin
}
}

	
	
	
	
	
	

 IniWrite, %dest1%,%dhsfileini%, Operation, %numescini% 
goto contejloop




acc2mov:


dest2=%dir1%\%nombrecod%
FileMove,% %primefil%,%dest2%, 0
if ErrorLevel
{ 
	
	
namrrve6:=TimeFileName1()	
namrrve4=%dir1%\%name_no_extcod% %namrrve6% .%extcod%
FileMove,% %primefil%,%namrrve4%, 0
if ErrorLevel
{ 
IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto contejloop
 }
 
 
;comprobar si existe el archivo 

if !FileExist(namrrve4)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namrrve4%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, contejloop
} Else IfMsgBox No, {
goto exilopfin
}
}

 
 
 
 IniWrite, %namrrve4%,%dhsfileini%, Operation, %numescini% 
 goto contejloop
}



;comprobar si existe el archivo 

if !FileExist(dest2)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %dest2%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, contejloop
} Else IfMsgBox No, {
goto exilopfin
}
}





IniWrite, %dest2%,%dhsfileini%, Operation, %numescini% 


contejloop:




}
exilopfin:



nameofcaranal1:=aacini . "\*.*"
nameofcaranal2=0


Loop, Files, %nameofcaranal1%, FDR
{
nameofcaranal2:=A_LoopFileSize
}


if nameofcaranal2=0
{
FileRemoveDir, %aacini%,1

}





; limpieza de la variable para uso posterior 

valodeleva=0

    Loop
    {

envadd, valodeleva, 1

		xerte1:="acccf"valodeleva
		
%xerte1%=


if valodeleva>=%valorgene1%
goto, endlodelme2
    }

endlodelme2:



 ;se agrega una operacion a deshacer para poder tener mas operaciones

			 ;se agrega una operacion a deshacer
EnvAdd, inideshn, 1

if inideshn>=201
inideshn=1


dhsfileini=%Deshacer2%%inideshn%.ini
	;eliminar ini de una operacion anteriror

FileDelete,%dhsfileini%





goto, readfileup1
return

;46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********
;46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********46********

pachaget:
clipboard=%aacini%
goto, readfileup1
return

;47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********
;47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********47********







copisolotipo:

 valorgene5=0


foldersave93=%dir1%\*.%ext1%


Loop, Files, %foldersave93%, F
	{
		EnvAdd, valorgene5,1
		
		
		varialamproce5:="acccfee7"valorgene5
		
		%varialamproce5%=%A_LoopFileFullPath%


;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%

	}


;restore para evitar error al deshacer
numescini=0

 valorgene7=0
 
 ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
numesciniparaporcenta=0
porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

 
 
 
 Loop
{
	
	
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
	
	
	
	
 EnvAdd, valorgene7,1
 

 
 varialamproce7:="acccfee7"valorgene7
 
 SplitPath, % %varialamproce7%, nombrecodes, dircodes, extcodes, name_no_extcodes,


 if  %varialamproce7%=
 goto varialamproce7
 
  if  %varialamproce7%=ERROR
 goto varialamproce7



 ;verificar que el elemento sea una carpeta
;El loop solo busca archivos

;loop ya busca la ext necesaria

copfilecopi:
;evitar error al deshacer
  EnvAdd, numescini,1
  
FileCopy, % %varialamproce7%, %carpetafinaloper%\%nombrecodes%,0
if ErrorLevel
{ 
contnTFN1:=TimeFileName1()	


NAMEFILE=%carpetafinaloper%\%name_no_extcodes% %contnTFN1% .%extcodes%

	FileCopy, % %varialamproce7%, %NAMEFILE%,0
if ErrorLevel
{ 
    IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	goto finisloopcoext
 }



;comprobar si existe el archivo 

if !FileExist(NAMEFILE)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %NAMEFILE%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, finisloopcoext
} Else IfMsgBox No, {
goto varialamproce7
}
}




  IniWrite, %NAMEFILE%,%dhsfileini%, Operation, %numescini%
IniWrite, % %varialamproce7%,%dhsfileini%, Dirmov, %numescini%
goto finisloopcoext
 
 
}


;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%nombrecodes%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, finisloopcoext
} Else IfMsgBox No, {
goto varialamproce7
}
}






 IniWrite, %carpetafinaloper%\%nombrecodes%,%dhsfileini%, Operation, %numescini%
IniWrite, % %varialamproce7%,%dhsfileini%, Dirmov, %numescini%


finisloopcoext:
}

varialamproce7:


; limpieza de la variable para uso posterior 

valodeleva7=0

    Loop
    {

envadd, valodeleva7, 1

		xerte7:="acccfee7"valodeleva7
		
%xerte7%=


if valodeleva7>=%valorgene7%
goto, endlodelme7
    }

endlodelme7:





 ;se agrega una operacion a deshacer para poder tener mas operaciones

			 ;se agrega una operacion a deshacer
EnvAdd, inideshn, 1

if inideshn>=201
inideshn=1


dhsfileini=%Deshacer2%%inideshn%.ini
	;eliminar ini de una operacion anteriror

FileDelete,%dhsfileini%





goto readfileup1
return


;48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********
;48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********48********


movetofilesototipe:


 valorgene9=0


foldersave99=%dir1%\*.%ext1%


Loop, Files, %foldersave99%, F
	{
		EnvAdd, valorgene9,1
		
		
		varialamproce9:="acccfee9"valorgene9
		
		%varialamproce9%=%A_LoopFileFullPath%

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%
	}


;restore para evitar error al deshacer
numescini=0

 valorgene9=0
 
 
 
  ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
numesciniparaporcenta=0
porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

 Loop
{
	
		
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%


nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%

EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
	

 EnvAdd, valorgene9,1
 

 
 varialamproce9:="acccfee9"valorgene9
 
 SplitPath, % %varialamproce9%, nombrecodes, dircodes, extcodes, name_no_extcodes,

 
 if  %varialamproce9%=
 goto varialamproce9
 
  if  %varialamproce9%=ERROR
 goto varialamproce9

 ;verificar que el elemento sea una carpeta
;El loop solo busca archivos

;sin nesesidad de verificar la ext ya fue echo en el loop




copfilecopi9:
;evitar error al deshacer
  EnvAdd, numescini,1
  
FileMove, % %varialamproce9%, %carpetafinaloper%\%nombrecodes%,0
if ErrorLevel
{ 
contnTFN1:=TimeFileName1()	


NAMEFILE=%carpetafinaloper%\%name_no_extcodes% %contnTFN1% .%extcodes%

	FileMove, % %varialamproce9%, %NAMEFILE%,0
if ErrorLevel
{ 
    IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	goto finisloopcoext9
 }
 
 
 
 
 ;comprobar si existe el archivo 
archivxcomp=%NAMEFILE%,%dhsfileini%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, finisloopcoext9
} Else IfMsgBox No, {
goto varialamproce9
}
}
 
 
 
 
  IniWrite, %NAMEFILE%,%dhsfileini%, Operation, %numescini%
IniWrite, % %varialamproce9%,%dhsfileini%, Dirmov, %numescini%
goto finisloopcoext9
 
 
}




 ;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%nombrecodes%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, finisloopcoext9
} Else IfMsgBox No, {
goto varialamproce9
}
}
 
 






 IniWrite, %carpetafinaloper%\%nombrecodes%,%dhsfileini%, Operation, %numescini%
IniWrite, % %varialamproce9%,%dhsfileini%, Dirmov, %numescini%


finisloopcoext9:
}

varialamproce9:


; limpieza de la variable para uso posterior 

valodeleva9=0

    Loop
    {

envadd, valodeleva9, 1

		xerte9:="acccfee9"valodeleva9
		
%xerte9%=


if valodeleva9>=%valorgene9%
goto, endlodelme9
    }

endlodelme9:





 ;se agrega una operacion a deshacer para poder tener mas operaciones

			 ;se agrega una operacion a deshacer
EnvAdd, inideshn, 1

if inideshn>=201
inideshn=1


dhsfileini=%Deshacer2%%inideshn%.ini
	;eliminar ini de una operacion anteriror

FileDelete,%dhsfileini%





goto readfileup1
return



;49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********
;49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********49********

copisolocarp:

 valorgene12=0


foldersave12=%dir1%\*.*


Loop, Files, %foldersave12%, D
	{
		EnvAdd, valorgene12,1
		
		
		varialamproce12:="acccfee12"valorgene12
		
		%varialamproce12%=%A_LoopFileFullPath%


;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%
	}



;restore para evitar error al deshacer
numescini=0

 valorgene12=0
 
  ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
numesciniparaporcenta=0
porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

 
 
 
 
 
 
 
 
 Loop
{
	
	
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
	
	
	
	
 EnvAdd, valorgene12,1
 

 
 varialamproce12:="acccfee12"valorgene12
 
 SplitPath, % %varialamproce12%, nombrecodes, dircodes, extcodes, name_no_extcodes,

 
 if  %varialamproce12%=
 goto varialamproce12
 
  if  %varialamproce12%=ERROR
 goto varialamproce12

 ;verificar que el elemento sea una carpeta
;El loop solo busca carpetas


 ;verificar que el elemento sea una carpeta
 namevariaachec=% %varialamproce12%
 FileGetAttrib, namecomunuso1, %namevariaachec%
 If InStr(namecomunuso1, "D")
        {
extcodes=
}
 ;verificar que el elemento sea una carpeta




 if extcodes =
 goto copfilecopi12
 else 
 goto finisloopcoext12




copfilecopi12:
;evitar error al deshacer
  EnvAdd, numescini,1
  
FileCopydir, % %varialamproce12%, %carpetafinaloper%\%nombrecodes%,0
if ErrorLevel
{ 
	
contnTFN1:=TimeFileName1()	
NAMEFILE=%carpetafinaloper%\%nombrecodes% %contnTFN1%

	FileCopydir, % %varialamproce12%, %NAMEFILE%,0
if ErrorLevel
{ 
    IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	goto finisloopcoext12
	
 }
 
 
 
 
 
;comprobar si existe el archivo 

if !FileExist(NAMEFILE)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %NAMEFILE%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, finisloopcoext12
} Else IfMsgBox No, {
goto varialamproce12
}
}
 
 
 
 
 
 
  IniWrite, %NAMEFILE%,%dhsfileini%, Operation, %numescini%
IniWrite, % %varialamproce12%,%dhsfileini%, Dirmov, %numescini%
goto finisloopcoext12
 
 
 
 
 ;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%nombrecodes%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, finisloopcoext12
} Else IfMsgBox No, {
goto varialamproce12
}
}
 
 
 
 
 
}
 IniWrite, %carpetafinaloper%\%nombrecodes%,%dhsfileini%, Operation, %numescini%
IniWrite, % %varialamproce12%,%dhsfileini%, Dirmov, %numescini%


finisloopcoext12:
}

varialamproce12:


; limpieza de la variable para uso posterior 

valodeleva12=0

    Loop
    {

envadd, valodeleva12, 1

		xerte12:="acccfee12"valodeleva12
		
%xerte12%=


if valodeleva12>=%valorgene12%
goto, endlodelme12
    }

endlodelme12:





 ;se agrega una operacion a deshacer para poder tener mas operaciones

			 ;se agrega una operacion a deshacer
EnvAdd, inideshn, 1

if inideshn>=201
inideshn=1


dhsfileini=%Deshacer2%%inideshn%.ini
	;eliminar ini de una operacion anteriror

FileDelete,%dhsfileini%





goto readfileup1
return




;50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********
;50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********50********




movetoonlyfold:



 valorgene13=0


foldersave13=%dir1%\*.*


Loop, Files, %foldersave13%, D
	{
		EnvAdd, valorgene13,1
		
		
		varialamproce13:="acccfee13"valorgene13
		
		%varialamproce13%=%A_LoopFileFullPath%


;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%

	}


;restore para evitar error al deshacer
numescini=0

 valorgene13=0
 
  ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
numesciniparaporcenta=0
porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

 
 
 
 
 Loop
{
	

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
	
	
	
	
	
	
	
 EnvAdd, valorgene13,1
 

 
 varialamproce13:="acccfee13"valorgene13
 
 SplitPath, % %varialamproce13%, nombrecodes, dircodes, extcodes, name_no_extcodes,

 
 if  %varialamproce13%=
 goto varialamproce13
 
  if  %varialamproce13%=ERROR
 goto varialamproce13

 ;verificar que el elemento sea una carpeta
 namevariaachec=% %varialamproce13%
 FileGetAttrib, namecomunuso1, %namevariaachec%
 If InStr(namecomunuso1, "D")
        {
extcodes=
}
 ;verificar que el elemento sea una carpeta

 if extcodes =
 goto copfilecopi13
 else 
 goto finisloopcoext13




copfilecopi13:
;evitar error al deshacer
  EnvAdd, numescini,1
  
FileMoveDir, % %varialamproce13%, %carpetafinaloper%\%nombrecodes%,0
if ErrorLevel
{ 
contnTFN1:=TimeFileName1()	
NAMEFILE=%carpetafinaloper%\%nombrecodes% %contnTFN1%

	FileMoveDir, % %varialamproce13%, %NAMEFILE%,0
if ErrorLevel
{ 
    IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	goto finisloopcoext13
 }
 
 
 
 ;comprobar si existe el archivo 

if !FileExist(NAMEFILE)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %NAMEFILE%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, finisloopcoext13
} Else IfMsgBox No, {
goto varialamproce13
}
}

 
 
 
 
 
 
 
  IniWrite, %NAMEFILE%,%dhsfileini%, Operation, %numescini%
IniWrite, % %varialamproce13%,%dhsfileini%, Dirmov, %numescini%
goto finisloopcoext13
 
 
}



 ;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%nombrecodes%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, finisloopcoext13
} Else IfMsgBox No, {
goto varialamproce13
}
}

 





 IniWrite, %carpetafinaloper%\%nombrecodes%,%dhsfileini%, Operation, %numescini%
IniWrite, % %varialamproce13%,%dhsfileini%, Dirmov, %numescini%


finisloopcoext13:
}

varialamproce13:


; limpieza de la variable para uso posterior 

valodeleva13=0

    Loop
    {

envadd, valodeleva13, 1

		xerte13:="acccfee13"valodeleva13
		
%xerte13%=


if valodeleva13>=%valorgene13%
goto, endlodelme13
    }

endlodelme13:





 ;se agrega una operacion a deshacer para poder tener mas operaciones

			 ;se agrega una operacion a deshacer
EnvAdd, inideshn, 1

if inideshn>=201
inideshn=1


dhsfileini=%Deshacer2%%inideshn%.ini
	;eliminar ini de una operacion anteriror

FileDelete,%dhsfileini%





goto readfileup1
return



;51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********
;51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********51********


deleteall2:


FORLDERESP=%dir1%

goto especaccc1

return

;52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********
;52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********52********



deleteall1:


FORLDERESP=%aacini%


especaccc1:
 valorgene14=0


foldersave14=%FORLDERESP%\*.*


Loop, Files, %foldersave14%, FD
	{
		EnvAdd, valorgene14,1
		
		
		varialamproce14:="acccfee14"valorgene14
		
		%varialamproce14%=%A_LoopFileFullPath%


;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%


	}


;restore para evitar error al deshacer
numescini=0

 valorgene14=0
 
  
 ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
numesciniparaporcenta=0
porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

 
 
 
 Loop
{
	
		
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
	
	
	
	
	
	
	
	
 EnvAdd, valorgene14,1
 

 
 varialamproce14:="acccfee14"valorgene14
 

 SplitPath, % %varialamproce14%, nombrecodes, dircodes, extcodes, name_no_extcodes,

 
 if  %varialamproce14%=
 goto varialamproce14
 
  if  %varialamproce14%=ERROR
 goto varialamproce14


;ignorararchivos de personalisacion de una carpeta
 if extcodes =ico
goto finisloopcoext14

 if extcodes =ini
goto finisloopcoext14
;ignorararchivos de personalisacion de una carpeta


 ;verificar que el elemento sea una carpeta
;El loop solo busca archivos


 if extcodes =
 goto fcfolderdelete14
 else 
 goto cfiledelete14




fcfolderdelete14:


FileRemoveDir,  % %varialamproce14%,1
if ErrorLevel
{ 
	elmeenv=% %varialamproce14%,
MsgBox 0x40010, Info, Elemento ocupado o no está en la ruta especificada:  %elmeenv%. 
} 
goto finisloopcoext14

cfiledelete14:

FileDelete, % %varialamproce14%
if ErrorLevel
{ 
	elmeenv=% %varialamproce14%
MsgBox 0x40010, Info, Elemento ocupado o no está en la ruta especificada:  %elmeenv%. 
} 

finisloopcoext14:
}

varialamproce14:


; limpieza de la variable para uso posterior 

valodeleva14=0

    Loop
    {

envadd, valodeleva14, 1

		xerte14:="acccfee14"valodeleva14
		
%xerte14%=


if valodeleva14>=%valorgene14%
goto, endlodelme14
    }

endlodelme14:



goto readfileup1
return



;53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********
;53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********53********


openexe:


if extcarpope!=exe
{
MsgBox 0x40040, %nameofthisscript1% - Información, Sin aplicación  seleccionada. ,2
goto readfileup1
}

Run, %carpetafinaloper% "%aacini%", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando no pudo ser lanzado.`n Programa: %carpetafinaloper%`n Archivo: %aacini%  
goto readfileup1
return

;54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********
;54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********54********
openexe2:




if extcarpope!=exe
{
MsgBox 0x40040, %nameofthisscript1% - Información, Sin aplicación  seleccionada. ,2
goto readfileup1
}

Run, %carpetafinaloper% "%aacini%", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando no pudo ser lanzado.`n Programa: %carpetafinaloper%`n Archivo: %aacini%  



goto readfileup1
return






;55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********
;55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********55********






movercantifiles:

if movercantidadv>=%solomelvalor%
goto, finaloperaty

FileMove, %aacini%, %carpetafinaloper%\%name_no_ext1%.%ext1%,0

if ErrorLevel
{ 
   if autonamecom=1
   goto, renommovercan1
   else
   { 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El elemento ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
          FileMove, %aacini%, %carpetafinaloper%\%name_no_ext1%.%ext1%,1
		  
        
goto, opecommovcan1


		  Return
          } 
              Else IfMsgBox No, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  
goto, readfileup1
              Return
              }
}
  
} 
opecommovcan1:



;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%name_no_ext1%.%ext1%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}




;paraMover cantidad
EnvAdd, movercantidadv, 1

      IniWrite, %carpetafinaloper%\%name_no_ext1%.%ext1%,%dhsfileini%, Operation, %numescini%

IniWrite, %dir1%,%dhsfileini%, Dirmov, %numescini%

goto, readfileup1



return




renommovercan1:
contnTFN1:=TimeFileName1()	


namearvhmove=%carpetafinaloper%\%name_no_ext1% %contnTFN1% .%ext1%


	FileMove, %aacini%, %namearvhmove%,0
if ErrorLevel
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación,El elemento ya existe  ¿Desea sobrescribir? 
IfMsgBox Yes, {
	FileMove, %aacini%, %namearvhmove%,1

goto, opecommovcan2

		  Return
          } 
              Else IfMsgBox No, {
			       IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1
              Return
              }
}
  opecommovcan2:
  
  
  ;comprobar si existe el archivo 

if !FileExist(namearvhmove)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}


  
  
  ;paraMover cantidad
EnvAdd, movercantidadv, 1
  
  
        IniWrite, %namearvhmove%,%dhsfileini%, Operation, %numescini%
  
   IniWrite, %dir1%,%dhsfileini%, Dirmov, %numescini%
  
goto, readfileup1

return




;56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********
;56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********56********









movercantifolders:



if movercantidadv>=%solomelvalor%
goto, finaloperaty



	FileMoveDir, %aacini%, %carpetafinaloper%\%nombre1%,0
if ErrorLevel
{ 
	if autonamecom=1
   goto, renommovercan2
   else
   { 
MsgBox 0x40024, %nameofthisscript1% - Verificación,El elemento ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
          FileMoveDir, %aacini%, %carpetafinaloper%\%nombre1%,1

goto, renommovercan3

		Return
          } 
              Else IfMsgBox No, {
			  			 IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
			 
goto, readfileup1

              Return
              }
}
} 

renommovercan3:




;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%nombre1%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}










;paraMover cantidad
EnvAdd, movercantidadv, 1



			  			 IniWrite, %carpetafinaloper%\%nombre1%,%dhsfileini%, Operation, %numescini%
IniWrite, %dir1%,%dhsfileini%, Dirmov, %numescini%

goto, readfileup1


return






renommovercan2:

contnTFN1:=TimeFileName1()	

namedirecnue=%carpetafinaloper%\%nombre1% %contnTFN1%

FileMoveDir, %aacini%,%namedirecnue%,0
if ErrorLevel
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación,El elemento ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
          FileMoveDir, %aacini%, %namedirecnue%,1
		 
goto, renommovercan5
		  	
		  Return
          } 
              Else IfMsgBox No, {
			  
			 			 IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto, readfileup1

              Return
              }
}


renommovercan5:



;comprobar si existe el archivo 

if !FileExist(namedirecnue)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namedirecnue%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}






;paraMover cantidad
EnvAdd, movercantidadv, 1

			 			 IniWrite,  %namedirecnue%,%dhsfileini%, Operation, %numescini%

IniWrite, %dir1%,%dhsfileini%, Dirmov, %numescini%


goto, readfileup1


return





;37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********
;37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********37********


deletesubf2:

;folder a identificar y movercarpetas
;*********
Entradafolder=%dir1%\*.*
;*********



goto enterdeletesubf2


return




;57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********
;57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********57********

existecarpeta:




;folder a identificar y movercarpetas
;*********
Entradafolder=%aacini%\*.*
;*********



enterdeletesubf2:



;paralos registros en ini
numescini=0
folderdatosguardados:=carpetafinaloper


numepalopmosex=0

Loop, Files, %Entradafolder%, D
	{
		EnvAdd, numepalopmosex,1
		
		
		conelemsiexiscar:="varelemsiexiscar"numepalopmosex
		
		%conelemsiexiscar%=%A_LoopFileFullPath%

varlimpid1=%A_index%
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%
	}



 ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
 ;VAAMODIFF__Numero de lementos totales
numesciniparaporcenta=0
 ;VAAMODIFF__Numero de lementos totales
 
porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %




numepalopmosex=0
 Loop
{
	

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
	



 EnvAdd, numepalopmosex,1
 
 
 conelemsiexiscar2:="varelemsiexiscar"numepalopmosex
 
 carencuestionifexis=% %conelemsiexiscar2%
 

 
 SplitPath, carencuestionifexis, nameifexist, dirifexist, extifexist, name_no_extifexist

 
 if  carencuestionifexis=
break
 
  if  carencuestionifexis=ERROR
break


 if extifexist !=
Continue
;fin de este loop y comienza uno nuevo


Rutaenotracarpeta=%folderdatosguardados%\%nameifexist%



;Limpiezade variables uso anterior
variliexisrem=0
	Loop
	{
		EnvAdd, variliexisrem,1
		
		
		folderexaminatCom33:="folderexaminatData"variliexisrem
		
		if  %folderexaminatCom33%=
		Break
		
		if  %folderexaminatCom33%=ERROR
		Break
		
		%folderexaminatCom33%=
		

	}





if FileExist(Rutaenotracarpeta)
{
	
folderexaminat=%carencuestionifexis%\*.*

genericvar1=0
genericvar2=0
Loop, Files, %folderexaminat%, FD
	{
		EnvAdd, genericvar1,1
		
		
		folderexaminatCom:="folderexaminatData"genericvar1
		
		%folderexaminatCom%=%A_LoopFileFullPath%
		
		varlimpid2=%A_index%
	}




 Loop
{
	

 EnvAdd, genericvar2,1
 
 
 folderexaminatCom2:="folderexaminatData"genericvar2
 
 folderexaminatrealData=% %folderexaminatCom2%
 
 
 SplitPath, folderexaminatrealData, nameonlyforf, dironlyforf, extonlyforf, name_no_extonlyforf,

 
 if  folderexaminatrealData=
goto finislobtandfolder
 
  if  folderexaminatrealData=ERROR
goto finislobtandfolder

;paralos registros en ini
EnvAdd, numescini,1

FileGetAttrib, valoarcorfold33, %folderexaminatrealData%

If InStr(valoarcorfold33, "D")
        {
Goto, movefolderifexist
}
else
        {
			Goto, movefileifexistfold

}





movefolderifexist:

if sobresc1=1
{
FileMoveDir, %folderexaminatrealData%, %Rutaenotracarpeta%\%nameonlyforf%, 1
if ErrorLevel
{ 
	goto errorexisremp1
}
}
else
{
FileMoveDir, %folderexaminatrealData%, %Rutaenotracarpeta%\%nameonlyforf%, 0
if ErrorLevel
{ 
		goto errorexisremp1
}
}

goto errorexisremp2




errorexisremp1:
	
vardustempo:=TimeFileName1()	

namearvhmove77=%nameonlyforf% %vardustempo%


FileMoveDir, %folderexaminatrealData%, %Rutaenotracarpeta%\%namearvhmove77%, 0
if ErrorLevel
{ 
	MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto, al moverlo de  %folderexaminatrealData%     a     %Rutaenotracarpeta%\%namearvhmove77%
	      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
		  Continue
}


IniWrite, %Rutaenotracarpeta%\%namearvhmove77%,%dhsfileini%, Operation, %numescini%
IniWrite, %folderexaminatrealData%,%dhsfileini%, Dirmov, %numescini%


;comprobar si existe el archivo 
archivxcomp=%Rutaenotracarpeta%\%namearvhmove77%
if not FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Advertencia, Elemento en conflicto:  %archivxcomp%  ¿Continuar con la operación?
 IfMsgBox No, {
goto salidadofloppss1
}
}
continue
 




errorexisremp2:


 IniWrite, %Rutaenotracarpeta%\%nameonlyforf%,%dhsfileini%, Operation, %numescini%
IniWrite, %folderexaminatrealData%,%dhsfileini%, Dirmov, %numescini%

;;;;ININININI
; IniWrite, Destino,%dhsfileini%, Operation, %numescini%
;IniWrite, origen,%dhsfileini%, Dirmov, %numescini%


;comprobar si existe el archivo 
archivxcomp=%Rutaenotracarpeta%\%nameonlyforf%
if not FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Advertencia, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
 IfMsgBox No, {
goto salidadofloppss1
}
}


Continue






movefileifexistfold:
if sobresc1=1
{
FileMove, %folderexaminatrealData%,%Rutaenotracarpeta%\%nameonlyforf%, 1
if ErrorLevel
{ 
	goto errorexisremp3
}
}
else
{
FileMove, %folderexaminatrealData%,%Rutaenotracarpeta%\%nameonlyforf%, 0
if ErrorLevel
{ 
		goto errorexisremp3
}
}

goto errorexisremp4



errorexisremp3:

vardustempo:=TimeFileName1()	

namearvhmove77=%name_no_extonlyforf% %vardustempo% .%extonlyforf%


FileMove, %folderexaminatrealData%,%Rutaenotracarpeta%\%namearvhmove77%, 0
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto, al moverlo de  %folderexaminatrealData%    a     %Rutaenotracarpeta%\%namearvhmove77%
	continue
}


IniWrite, %Rutaenotracarpeta%\%namearvhmove77%,%dhsfileini%, Operation, %numescini%
IniWrite, %folderexaminatrealData%,%dhsfileini%, Dirmov, %numescini%


;comprobar si existe el archivo 
archivxcomp=%Rutaenotracarpeta%\%namearvhmove77%
if  not FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
 IfMsgBox No, {
goto salidadofloppss1
}
}



continue

 
 
 
 errorexisremp4:
 
 
 
IniWrite, %Rutaenotracarpeta%\%nameonlyforf%,%dhsfileini%, Operation, %numescini%
IniWrite, %folderexaminatrealData%,%dhsfileini%, Dirmov, %numescini%



;comprobar si existe el archivo 
archivxcomp=%Rutaenotracarpeta%\%nameonlyforf%
if not FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
 IfMsgBox No, {
goto salidadofloppss1
}
}

 
continue





finislobtandfolder:


setvaxxm1=0
;eliminbar carpetas al finalizar
elmesetvaxxm1:=carencuestionifexis . "\*.*"
Loop, Files, %elmesetvaxxm1%, FDR
{
setvaxxm1:=A_LoopFileSize
}




if setvaxxm1=0
FileRemoveDir, %carencuestionifexis%

break
}


}

}

salidadofloppss1:

;limpieza

numepalopmosex=0
	Loop
	{
		EnvAdd, numepalopmosex,1
		
		
		conelemsiexiscar:="varelemsiexiscar"numepalopmosex
		
		%conelemsiexiscar%=


if numepalopmosex>=%varlimpid1%
	break
	}

genericvar1=0
	Loop
	{
		EnvAdd, genericvar1,1
		
		
		folderexaminatCom:="folderexaminatData"genericvar1
		
		%folderexaminatCom%=
		
		if genericvar1>=%varlimpid2%
			break
	}
	
	
goto	finaloperaty
	
return


 
;58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********
;58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********

sustnamwfiles:

if searchstr1=
{
	namenotstr := StrReplace(name_no_ext1, A_Space, remplcstr1)
}
else
{
namenotstr := StrReplace(name_no_ext1, searchstr1, remplcstr1)
}

if namenotstr=
	namenotstr=No name

newnamestrremp1=%dir1%\%namenotstr%.%ext1%

FileMove, %aacini%, %newnamestrremp1%,0
if ErrorLevel
{ 
contnTFN1:=TimeFileName1()	
namearvhmove=%dir1%\%namenotstr% %contnTFN1%.%ext1%

	FileMove, %aacini%, %namearvhmove%,0
if ErrorLevel
{ 
	MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %namearvhmove%  La operación se detendra.
	      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto finaloperaty
}


IniWrite, %namearvhmove% ,%dhsfileini%, Operation, %numescini%
IniWrite, %aacini%,%dhsfileini%, Dirmov, %numescini%


	  ;comprobar si existe el archivo 
if !FileExist(namearvhmove)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}





}

IniWrite, %newnamestrremp1% ,%dhsfileini%, Operation, %numescini%
IniWrite, %aacini%,%dhsfileini%, Dirmov, %numescini%


	  ;comprobar si existe el archivo 
if !FileExist(newnamestrremp1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}
	
	

goto, readfileup1
return







;59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********
;59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********



sustnamwfolder:


if searchstr1=
{
	namenotstr := StrReplace(nombre1, A_Space, remplcstr1)
}
else
{
namenotstr := StrReplace(nombre1, searchstr1, remplcstr1)
}


if namenotstr=
	namenotstr=No name


newnamestrremp1=%dir1%\%namenotstr%.%ext1%

FileMoveDir, %aacini%, %newnamestrremp1%,0
if ErrorLevel
{ 
contnTFN1:=TimeFileName1()	
namearvhmove=%dir1%\%namenotstr% %contnTFN1%.%ext1%

	FileMoveDir, %aacini%, %namearvhmove%,0
if ErrorLevel
{ 
	MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %namearvhmove%  La operación se detendra.
	      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto finaloperaty
}


IniWrite, %namearvhmove% ,%dhsfileini%, Operation, %numescini%
IniWrite, %aacini%,%dhsfileini%, Dirmov, %numescini%


	  ;comprobar si existe el archivo 
if !FileExist(namearvhmove)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}





}

IniWrite, %newnamestrremp1% ,%dhsfileini%, Operation, %numescini%
IniWrite, %aacini%,%dhsfileini%, Dirmov, %numescini%


	  ;comprobar si existe el archivo 
if !FileExist(newnamestrremp1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, readfileup1
} Else IfMsgBox No, {
goto finaloperaty
}
}
	
	

goto, readfileup1
return




;60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********
;60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********60********



ganizartipo2:


Folderstofolder=%dir1%\Folders
Entradafolder=%dir1%\*.*
carpcreacext1=%dir1%

goto entradaganizartipo2
return



;58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********
;58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********58********


ganizartipo:



Folderstofolder=%aacini%\Folders
Entradafolder=%aacini%\*.*
carpcreacext1=%aacini%


entradaganizartipo2:
;paralos registros en ini
numescini=0


numepalopmosex3=0

Loop, Files, %Entradafolder%, FD
	{
		EnvAdd, numepalopmosex3,1
		
		
		conetipomov:="moverubtipo"numepalopmosex3
		
		%conetipomov%=%A_LoopFileFullPath%

varlimpid4=%A_index%
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%
	}


 ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
 ;VAAMODIFF__Numero de lementos totales
numesciniparaporcenta=0
 ;VAAMODIFF__Numero de lementos totales
 
porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %




numdelemmov1=0
 Loop
{
	

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
	
;paralos registros en ini
EnvAdd, numescini,1

 EnvAdd, numdelemmov1,1
 
 
 conetipomov2:="moverubtipo"numdelemmov1
 
 conetipomov4=% %conetipomov2%
 

 
 SplitPath, conetipomov4, nameagrupar, diragrupar, extagrupar, name_no_exagrupar

 
 if  conetipomov4=
break
 
  if  conetipomov4=ERROR
break



FileGetAttrib, atrielemagrupar, %conetipomov4%

If InStr(atrielemagrupar, "D")
        {
Goto, movefoldersagrupar
}
else
        {
			Goto, movefilesagrupar

}


movefoldersagrupar:


if !FileExist(Folderstofolder)
{
FileCreateDir, %Folderstofolder%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %Folderstofolder%  La operación se detendra.
goto finaloperaty
}
}





FileMoveDir, %conetipomov4%, %Folderstofolder%\%nameagrupar%, 0
if ErrorLevel
{ 
	
vardustempo:=TimeFileName1()	

namearvhmove77=%nameagrupar% %vardustempo%


FileMoveDir, %conetipomov4%, %Folderstofolder%\%namearvhmove77%, 0
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto, al moverlo de  %conetipomov4%   a     %Folderstofolder%\%namearvhmove77%
	      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
		  Continue
}

IniWrite, %Folderstofolder%\%namearvhmove77%,%dhsfileini%, Operation, %numescini%
IniWrite, %conetipomov4%,%dhsfileini%, Dirmov, %numescini%


;comprobar si existe el archivo 
archivxcomp=%Folderstofolder%\%namearvhmove77%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
 IfMsgBox No, {
goto salidadofloppss2
}
}



continue
 }



 IniWrite, %Folderstofolder%\%nameagrupar%,%dhsfileini%, Operation, %numescini%
IniWrite, %conetipomov4%,%dhsfileini%, Dirmov, %numescini%

;;;;ININININI
; IniWrite, Destino,%dhsfileini%, Operation, %numescini%
;IniWrite, origen,%dhsfileini%, Dirmov, %numescini%



;comprobar si existe el archivo 
archivxcomp=%Folderstofolder%\%nameagrupar%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
 IfMsgBox No, {
goto salidadofloppss2
}
}




Continue

movefilesagrupar:


folderextenc=%carpcreacext1%\%extagrupar%
if !FileExist(folderextenc)
FileCreateDir, %folderextenc%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %folderextenc%   La operación se detendra.
goto finaloperaty
}




FileMove, %conetipomov4%,%folderextenc%\%nameagrupar%, 0
if ErrorLevel
{ 
vardustempo:=TimeFileName1()	

namearvhmove77=%name_no_exagrupar% %vardustempo% .%extagrupar%


FileMove, %conetipomov4%,%folderextenc%\%namearvhmove77%, 0
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto, al moverlo de   %conetipomov4%    a     %folderextenc%\%namearvhmove77%
	continue
}


 IniWrite, %folderextenc%\%namearvhmove77%,%dhsfileini%, Operation, %numescini%
IniWrite, %conetipomov4%,%dhsfileini%, Dirmov, %numescini%


;comprobar si existe el archivo 
archivxcomp= %folderextenc%\%namearvhmove77%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
 IfMsgBox No, {
goto salidadofloppss2
}
}

continue

 }
 
 
 IniWrite, %folderextenc%\%nameagrupar%,%dhsfileini%, Operation, %numescini%
IniWrite, %conetipomov4%,%dhsfileini%, Dirmov, %numescini%
 
 
 ;comprobar si existe el archivo 
archivxcomp=%folderextenc%\%nameagrupar%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
 IfMsgBox No, {
goto salidadofloppss2
}
 }
 
 
continue


}

salidadofloppss2:

;Limpieza
numepalopmosex3=0
	Loop
	{
		EnvAdd, numepalopmosex3,1
		
		conetipomov:="moverubtipo"numepalopmosex3
		
		%conetipomov%=

if  numepalopmosex3 >=%varlimpid4%
break
	}




goto	finaloperaty
	
return





;59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********
;59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********59********



;loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********
;loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********


loopcarpetasyarchivos:
;paralos registros en ini
numescini=0

Entradafolderarchivosyfolders=%aacini%\*.*





vararchiycarpe=0
Loop, Files, %Entradafolderarchivosyfolders%, FD
	{
		EnvAdd, vararchiycarpe,1
		
		
		conarchycarp:="carpeofileloop"vararchiycarpe
		
		%conarchycarp%=%A_LoopFileFullPath%

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%
	}


 ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
 ;VAAMODIFF__Numero de lementos totales
numesciniparaporcenta=0
 ;VAAMODIFF__Numero de lementos totales
 
porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

vararchiycarpe2=0

	
archiveorfileselecc:
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
	
;paralos registros en ini
EnvAdd, numescini,1

 EnvAdd, vararchiycarpe2,1
 
 
 conarchycarp2:="carpeofileloop"vararchiycarpe2
 
 conarchycarp4=% %conarchycarp2%
 

 
 SplitPath, conarchycarp4, nameoffileorfolder1, diroffileorfolder1, extoffileorfolder1, name_no_exoffileorfolder1

 
 if  conarchycarp4=
goto finoperafilesandfolders
 
  if  conarchycarp4=ERROR
goto finoperafilesandfolders



FileGetAttrib, atriboffileorfolder, %conarchycarp4%

If InStr(atriboffileorfolder, "D")
        {
Goto, ramalfilesandfoldersfolders
}
else
        {
			Goto, ramalfilesandfoldersfiles

}
return





ramalfilesandfoldersfolders:

; If  DLsopDLs=
;else
; If  DLsopDLs=


return


ramalfilesandfoldersfiles:
; If  DLsopDLs=
;else
; If  DLsopDLs=


return



















finoperafilesandfolders:

;Limpieza

vararchiycarpe6=0
	Loop
	{
		EnvAdd, vararchiycarpe6,1
		
		
		conarchycarp:="carpeofileloop"vararchiycarpe6
		
		%conarchycarp%=

if vararchiycarpe6>%vararchiycarpe%
	break
	}

goto finaloperaty

return

;loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********
;loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********loopcarpetasyarchivos********



;looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********
;looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********


looponlyarchivos:
;paralos registros en ini
numescini=0

Entradalooponlyarchivos=%aacini%\*.*






varonlyfiles=0
Loop, Files, %Entradalooponlyarchivos%, F
	{
		EnvAdd, varonlyfiles,1
		
		
		cononlyfiles:="onlyfileloop"varonlyfiles
		
		%cononlyfiles%=%A_LoopFileFullPath%

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%
	}


 ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
 ;VAAMODIFF__Numero de lementos totales
numesciniparaporcenta=0
 ;VAAMODIFF__Numero de lementos totales
 
porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

varonlyfiles2=0

	
onlyfilesselecc:
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
	
;paralos registros en ini
EnvAdd, numescini,1

 EnvAdd, varonlyfiles2,1
 
cononlyfiles2:="onlyfileloop"varonlyfiles2
 
cononlyfiles4=% %cononlyfiles2%
 

 
 SplitPath, cononlyfiles4, nameoffile1, diroffile1, extoffile1, name_no_exoffile1

 
 if  cononlyfiles4=
goto finoperaonlyfiles
 
  if  cononlyfiles4=ERROR
goto finoperaonlyfiles

goto ramalonlyfiles
return





ramalonlyfiles:

; If  DLsopDLs=
;else
; If  DLsopDLs=


return





finoperaonlyfiles:

;Limpieza

varonlyfiles6=0
	Loop
	{
		EnvAdd,varonlyfiles6,1
		
		cononlyfiles:="onlyfileloop"varonlyfiles6

		
		%cononlyfiles%=

if varonlyfiles6>%varonlyfiles%
	break
	}

goto finaloperaty

return



























;looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********
;looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********looponlyarchivos********



;loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********
;loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********
;lcsf
prelopcarpandsubfolders:
Entradalooplcsf=%dir1%\*.*
goto, enterprelopcarpandsubfolders
return



lopcarpandsubfolders:

Entradalcsf=%aacini%\*.*

enterprelopcarpandsubfolders:

;paralos registros en ini
numescini=0




;var for operations








varlcsf=0
Loop, Files, %Entradalcsf%, DR
	{
		EnvAdd, varlcsf,1
		
		
		conlcsf:="carpetalcsf"varlcsf
		
		%conlcsf%=%A_LoopFileFullPath%

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%
	}



 ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
 ;VAAMODIFF__Numero de lementos totales
numesciniparaporcenta=0
 ;VAAMODIFF__Numero de lementos totales
 
porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

varlcsf2=0

	
lcsfelecc:
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
	
;paralos registros en ini
EnvAdd, numescini,1

 EnvAdd, varlcsf2,1
 
conlcsf2:="carpetalcsf"varlcsf2
 
conlcsf4=% %conlcsf2%
 

 
 SplitPath, conlcsf4, namelcsf1, dirlcsf1, extlcsf1, name_no_exlcsf1

 
 if  conlcsf4=
goto finoperalcsf
 
  if  conlcsf4=ERROR
goto finoperalcsf

goto ramallcsf
return





ramallcsf:

If  DLsopDLs=19
	goto musicmp3


;else
; If  DLsopDLs=


return


;loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loopfilesfoldersin


;loop-onlycarpetassubfoldersoperationsoperation1********loop-onlycarpetassubfoldersoperationsoperation1********loop-onlycarpetassubfoldersoperationsoperation1********loop-onlycarpetassubfoldersoperationsoperation1********loop-onlycarpetassubfoldersoperationsoperation1********loop-onlycarpetassubfoldersoperationsoperation1********loop-onlycarpetassubfoldersoperationsoperation1********loopfile






musicmp3:




;subdirectorio fina?

examcarpfinal=%conlcsf4%\*.*
;Existen folders?
numberofcarp2=0
Loop, Files, %examcarpfinal%, D
{
numberofcarp2:=A_Index
}
if numberofcarp2>0
	goto lcsfelecc
; si siene subdirectorios se rechaza



numberofcarp3=0
Loop, Files, %examcarpfinal%, F
{
confilesubfinal=%A_LoopFileFullPath%

SplitPath, confilesubfinal, , , exttoplus
if exttoplus=%extearchiv1%
EnvAdd, numberofcarp3,1

if exttoplus=%extearchiv2%
EnvAdd, numberofcarp3,1

if exttoplus=%extearchiv3%
EnvAdd, numberofcarp3,1

if exttoplus=%extearchiv4%
EnvAdd, numberofcarp3,1


if exttoplus=%extearchiv5%
EnvAdd, numberofcarp3,1

if numberofcarp3>0
break
	}



;limpieza
confilesubfinal=



if numberofcarp3>0
goto lcsfelecc


Run, %conlcsf4%, ,Max  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando no pudo ser lanzado.


MsgBox 0x40023, %nameofthisscript1% - Verificación, El elemento:  %conlcsf4%   será eliminado ¿Correcto?
 IfMsgBox No, {
goto lcsfelecc
} Else IfMsgBox Cancel, {
goto finoperalcsf
}




FileRecycle, %conlcsf4%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %conlcsf4%, 
goto, lcsfelecc
} 






goto, lcsfelecc
Return







;loop-onlycarpetassubfoldersoperationsoperation1********loop-onlycarpetassubfoldersoperationsoperation1********loop-onlycarpetassubfoldersoperationsoperation1********loop-onlycarpetassubfoldersoperationsoperation1********loop-onlycarpetassubfoldersoperationsoperation1********loop-onlycarpetassubfoldersoperationsoperation1********loop-onlycarpetassubfoldersoperationsoperation1********loopfile









;loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loop-onlycarpetassubfoldersoperations********loopfilesfoldersin


















finoperalcsf:

;Limpieza

varlcsf6=0
	Loop
	{
		EnvAdd,varlcsf6,1
		
		conlcsf7:="carpetalcsf"varlcsf6

		
		%conlcsf7%=

if varlcsf6>%varlcsf%
	break
	}

goto finaloperaty

return





















;loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********
;loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********loop-onlycarpetassubfolders********



;looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********
;looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********

prelooponlyfolders:
Entradalooponlyfolders=%dir1%\*.*
goto, enterprelooponlyfolders
return



looponlyfolders:

Entradalooponlyfolders=%aacini%\*.*

enterprelooponlyfolders:

;paralos registros en ini
numescini=0


varonlyfolders=0
Loop, Files, %Entradalooponlyfolders%, D
	{
		EnvAdd, varonlyfolders,1
		
		
		cononlyfolders:="onlyfolderloop"varonlyfolders
		
		%cononlyfolders%=%A_LoopFileFullPath%

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%
	}


 ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
 ;VAAMODIFF__Numero de lementos totales
numesciniparaporcenta=0
 ;VAAMODIFF__Numero de lementos totales
 
porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

varonlyfolders2=0

	
onlyfolderselecc:
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
	
;paralos registros en ini
EnvAdd, numescini,1

 EnvAdd, varonlyfolders2,1
 
cononlyfolders2:="onlyfolderloop"varonlyfolders2
 
cononlyfolders4=% %cononlyfolders2%
 

 
 SplitPath, cononlyfolders4, nameoffolder1, dioffolder1, extoffolder1, name_no_exoffolder1

 
 if  cononlyfolders4=
goto finoperaonlyfolders
 
  if  cononlyfolders4=ERROR
goto finoperaonlyfolders

goto ramalonlyfolders
return





ramalonlyfolders:

; If  DLsopDLs=
;else
; If  DLsopDLs=


return





finoperaonlyfolders:

;Limpieza

varonlyfolders6=0
	Loop
	{
		EnvAdd,varonlyfolders6,1
		
		cononlyfolders:="onlyfolderloop"varonlyfolders6

		
		%cononlyfolders%=

if varonlyfolders6>%varonlyfolders%
	break
	}

goto finaloperaty

return





















;looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********
;looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********looponlycarpetas********








;loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********
;loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********
;loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********
;loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********

;Claveespecial=lffasd

loopfilesfoldersinallsubdirfiles:


elementolffasd:=dir1
elementolffasd2:=dir1 . "\*.*"


goto entradafileslffasd

return



loopfilesfoldersinallsubdir:

;Modo
;Si está en blanco u omitido, solo se incluyen los archivos y los subdirectorios no se repiten. De lo contrario, especifique una o más de las siguientes letras:
;• D = Incluir directorios (carpetas).
;• F = incluir archivos. Si se omiten F y D, los archivos están incluidos pero no carpetas.
;• r = recurrir en subdirectorios (subcarpetas). Si se omite R, no se incluyen archivos y carpetas en subcarpetas.

elementolffasd:=aacini
elementolffasd2:=aacini . "\*.*"


entradafileslffasd:

if DLsopDLs=29
	goto salconfr1

;;;;Aviso se continua o no
namexxcon1:="namexx"DLsopDLs
namexxcon2=% %namexxcon1%
MsgBox 0x40021, %nameofthisscript1% - Verificación, Se procederá a %namexxcon2% del elemento: %elementolffasd%  ¿Continuar con la operación?
 IfMsgBox Cancel, {

goto finaloperaty
}





salconfr1:



valrincre1=0

Loop, Files, %elementolffasd2%, FDR
{

EnvAdd, valrincre1, 1

		xerte1:="almaccarpeta"valrincre1

%xerte1%=%A_LoopFileFullPath%



hhrcc=% %xerte1%


;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
cantidadofelements=%A_index%
    }

;Variables especiales para las operations
;Variables especiales para las operations
;Variables especiales para las operations
;operation16
; esto es para borrar las carpetas al final
carpetavarialmc=0
;operation16














;Variables especiales para las operations
;Variables especiales para las operations

;Variables especiales para las operations
;Variables especiales para las operations





numescini=0
newvanume=0

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

porcopert1:=100/cantidadofelements
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %




continuaoperatyx:

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numescini*porcopert1


             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%




nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %



EnvAdd, newvanume, 1

vlbnamefiorfol:="almaccarpeta"newvanume


Fileoctlist2=% %vlbnamefiorfol%



if Fileoctlist2=
Goto, finallooplffasd

if Fileoctlist2=ERROR
Goto, finallooplffasd


;Para el ini DSH
if DLsopDLs=29
	goto saltonumess1





EnvAdd, numescini, 1




saltonumess1:








SplitPath, Fileoctlist2, nombre88, dir88, ext88, name_no_ext88, drive88






FileGetAttrib, valoarcorfold22, %Fileoctlist2%

If InStr(valoarcorfold22, "D")
        {
Goto, ramallffsfolders
}
else
        {
			Goto, ramallffsfiles

}

return







ramallffsfolders:

If  DLsopDLs=16
    goto, folderacciondelt
else
	if DLsopDLs=29
	goto createlinkfolders




return

ramallffsfiles:
If  DLsopDLs=16
    goto, fileaccderacciondelt
else
	if DLsopDLs=29
	goto createlinkfiles
return




;loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersin


;loopfilesfoldersinallsubdiroperationsoperation1********loopfilesfoldersinallsubdiroperationsoperation1********loopfilesfoldersinallsubdiroperationsoperation1********loopfilesfoldersinallsubdiroperationsoperation1********loopfilesfoldersinallsubdiroperationsoperation1********loopfilesfoldersinallsubdiroperationsoperation1********loopfilesfoldersinallsubdiroperationsoperation1********loopfile





fileaccderacciondelt:

Sleep 500
FileMove, %Fileoctlist2%, %elementolffasd%\%nombre88%, 0
if ErrorLevel
{ 

namearvhmove35:=TimeFileName1()	
namearvhmove34=%elementolffasd%\%name_no_ext88% %namearvhmove35% .%ext88%

FileMove, %Fileoctlist2%, %namearvhmove34%,0
if ErrorLevel
{ 
	
 IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	goto continuaoperatyx
	}


;comprobar si existe el archivo 

if !FileExist(namearvhmove34)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove34%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, continuaoperatyx
} Else IfMsgBox No, {
goto finallooplffasd
}
}






IniWrite, %namearvhmove34%,%dhsfileini%, Operation, %numescini%
IniWrite, %Fileoctlist2%,%dhsfileini%, Dirmov, %numescini%


goto continuaoperatyx
}




;comprobar si existe el archivo 
archivxcomp=%elementolffasd%\%nombre88%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
      IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
	  goto, continuaoperatyx
} Else IfMsgBox No, {
goto finallooplffasd
}
}






IniWrite, %elementolffasd%\%nombre88%,%dhsfileini%, Operation, %numescini%
IniWrite, %Fileoctlist2%,%dhsfileini%, Dirmov, %numescini%


goto continuaoperatyx

return







folderacciondelt:



EnvAdd, carpetavarialmc, 1
barconcoa:="carpetaaelimi"carpetavarialmc


%barconcoa%=%Fileoctlist2%

IniWrite, %Fileoctlist2%,%dhsfileini%, Operation, %numescini%

goto continuaoperatyx


return





secuefinal1:
carpeaccv=0


Loop
{

EnvAdd, carpeaccv, 1


barconcoa2:="carpetaaelimi"carpeaccv


if %barconcoa2%=
break

setvatamm2=0


elementolffasd23=% %barconcoa2%
elementolffasd22:=elementolffasd23 . "\*.*"

Loop, Files, %elementolffasd22%, FDR
{
setvatamm2:=A_LoopFileSize
}



if setvatamm2=0
FileRemoveDir, % %barconcoa2%, 1




}


;limpiarvariables contenedoras de las carpetas


carpetavarialmc2=0
Loop
{
	
EnvAdd, carpetavarialmc2, 1
barconcoa2:="carpetaaelimi"carpetavarialmc2

if  %barconcoa2%=
break

%barconcoa2%=


if  carpetavarialmc2 > %carpetavarialmc%
break

}

goto, ramalfinalretorno

return

;loopfilesfoldersinallsubdiroperationsoperation1********loopfilesfoldersinallsubdiroperationsoperation1********loopfilesfoldersinallsubdiroperationsoperation1********loopfilesfoldersinallsubdiroperationsoperation1********loopfilesfoldersinallsubdiroperationsoperation1********loopfilesfoldersinallsubdiroperationsoperation1********loopfilesfoldersinallsubdiroperationsoperation1********loopfile


;loopfilesfoldersinallsubdiroperationsoperation2********loopfilesfoldersinallsubdiroperationsoperation2********loopfilesfoldersinallsubdiroperationsoperation2********loopfilesfoldersinallsubdiroperationsoperation2********loopfilesfoldersinallsubdiroperationsoperation2********loopfilesfoldersinallsubdiroperationsoperation2********loopfilesfoldersinallsubdiroperationsoperation2********loopfile





createlinkfolders:

if abuscar2=0
goto continuaoperatyx


posstr1 := InStr(nombre88, abuscar1)



if posstr1> 0
{
	
	
	if !FileExist(namelink)
	{
		
			namelink=%carpetafinaloper%\%nombre88%.lnk
		
FileCreateShortcut, %Fileoctlist2%, %namelink%
if ErrorLevel
{ 
	goto fracas1
}


EnvAdd, numescini, 1
IniWrite, %namelink%,%dhsfileini%, Operation, %numescini%


}
else
{
	
	
	contnTFN1:=TimeFileName1()	
	
	namelink=%carpetafinaloper%\%nombre88%  %contnTFN1% .lnk
	
	FileCreateShortcut, %Fileoctlist2%, %namelink%
	if ErrorLevel
{ 
	goto fracas1
}
	
	
	EnvAdd, numescini, 1
	IniWrite, %namelink%,%dhsfileini%, Operation, %numescini%
}





}










goto continuaoperatyx



fracas1:

MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %namelink%
EnvAdd, numescini, 1
 IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto continuaoperatyx

return







createlinkfiles:


posstr2 := InStr(nombre88, abuscar1)

if posstr2> 0
{
	
	namelink=%carpetafinaloper%\%nombre88%.lnk
	
	
	
	if !FileExist(namelink)
	{
FileCreateShortcut, %Fileoctlist2%, %namelink%
if ErrorLevel
{ 
	goto fracas2
}

EnvAdd, numescini, 1
IniWrite, %namelink%,%dhsfileini%, Operation, %numescini%

}
else
{
	
	
	contnTFN1:=TimeFileName1()	
	
	namelink=%carpetafinaloper%\%nombre88%  %contnTFN1% .lnk
	
	FileCreateShortcut, %Fileoctlist2%, %namelink%
	if ErrorLevel
{ 
	goto fracas2
}
EnvAdd, numescini, 1
IniWrite, %namelink%,%dhsfileini%, Operation, %numescini%


}





}









goto continuaoperatyx



fracas2:

MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %namelink%
EnvAdd, numescini, 1
 IniWrite, No aplica,%dhsfileini%, Operation, %numescini%
goto continuaoperatyx



return


;loopfilesfoldersinallsubdiroperationsoperation2********loopfilesfoldersinallsubdiroperationsoperation2********loopfilesfoldersinallsubdiroperationsoperation2********loopfilesfoldersinallsubdiroperationsoperation2********loopfilesfoldersinallsubdiroperationsoperation2********loopfilesfoldersinallsubdiroperationsoperation2********loopfilesfoldersinallsubdiroperationsoperation2********loopfile




;loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersinallsubdiroperations********loopfilesfoldersin



finallooplffasd:

;ramalfinal;ramalfinal;ramalfinal;ramalfinal

If  DLsopDLs=16
    goto, secuefinal1

;ramalfinal;ramalfinal;ramalfinal;ramalfinal

ramalfinalretorno:




; limpieza de la variable para uso posterior 

valodeleva=0

    Loop
    {

envadd, valodeleva, 1

		xerte1:="almaccarpeta"valodeleva
		
%xerte1%=


if valodeleva>=%valrincre1%
 break
    }





goto, finaloperaty

return








;loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********
;loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********
;loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********
;loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********loopfilesfoldersinallsubdir********








;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
;Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________Operaciónes__________________
























































































































































































































































































































































































































































































































GuiClose:


if  ventanamostrada=1
{
	
	
	if  activagui1=1
	{
;si la gui esta minimizada
Gui, 1:Show


WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
IniWrite, %gui_position%, %CLAVEaini%, window position, gui_position
gui_position=x%gui_x% y%gui_y%
Gui 1:Hide
 activagui1=0
}
else
	goto nretor22
 
 
 
 
}
else 
if  ventanamostrada=2
{
	
	
		if  activagui2=1
	{
;si la gui esta minimizada
Gui, zx:Show


WinGetPos, gui_x, gui_y,,, ahk_id %gui_id2%

gui_position2=x%gui_x% y%gui_y%
iniwrite, %gui_position2%, %CLAVEaini%, ventanita, gui_position


Gui, zx:Hide
activagui2=0
}
else
	goto nretor22
 
 
 
 

}
return




nretor22:










if  ventanamostrada=1
{
	
	if  activagui1=0
	{
		
		
		
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(145,385,gui_position,"1")
gui_position=%guipositionmod%
				
Gui, 1:Show, %gui_position%

activagui1=1

}
else
	goto GuiClose



}
else
if  ventanamostrada=2
{
	
		if  activagui2=0
	{
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(50,190,gui_position2,"zx")
gui_position2=%guipositionmod%
				
Gui, zx:Show, %gui_position2%


activagui2=1
}
else
	goto GuiClose

	
	
	

	
}
return













miniwin:

Gui, 1:Submit, NoHide







vddcsrsav:="DLsa"DLsaDLs
labelventa=%  %vddcsrsav%


noimagevalor=0

;clavenewoperation7
;determinacion de imagen;determinacion de imagen;determinacion de imagen

if imagenvented1=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented2%
goto ventanitaespc
} 
else
If  DLsopDLs=1
	{
		if imagenvented3=1
	      	{ 
				noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented4%
goto, ventanitaespc
} 
	


}
else
If  DLsopDLs=2
	{
		
				if imagenvented5=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented6%
goto, ventanitaespc
} 
		
	
}
else
If  DLsopDLs=3
	{
		
				
				if imagenvented7=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented8%
goto, ventanitaespc
} 
		
		
		
		


}
else
If  DLsopDLs=4
	{
						if imagenvented9=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented10%
goto, ventanitaespc
} 



}
else
If  DLsopDLs=5
	{
		
								if imagenvented11=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf ,%imagenvented12%
goto, ventanitaespc
} 
		
		
		
		
		



}
else
If  DLsopDLs=6
	{
									if imagenvented13=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf ,%imagenvented14%
goto, ventanitaespc
} 
		


}
else
If  DLsopDLs=7
	{
		
		
					if imagenvented13=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf ,%imagenvented14%
goto, ventanitaespc
} 
		

		

}
else
If  DLsopDLs=8
	{
		
		
					if imagenvented13=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf ,%imagenvented14%
goto, ventanitaespc
} 
	
}
else
If  DLsopDLs=9
	{
	if imagenvented11=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf ,%imagenvented12%
goto, ventanitaespc
} 
		
		
		
		


}

else
	if DLsopDLs between 10 and 15
	{
		
If  DLsopDLs=10
{
	
				if imagenvented21=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented22%
		goto, ventanitaespc
} 
	
	





}

If  DLsopDLs=11
{
	
	
				if imagenvented21=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented22%
		goto, ventanitaespc
} 
	
	
}

If  DLsopDLs=12
{
	
	
	
					if imagenvented21=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented22%
		goto, ventanitaespc
} 
	
	
	
	
	
}

If  DLsopDLs=13
{
	
	
						if imagenvented21=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented22%
		goto, ventanitaespc
} 
	
	

}

If  DLsopDLs=14
{
	
							if imagenvented21=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented22%
		goto, ventanitaespc
} 
	

}

If  DLsopDLs=15
{
	
		
							if imagenvented21=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented22%
		goto, ventanitaespc
} 
	
}


}
else
If  DLsopDLs=16
	{
	
				
				if imagenvented7=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented8%
goto, ventanitaespc
} 
		
		
		
		

}
else
If  DLsopDLs=17
	{
		
		
					if imagenvented13=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf ,%imagenvented14%
goto, ventanitaespc
} 

}
else
If  DLsopDLs=18
	{
	if imagenvented13=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf ,%imagenvented14%
goto, ventanitaespc
} 
		


}
else
If  DLsopDLs=19
	{

				
				if imagenvented7=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented8%
goto, ventanitaespc
} 

}
else
If  DLsopDLs=20
	{
		
				
				if imagenvented7=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented8%
goto, ventanitaespc
} 
		
		
		
		
	

}
else
If  DLsopDLs=21
	{
		
								if imagenvented11=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf ,%imagenvented12%
goto, ventanitaespc
} 
		

}
else
If  DLsopDLs=22
	{
		
				if imagenvented5=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented6%
goto, ventanitaespc
} 
		

}
else
If  DLsopDLs=23
	{
		if imagenvented3=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented4%
goto, ventanitaespc
} 
	


}
else

If  DLsopDLs=24
	{
						if imagenvented9=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented10%
goto, ventanitaespc
} 
		


}
else
If  DLsopDLs=25
	{
		
								if imagenvented11=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf ,%imagenvented12%
goto, ventanitaespc
} 
		
		
		
		
}
else
If  DLsopDLs=26
	{
		
				if imagenvented5=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented6%
goto, ventanitaespc
} 
		
		
		
		
		

}
else
If  DLsopDLs=27
	{
		
				if imagenvented5=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented6%
goto, ventanitaespc
} 
		
		
}
else
If  DLsopDLs=28
	{
		
				if imagenvented5=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf,%imagenvented6%
goto, ventanitaespc
} 


}
else
If  DLsopDLs=29
	{
		
								if imagenvented11=1
	      	{ 
noimagevalor=1
Gui,  zx:Add, Picture, x0 y0 h50 w190 vparlavisinf gparlavisinf ,%imagenvented12%
goto, ventanitaespc
} 
} 		
;custom



;determinacion de imagen;determinacion de imagen;determinacion de imagen




ventanitaespc:

;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo
coloskinguicont:=Coloresofgui()

coloskinguicont:=StrSplit(coloskinguicont, "|")

coloskingui1=% coloskinguicont[1]
coloskingui2=% coloskinguicont[2]
coloskingui3=% coloskinguicont[3]
;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo


Gui, zx:Color ,%coloskingui1%
Gui, zx:Font, c0x%coloskingui2% S%stkcg6% %stkcgfin5%, %stkcg4%
Gui, zx:Color , ,%coloskingui3%


nombventcont:="namexx"DLsopDLs
nombvent= % %nombventcont%


;utiliza carpeta central?
nametextopcont1:="varcutct"DLsopDLs
nametextopcont2=% %nametextopcont1%

nametextop1:=nombvent

if nametextopcont2=1
{
;temporal o carpeta guardadada
if temocaguar1=1
{
	SplitPath, carpetafinaloper, nametormpc1,
	
	nametextop2:=nametormpc1

}
else
{
	nametextop2:=labelventa
}





}
else
{
	
	
	
nametextop2=
;utiliza carpeta central?

}









if activenescom=1
	      	{ 
nombvent=%Tituentana%
nametextop1= %Textosu%
nametextop2= %Textoin%

} 




if noimagevalor=0
{
Gui, zx:Add, Text, x1 y4 w190 h20 Center gparlavisinf2 vtextop1, %nametextop1%


Gui, zx:Add, Text, x1 y24 w190 h20 Center gparlavisinf3 vtextop2, %nametextop2%
}















    If alwotcome = 1
    {
        Gui, zx:+AlwaysOnTop
    }



; Generated using SmartGUI Creator 4.0


WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
IniWrite, %gui_position%, %CLAVEaini%, window position, gui_position
gui_position=x%gui_x% y%gui_y%
Gui 1:Hide

;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(50,190,gui_position2,"zx")
gui_position2=%guipositionmod%


Gui, zx:Show, %gui_position2% h50 w190, %nameofthisscript1% - %nombvent%


;mostrar - ocultar gui
activagui1=0
activagui2=1





ventanamostrada=2





Gui, zx:+Hwndgui_id2
Return





zxGuiClose:
zxGuiEscape:

Gui, zx:Submit, NoHide
 ; Destroy the about box.
WinGetPos, gui_x, gui_y,,, ahk_id %gui_id2%

gui_position2=x%gui_x% y%gui_y%

iniwrite, %gui_position2%, %CLAVEaini%, ventanita, gui_position

Gui zx:Destroy



;mostrar - ocultar gui
activagui1=1
activagui2=0





ventanamostrada=1







;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(145,385,gui_position,"1")
gui_position=%guipositionmod%
				
Gui, 1:Show, %gui_position%

return



zxGuiDropFiles:
goto, GuiDropFiles
return









zxGuiContextMenu:

Menu, menu1, Show, %A_GuiX%, %A_GuiY%

return
















parlavisinf3:
parlavisinf2:
parlavisinf:





nameofop5:="namexx"DLsopDLs
nameofop6=% %nameofop5%


if nametextop2=
MsgBox 0x40040, %nameofthisscript1% - Información, %nametextop1% , 5
else
	MsgBox 0x40040, %nameofthisscript1% - Información, %nametextop1%`n  %nametextop2%`n  %carpetafinaloper%  , 5



return






































conset:




;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo
coloskinguicont:=Coloresofgui()

coloskinguicont:=StrSplit(coloskinguicont, "|")

coloskingui1=% coloskinguicont[1]
coloskingui2=% coloskinguicont[2]
coloskingui3=% coloskinguicont[3]
;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo


Gui, conf:Color ,%coloskingui1%
Gui, conf:Font, c0x%coloskingui2%
Gui, conf:Color , ,%coloskingui3%









    If alwotcome = 1
    {
        Gui, 1:-AlwaysOnTop
    }











Gui, conf:+owner1  ; Make the main window (Gui #1) the owner of the "about box".
Gui +Disabled  ; Disable main window.
Gui, conf:-MinimizeBox



Gui, conf:Add, GroupBox, x5 y5 w315 h240, General


Gui, conf:Add, CheckBox, x12 y19 w100 h20  vcaja6 Checked%alwotcome%, Always On Top

Gui, conf:Add, CheckBox, x12 y39 w100 h20  vcaja7 Checked%autonamecom%, Autorenombre

Gui, conf:Add, CheckBox, x12 y59 w100 h20  vblockguicheck Checked%Blockaccion%, Block %nameofthisscript1%


Gui, conf:Add, Text, x12 y92 w40 h20 ,DLs.exe
Gui, conf:Add, Edit, x60 y89 w252 h20 vdlsexe,%dlsexeval%


Gui, conf:Add, Text, x12 y122 w100 h20 ,MeinPlatz.exe
Gui, conf:Add, Edit, x93 y119 w220 h20 veditMeinPlatz,%codeMeinPlatz%



Gui, conf:Add, Text, x12 y153 w150 h20 ,7zFM.exe o 7-ZipPortable.exe
Gui, conf:Add, Edit, x162 y150 w150 h20 v7zeditval,%code7z%

Gui, conf:Add, Text, x12 y183 w150 h20 ,Explorador de archivos alterno
Gui, conf:Add, Edit, x162 y180 w150 h20 vespcexplor ,%Explorsec%



Gui, conf:Add, Button, x220 y19 w90 h20 vestoper1 gestoper1, %nameofthisscript1% estilo


Gui, conf:Add, Button, x120 y19 w90 h20 vopenfolderdls2 gopenfolderdls2, Folder Dsh
openfolderdls2_TT:= "Folder donde se almacenan los archivos ini para deshacer las operaciones." 

Gui, conf:Add, Button, x120 y49 w90 h20 vwindwutgui gwindwutgui , Avisos












Gui, conf:Add, GroupBox, x5 y250 w315 h50, Atributos

Gui, conf:Add, CheckBox, x12 y270  w130 h20   vcaja13 Checked%nueatribfiles%, Atributos y carpetas
caja13_TT:= "Al aplicar atributos a una carpeta  se aplican a todos los elementos`n en su interior, siempre  y cuando no exista interferencia con el sistema de archivos." 



Gui, conf:Add, GroupBox, x5 y310 w315 h50, Borrar si carpeta no contiene

Gui, conf:Add, Edit, x12 y330 w40 h20 vextenrespet1,%extearchiv1%
Gui, conf:Add, Edit, x62 y330 w40 h20 vextenrespet2,%extearchiv2%
Gui, conf:Add, Edit, x112 y330 w40 h20 vextenrespet3,%extearchiv3%
Gui, conf:Add, Edit, x162 y330 w40 h20 vextenrespet4,%extearchiv4%
Gui, conf:Add, Edit, x212  y330 w40 h20 vextenrespet5,%extearchiv5%

extenrespet1_TT:= "Extension de archivo a encontrar para no eliminar el directorio."
extenrespet2_TT:=extenrespet1_TT
extenrespet3_TT:=extenrespet1_TT
extenrespet4_TT:=extenrespet1_TT
extenrespet5_TT:=extenrespet1_TT







Gui, conf:Add, GroupBox, x5 y370 w315 h50, Mover cantidad

Gui, conf:Add, Edit, x12 y390 w40 h20 vsolomel1 number,%solomelvalor%
solomel1_TT:= "Numero maximo de elementos." 






Gui, conf:Add, GroupBox, x5 y430 w315 h50, Mover sí existe carpeta
Gui, conf:Add, CheckBox, x12 y450 w130 h20  vmoerifexisremp1 Checked%sobresc1%,Si existe reemplazar
moerifexisremp1_TT:= "Reemplazar los elementos existentes en la carpeta previamente guardada."






Gui, conf:Add, GroupBox, x5 y490 w315 h50, Numeración
Gui, conf:Add, CheckBox, x12 y510 w130 h20  vcaja12 Checked%nametxt2%, Name-Nu-.txt
caja12_TT:= "Mantener el nombre original antes de enumerar`n los archivos en el archivo Name-Nu-.txt" 



Gui, conf:Add, GroupBox, x330 y5 w315 h85, Numeración 2
Gui, conf:Add, Text, x342 y20 w180 h20 ,Valor de partida para la operación
Gui, conf:Add, Edit, x522 y20 w40 h20 vvaloespnum2 number,%valoespnumvalor2%
valoespnum2_TT:= "Punto de partida para la operación." 
Gui, conf:Add, CheckBox, x342 y50 w60 h20  vsinnombredel Checked%activadelnombre%, Nombre
sinnombredel_TT:= "Mantener el nombre original al enumerar`n los elementos."

Gui, conf:Add, CheckBox, x402 y50 w100 h20  vsinnombredel2 Checked%activadelnombre2%,Name-Nu2-.txt
sinnombredel2_TT:= "Mantener el nombre original antes de enumerar`n los archivos en el archivo Name-Nu2-.txt"




Gui, conf:Add, GroupBox, x330 y100 w315 h50, Renombrar fecha-hora
Gui, conf:Add, CheckBox, x342 y120 w130 h20   vcaja10 Checked%elimnomv%, Eliminar nombre
Gui, conf:Add, CheckBox, x522 y120 w100 h20  vcaja11 Checked%nametxt%, Name.txt
caja11_TT:= "Mantener  el nombre original en un archivo Name.txt." 
















Gui, conf:Add, Button, x10 y620 w50 h20 gdefaulve, Default
Gui, conf:Add, Button, x590 y620 w50 h20 gok1, OK

Gui, conf:Add, Button, x305 y620 w40 h20 vwinabout1 gwinabout1, About
; Generated using SmartGUI Creator 4.0
Gui, conf:Show, center h650 w650,  %nameofthisscript1% - Configuración




Return





















































windwutgui:

windwutguiactive=1

Gui, windwutgui:+ownerconf  ; Make the main window (Gui #1) the owner of the "about box".
Gui conf:+Disabled  ; Disable main window.




;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo
coloskinguicont:=Coloresofgui()

coloskinguicont:=StrSplit(coloskinguicont, "|")

coloskingui1=% coloskinguicont[1]
coloskingui2=% coloskinguicont[2]
coloskingui3=% coloskinguicont[3]
;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo


Gui, windwutgui:Color ,%coloskingui1%
Gui, windwutgui:Font, c0x%coloskingui2%
Gui, windwutgui:Color , ,%coloskingui3%



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
Gui conf:-Disabled  ; Disable main window.

Return











vendiini:

run,  %dlsexeval% "%CLAVEDLs%\DLsa.ini", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

return




defaulve:

MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Desea proceder?
IfMsgBox Yes, {
FileDelete, %CLAVEaini%


reload
          } 
              Else IfMsgBox No, {
              Return
              }



return


openfolderdls2:

folderdsh=%A_ScriptDir%\Data\Dsh




OpenFolderDLs(0,folderdsh,0,Folexplodsh)

return
















;para los tooltip 
WM_MOUSEMOVE()
{
    static CurrControl, PrevControl, _TT  ; _TT is kept blank for use by the ToolTip command below.
    CurrControl := A_GuiControl
    If (CurrControl <> PrevControl and not InStr(CurrControl, " "))
    {
        ToolTip  ; Turn off any previous tooltip.
        SetTimer, DisplayToolTip, 2500   ;tiempo de despliege
        PrevControl := CurrControl
    }
    return

    DisplayToolTip:
    SetTimer, DisplayToolTip, Off
    ToolTip % %CurrControl%_TT  ; The leading percent sign tell it to use an expression.
    SetTimer, RemoveToolTip, 7000 ;duracion del  despliege
    return

    RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip
    return
}








































confGuiClose:
confGuiEscape:
Gui,  conf:Submit, NoHide
 ; Destroy the about box.

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
IniWrite, x%gui_x% y%gui_y%, %CLAVEaini%, window position, gui_position

    If alwotcome = 1
    {
        Gui, 1:+AlwaysOnTop
    }

Gui, 1:-Disabled
Gui conf:Destroy 

Return




ok1:


Gui, conf:Submit, NoHide





GuiControlGet, tcracc24, conf:, solomel1



GuiControlGet, extearch1, conf:, extenrespet1
GuiControlGet, extearch2, conf:, extenrespet2
GuiControlGet, extearch3, conf:, extenrespet3
GuiControlGet, extearch4, conf:, extenrespet4
GuiControlGet, extearch5, conf:, extenrespet5




GuiControlGet, acggh1, conf:, valoespnum2
if acggh1=
	acggh1=0
GuiControlGet, acggh2, conf:, sinnombredel
GuiControlGet, acggh3, conf:, sinnombredel2
GuiControlGet, fre ,1:, DLsaDLs







IniWrite, %DLsaDLs%, %CLAVEaini%, Go, a
IniWrite, %caja6%, %CLAVEaini%, Go, b
iniWrite, %DLsopDLs%, %CLAVEaini%, Go, c
IniWrite, %caja7%, %CLAVEaini%, Go, d
IniWrite, %caja12%, %CLAVEaini%, Go, e
iniWrite, %caja10%, %CLAVEaini%, Go, f
iniWrite, %caja11%, %CLAVEaini%, Go, g
IniWrite, %caja13%, %CLAVEaini%, Go, j



IniWrite, %acggh1%, %CLAVEaini%, VEOP, a
IniWrite, %acggh2%, %CLAVEaini%, VEOP, b
IniWrite, %acggh3%, %CLAVEaini%, VEOP, c


if  7zeditval=
 7zeditval=No especificado

if  editMeinPlatz=
 editMeinPlatz=No especificado

if  dlsexe=
 dlsexe=No especificado

if  espcexplor=
 espcexplor=No especificado





IniWrite, %7zeditval% , %CLAVEaini%, 7z, a
IniWrite, %editMeinPlatz%, %CLAVEaini%, MP, a
IniWrite,%dlsexe%, %CLAVEaini%, DLs, a
IniWrite,%espcexplor%, %CLAVEaini%, Expl, a



iniwrite, %moerifexisremp1%, %CLAVEaini%, OperSave, b

IniWrite, %blockguicheck%, %CLAVEaini%, Block, a




IniWrite, %extearch1%, %CLAVEaini%, Resp, a
IniWrite, %extearch2%, %CLAVEaini%, Resp, b
IniWrite, %extearch3%, %CLAVEaini%, Resp, c
IniWrite, %extearch4%, %CLAVEaini%, Resp, d
IniWrite, %extearch5%, %CLAVEaini%, Resp, e







if tcracc24=
tcracc24=500
IniWrite,%tcracc24%, %CLAVEaini%, Movcant, a



;continua despues de guardar datos de configuración

reloadguiforcontextmenu:
;exit app
vartoexorre=1
goto exitopc
return





esgrupGuiContextMenu:
	

	if A_GUICONTROL=colorguilab1
{
contexit=ediven4
goto mencguistkc
}
else
if A_GUICONTROL=colorguilab2
{
contexit=ediven5
goto mencguistkc
}
else
if A_GUICONTROL=colorguilab3
{
contexit=valpvecon1
goto mencguistkc
}
else
if  A_GUICONTROL=colorguilab4
{
contexit=valpvecon2
goto mencguistkc
}
else
if  A_GUICONTROL=colorguilab5
{
	contexit=valpvecon3
	goto mencguistkc
}
else
if A_GUICONTROL=colorguilab6
{
contexit=valpvecon4
goto mencguistkc
}
else
if  A_GUICONTROL=colorguilab7
{
contexit=valpvecon5
goto mencguistkc
}
else
if  A_GUICONTROL=colorguilab8
{
	contexit=valpveco6
	goto mencguistkc
}
else
if A_GUICONTROL=colorguilab9
{
contexit=valpvecon7
goto mencguistkc
}
else
if  A_GUICONTROL=colorguilab10
{
contexit=valpvecon8
goto mencguistkc
}
else
if  A_GUICONTROL=colorguilab11
{
	contexit=valpvecon9
	goto mencguistkc
}
else
if  A_GUICONTROL=colorguilab12
{
	contexit=valpvecon10
	goto mencguistkc
}

else
if  A_GUICONTROL=ttffff1
{
	contexit=valpvecon11
	goto mencguistkc
}
else
if  A_GUICONTROL=ttffff2
{
	contexit=valpvecon12
	goto mencguistkc
}

else
if  A_GUICONTROL=colorguilab13
{
	contexit=valpvecon19
	goto mencguistkc
}
else
if  A_GUICONTROL=colorguilab14
{
	contexit=valpvecon20
	goto mencguistkc
}



return





mencguistkc:
Menu, guistkcmenucont, Show, %A_GuiX%, %A_GuiY%
return



slectco1:


GuiControlget, colval_hex, esgrup:,%contexit%
colval_dec:=HexToDec(colval_hex)



colval_dec_user:= ChooseColor(colval_dec, esgrup, , , Palette2*)

;Error, no color
if  (colval_dec_user=0)
return

;guardar colores al salir de la aplicación
coloresaguardar=1


colval_hex_user :=FHex( colval_dec_user,6)
colval_hex_user1 := SubStr(colval_hex_user, 3, 8)

GuiControl, esgrup:,%contexit%,%colval_hex_user1%
return












estoper1:






contenumb:=1
varcontnumser=1
Loop 20
{
		varcontnumser++
	contenumb.= "|" varcontnumser
}




;lista de los nombres de archivos
GetFonts()






sty =
(Join|
Norm|
Bold|
Italic|
Strike|
Underline|
)


;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo
coloskinguicont:=Coloresofgui()

coloskinguicont:=StrSplit(coloskinguicont, "|")

coloskingui1=% coloskinguicont[1]
coloskingui2=% coloskinguicont[2]
coloskingui3=% coloskinguicont[3]
;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo



Gui, esgrup:Color ,%coloskingui1%
Gui, esgrup:Font, c0x%coloskingui2%
Gui, esgrup:Color , ,%coloskingui3%



Gui, conf:-Disabled

Gui, esgrup:+Ownerconf +Hwndesgrup -MinimizeBox



Gui, esgrup:Add, GroupBox, x5 y5 w275 h160, Ventanita especial

Gui, esgrup:Add, CheckBox, x10 y20 w260  h20  vcaja9 Checked%activenescom% center, Activado  

Gui, esgrup:Add, Text, x12 y40 w100 h20 ,Titulo de la ventana
Gui, esgrup:Add, Text, x12 y60 w100 h20 ,Texto superior
Gui, esgrup:Add, Text, x12 y80 w100 h20 ,Texto inferior
Gui, esgrup:Add, Text, x12 y100 w100 h20 vcolorguilab1 ,Color de fondo
Gui, esgrup:Add, Text, x12 y120 w100 h20 vcolorguilab2,Color de letra


Gui, esgrup:Add, Edit, x112 y40 w160 h20 vediven1,%Tituentana%
Gui, esgrup:Add, Edit, x112 y60 w160 h20 vediven2,%Textosu%
Gui, esgrup:Add, Edit, x112 y80 w160 h20 vediven3,%Textoin%
Gui, esgrup:Add, Edit, x112 y100  w160 h20 vediven4 center,%colorven%
Gui, esgrup:Add, Edit, x112 y120 w160 h20 vediven5 center,%colofonvent%

Gui, esgrup:Add, CheckBox, x12 y140 w70 h20  vdecvenimg1 Checked%imagenvented1%, Imagen
Gui, esgrup:Add, Edit, x82 y140 w190 h20  vdecvenimg2 , %imagenvented2%




Gui, esgrup:Add, GroupBox, x5 y170 w275 h195, Letra

Gui, esgrup:Add, Text, x10 y190 w255 h20 center , Principal

Gui, esgrup:Add, Text, x12 y213 w60 h20 vstkgv1 center, Letra
Gui, esgrup:Add, ComboBox, x72 y210 w200 h20 vstkgv2 R30 altsubmit    hwndconespesgr3 , %Fontlist%
CtlColors.Attach(conespesgr3,coloskingui1,coloskingui2)
GuiControl, esgrup:Choose, stkgv2, %stkcg1%


Gui, esgrup:Add, Text, x12 y243 w60 h20 vstkgv3 center, Tamaño
Gui, esgrup:Add, DropDownList, x72 y240 w50 h20 vstkgv4 R30 altsubmit    hwndconespesgr4 ,%contenumb%
CtlColors.Attach(conespesgr4,coloskingui1,coloskingui2)
GuiControl, esgrup:Choose, stkgv4, %stkcg3%

Gui, esgrup:Add, Text, x122 y243 w80 h20 vstkgv5 center, Formato

Gui, esgrup:Add, DropDownList, x202 y240 w70 h20 R30 altsubmit  vstkgv6  hwndCBBID1 , %sty%
CtlColors.Attach(CBBID1,coloskingui1,coloskingui2)
;para recuperar datos de las DropDownList
GuiControl, esgrup:Choose, stkgv6, %stkcg2%
;*************************
Gui, esgrup:Add, Text, x10 y270 w255 h20 center, Ventanita

Gui, esgrup:Add, Text, x12 y293 w60 h20 vstkgv21 center, Letra

Gui, esgrup:Add, ComboBox, x72 y290 w200 h20 vstkgv8 R30 altsubmit    hwndconespesgr1 , %Fontlist%
CtlColors.Attach(conespesgr1,coloskingui1,coloskingui2)
GuiControl, esgrup:Choose, stkgv8, %stkcg4%

Gui, esgrup:Add, Text, x12 y323 w60 h20 vstkgv23 center, Tamaño
Gui, esgrup:Add, DropDownList, x72 y320 w50 h20 vstkgv11 R30 altsubmit    hwndconespesgr2 ,%contenumb%
CtlColors.Attach(conespesgr2,coloskingui1,coloskingui2)
GuiControl, esgrup:Choose, stkgv11, %stkcg6%




Gui, esgrup:Add, Text, x122 y323 w80 h20 vstkgv25 center, Formato

Gui, esgrup:Add, DropDownList, x202 y320 w70 h20 R30 altsubmit  vstkgv10  hwndCBBID22 , %sty%
CtlColors.Attach(CBBID22,coloskingui1,coloskingui2)
;para recuperar datos de las DropDownList
GuiControl, esgrup:Choose, stkgv10, %stkcg5%














Gui, esgrup:Add, GroupBox, x285 y5 w180 h90, Grupo de operaciones copiar
Gui, esgrup:Add, Text, x290 y30 w100 h20 vcolorguilab3 ,Copiar fondo
Gui, esgrup:Add, Text, x290 y50 w100 h20 vcolorguilab4 ,Copiar letra
Gui, esgrup:Add, Edit, x390 y30 w70 h20 vvalpvecon1 center,%varpaventan1%
Gui, esgrup:Add, Edit, x390 y50 w70 h20 vvalpvecon2 center,%varpaventan2%
Gui, esgrup:Add, CheckBox, x290 y70 w60 h20  vdecvenimg3 Checked%imagenvented3%, Imagen
Gui, esgrup:Add, Edit, x350 y70 w110 h20  vdecvenimg4 , %imagenvented4%






Gui, esgrup:Add, GroupBox, x470  y5 w185 h90, Grupo de operaciones mover

Gui, esgrup:Add, Text, x480 y30 w100 h20 vcolorguilab5,Mover fondo
Gui, esgrup:Add, Text, x480 y50 w100 h20 vcolorguilab6,Mover  letra
Gui, esgrup:Add, Edit, x580 y30 w70 h20 vvalpvecon3 center,%varpaventan3%
Gui, esgrup:Add, Edit, x580 y50 w70 h20 vvalpvecon4 center,%varpaventan4%
Gui, esgrup:Add, CheckBox, x480 y70 w60 h20  vdecvenimg5 Checked%imagenvented5%, Imagen
Gui, esgrup:Add, Edit, x540 y70 w110 h20  vdecvenimg6 , %imagenvented6%


Gui, esgrup:Add, GroupBox, x285 y95 w180 h90, Grupo de operaciones papelera
Gui, esgrup:Add, Text, x290 y120 w100 h20 vcolorguilab7 ,Papelera  fondo
Gui, esgrup:Add, Text, x290 y140 w100 h20 vcolorguilab8,Papelera  letra
Gui, esgrup:Add, Edit, x390 y120 w70 h20 vvalpvecon5 center,%varpaventan5%
Gui, esgrup:Add, Edit, x390 y140 w70 h20 vvalpvecon6 center,%varpaventan6%
Gui, esgrup:Add, CheckBox, x290 y160 w60 h20  vdecvenimg7 Checked%imagenvented7%, Imagen
Gui, esgrup:Add, Edit, x350 y160 w110 h20  vdecvenimg8 , %imagenvented8%



Gui, esgrup:Add, GroupBox, x470  y95 w185 h90, Grupo de operaciones eliminar
Gui, esgrup:Add, Text, x480 y120 w100 h20 vcolorguilab9 ,Eliminar  fondo
Gui, esgrup:Add, Text, x480 y140 w100 h20 vcolorguilab10 ,Eliminar  letra
Gui, esgrup:Add, Edit, x580 y120 w70 h20 vvalpvecon7 center,%varpaventan7%
Gui, esgrup:Add, Edit, x580 y140 w70 h20 vvalpvecon8 center,%varpaventan8%
Gui, esgrup:Add, CheckBox, x480 y160 w60 h20  vdecvenimg9 Checked%imagenvented9%, Imagen
Gui, esgrup:Add, Edit, x540 y160 w110 h20  vdecvenimg10 , %imagenvented10%


Gui, esgrup:Add, GroupBox, x285 y185 w180 h90, Grupo de operaciones otros
Gui, esgrup:Add, Text, x290 y210 w100 h20 vcolorguilab11 ,Otros  fondo
Gui, esgrup:Add, Text, x290 y230 w100 h20 vcolorguilab12 ,Otros  letra
Gui, esgrup:Add, Edit, x390 y210 w70 h20 vvalpvecon9 center,%varpaventan9%
Gui, esgrup:Add, Edit, x390 y230 w70 h20 vvalpvecon10 center,%varpaventan10%
Gui, esgrup:Add, CheckBox, x290 y250 w60 h20  vdecvenimg11 Checked%imagenvented11%, Imagen
Gui, esgrup:Add, Edit, x350 y250 w110 h20  vdecvenimg12 , %imagenvented12%




Gui, esgrup:Add, GroupBox, x470  y185 w185 h90, Grupo de operaciones renombrar
Gui, esgrup:Add, Text, x480 y210 w100 h20 vttffff1,Renombrar  fondo
Gui, esgrup:Add, Text, x480 y230 w100 h20 vttffff2,Renombrar  letra
Gui, esgrup:Add, Edit, x580 y210 w70 h20 vvalpvecon11 center,%varpaventan11%
Gui, esgrup:Add, Edit, x580 y230 w70 h20 vvalpvecon12 center,%varpaventan12%
Gui, esgrup:Add, CheckBox, x480 y250 w60 h20  vdecvenimg13 Checked%imagenvented13%, Imagen
Gui, esgrup:Add, Edit, x540 y250 w110 h20  vdecvenimg14 , %imagenvented14%




Gui, esgrup:Add, GroupBox, x285 y275 w180 h90, Parametros
Gui, esgrup:Add, Text, x290 y300 w100 h20 vcolorguilab13,Parametros  fondo
Gui, esgrup:Add, Text, x290 y320 w100 h20 vcolorguilab14,Parametros  letra
Gui, esgrup:Add, Edit, x390 y300 w70 h20 vvalpvecon19 center,%varpaventan19%
Gui, esgrup:Add, Edit, x390 y320 w70 h20 vvalpvecon20 center,%varpaventan20%
Gui, esgrup:Add, CheckBox, x290 y340 w60 h20  vdecvenimg21 Checked%imagenvented21%, Imagen
Gui, esgrup:Add, Edit, x350 y340 w110 h20  vdecvenimg22 , %imagenvented22%









Gui, esgrup:Add, Button, x600 y380 w50 h20 vokest1 gokest1, OK

; Generated using SmartGUI Creator 4.0
Gui, esgrup:Show, center h410 w660,  %nameofthisscript1% - Estilos de los grupos

return


okest1:




Gui, esgrup:Submit, NoHide





if ediven1=
ediven1=.

if ediven2=
ediven2=.

if ediven3=
ediven3=.


if ediven4=
ediven4=97A0D4

if ediven5=
ediven5=c0xffffff




IniWrite, %caja9%, %CLAVEaini%, Ventanita, a
IniWrite, %ediven1%, %CLAVEaini%, Ventanita, b
IniWrite, %ediven2%, %CLAVEaini%, Ventanita, c
IniWrite, %ediven3%, %CLAVEaini%, Ventanita, d
IniWrite, %ediven4%, %CLAVEaini%, Ventanita, e
IniWrite, %ediven5%, %CLAVEaini%, Ventanita, f



If valpvecon1=
valpvecon1=003F24
If valpvecon2=
valpvecon2=ffffff
If valpvecon3=
valpvecon3=000F62
If valpvecon4=
valpvecon4=ffffff

If valpvecon5=
valpvecon5=2E1E39

If valpvecon6=
valpvecon6=ffffff

If valpvecon7=
valpvecon7=59000D

If valpvecon8=
valpvecon8=ffffff

If valpvecon9=
valpvecon9=C5B657

If valpvecon10=
valpvecon10=ffffff

If valpvecon11=
valpvecon11=4B484A

If valpvecon12=
valpvecon12=ffffff

If valpvecon13=
valpvecon13=B2B2B2
If valpvecon14=
valpvecon14=ffffff
If valpvecon15=
valpvecon15=30583F

If valpvecon16=
valpvecon16=ffffff

If valpvecon17=
valpvecon17=FFFFFF
If valpvecon18=
valpvecon18=272822
If valpvecon19=
valpvecon19=ffffff

If valpvecon20=
valpvecon20=008485





IniWrite, %valpvecon1%, %CLAVEaini%, Opercolor, 1
IniWrite, %valpvecon2%, %CLAVEaini%, Opercolor, 2
IniWrite, %valpvecon3%, %CLAVEaini%, Opercolor, 3
IniWrite, %valpvecon4%, %CLAVEaini%, Opercolor, 4
IniWrite, %valpvecon5%, %CLAVEaini%, Opercolor, 5
IniWrite, %valpvecon6%, %CLAVEaini%, Opercolor, 6
IniWrite, %valpvecon7%, %CLAVEaini%, Opercolor, 7
IniWrite, %valpvecon8%, %CLAVEaini%, Opercolor, 8
IniWrite, %valpvecon9%, %CLAVEaini%, Opercolor, 9
IniWrite, %valpvecon10%, %CLAVEaini%, Opercolor, 10
IniWrite, %valpvecon11%, %CLAVEaini%, Opercolor, 11
IniWrite, %valpvecon12%, %CLAVEaini%, Opercolor, 12
IniWrite, %valpvecon13%, %CLAVEaini%, Opercolor, 13
IniWrite, %valpvecon14%, %CLAVEaini%, Opercolor, 14
IniWrite, %valpvecon15%, %CLAVEaini%, Opercolor, 15
IniWrite, %valpvecon16%, %CLAVEaini%, Opercolor, 16


IniWrite, %valpvecon17%, %CLAVEaini%, Opercolor, 17
IniWrite, %valpvecon18%, %CLAVEaini%, Opercolor, 18

IniWrite, %valpvecon19%, %CLAVEaini%, Opercolor, 19
IniWrite, %valpvecon20%, %CLAVEaini%, Opercolor, 20




imagendefault1=%A_ScriptDir%\Data\Gui\IMG0.png



If decvenimg2=
decvenimg2=%imagendefault1%

If decvenimg4=
decvenimg4=%imagendefault1%

If decvenimg6=
decvenimg6=%imagendefault1%

If decvenimg8=
decvenimg8=%imagendefault1%

If decvenimg10=
decvenimg10=%imagendefault1%

If decvenimg12=
decvenimg12=%imagendefault1%

If decvenimg14=
decvenimg14=%imagendefault1%

If decvenimg16=
decvenimg16=%imagendefault1%

If decvenimg18=
decvenimg18=%imagendefault1%

If decvenimg20=
decvenimg20=%imagendefault1%

If decvenimg22=
decvenimg22=%imagendefault1%




;imagen ventanita
IniWrite, %decvenimg1%, %CLAVEaini%, imagenvent, 1
IniWrite, %decvenimg2%,%CLAVEaini%, imagenvent, 2
IniWrite, %decvenimg3%, %CLAVEaini%, imagenvent, 3
IniWrite, %decvenimg4%,%CLAVEaini%, imagenvent, 4
IniWrite, %decvenimg5%,%CLAVEaini%, imagenvent, 5
iniWrite, %decvenimg6%, %CLAVEaini%, imagenvent, 6
iniWrite, %decvenimg7%, %CLAVEaini%, imagenvent, 7
IniWrite, %decvenimg8%, %CLAVEaini%, imagenvent, 8
IniWrite, %decvenimg9%,%CLAVEaini%, imagenvent, 9
IniWrite, %decvenimg10%,%CLAVEaini%, imagenvent, 10
IniWrite, %decvenimg11%,%CLAVEaini%, imagenvent, 11
IniWrite, %decvenimg12%,%CLAVEaini%, imagenvent, 12
IniWrite, %decvenimg13%,%CLAVEaini%, imagenvent, 13
iniWrite, %decvenimg14%, %CLAVEaini%, imagenvent, 14
iniWrite, %decvenimg15%, %CLAVEaini%, imagenvent, 15
IniWrite, %decvenimg16%, %CLAVEaini%, imagenvent, 16
IniWrite, %decvenimg17%, %CLAVEaini%, imagenvent, 17
IniWrite, %decvenimg18%, %CLAVEaini%, imagenvent, 18
IniWrite, %decvenimg19% ,%CLAVEaini%, imagenvent, 19
IniWrite, %decvenimg20%, %CLAVEaini%, imagenvent, 20
IniWrite, %decvenimg21% ,%CLAVEaini%, imagenvent, 21
IniWrite, %decvenimg22%, %CLAVEaini%, imagenvent, 22



If stkgv2=
stkgv2=Verdana



If stkgv8=
stkgv8=Verdana



IniWrite, %stkgv2%, %CLAVEaini%, STKG,1
IniWrite, %stkgv6%, %CLAVEaini%, STKG,2
IniWrite, %stkgv4%, %CLAVEaini%, STKG,3

IniWrite, %stkgv8%, %CLAVEaini%, STKG,4
IniWrite, %stkgv10%, %CLAVEaini%, STKG,5

IniWrite, %stkgv11%, %CLAVEaini%, STKG,6


goto reloadguiforcontextmenu


return




esgrupGuiClose:
esgrupGuiEscape:

Gui, conf:-Disabled
Gui esgrup:Destroy 


return











































exitopc:





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









if ventanamostrada=1
{
  Gui, 1:Show
}
  else
{
	    Gui, zx:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id2%

gui_position2=x%gui_x% y%gui_y%

iniwrite, %gui_position2%, %CLAVEaini%, ventanita, gui_position

		
		Gui, zx:Hide
	  Gui, 1:Show
}
  
  





  Gui, 1:Submit, NoHide  

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%


IniWrite, %gui_position%, %CLAVEaini%, window position, gui_position






IniWrite, %DLsaDLs%, %CLAVEaini%, Go, a
iniWrite, %accionagepos1%, %CLAVEaini%, Go, c
iniWrite, %cajautilita%, %CLAVEaini%, Go, h
iniWrite,  %valorcar%, %CLAVEaini%, Go, i
iniWrite,  %soperati%, %CLAVEaini%, Go, k
iniWrite, %inideshn%, %CLAVEaini%, DESH, a
iniWrite, %valoespnumvalor2%, %CLAVEaini%, VEOP, a


;positionn of gui if is new use in new pc
IniWrite, %usonuev3%, %CLAVEaini%, pcnewres, a


if vartoexorre=0
ExitApp
else
	Reload
Return










confimati:

valoerdedhs=%inideshn%



dhsfileini2=%Deshacer2%%inideshn%.ini



if !FileExist(dhsfileini2)
{

ffinrr=0
veseope=0
writeinid=%inideshn%
;ir al ultimo ini
loop, 201
{

EnvAdd,veseope, 1

EnvSub, writeinid, 1


if writeinid<=0
writeinid=200

inclace2=%Deshacer2%%writeinid%.ini


if FileExist(inclace2)
{
dhsfileini2=%inclace2%
goto, finalret2
}
if veseope=402
{
	ffinrr=1
goto, finalret
}
}
}






finalret:
if  ffinrr=1
{
MsgBox 0x40040, %nameofthisscript1% - Información, No hay registros de  operaciones anteriores., 3
return
}

finalret2:




Iniread, operativi1,%dhsfileini2%, Proceso, a


nameofop:="namexx"operativi1
nameofop2=% %nameofop%
MsgBox 0x40024, %nameofthisscript1% - Verificación, Operación a deshacer: %nameofop2% ¿Realmente desea proceder?
IfMsgBox Yes, {
goto, Restoreoperaty
          } 
              Else IfMsgBox No, {
					
				
              Return
              }
Return





Restoreoperaty:







dhsfileini:="CLAVEainiDHC"inideshn




Gui, 1:+Disabled 
Gui, zx:+Disabled 

Iniread, operativi1,%dhsfileini2%, Proceso, a













valoreadini1=0
numerodeopert=0
Loop{
	
EnvAdd valoreadini1,1
	
Iniread, opdatax,%dhsfileini2%, Operation, %valoreadini1%



if opdatax=ERROR
goto endloopnumedoper

if opdatax=ERROR
goto endloopnumedoper

EnvAdd numerodeopert,1
}
endloopnumedoper:


if numerodeopert=0
numerodeopert=1









nameofop5:="namexx"operativi1
nameofop6=% %nameofop5%


GuiControl,1:, tollee1, Revertir %nameofop6%










 ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
numesciniparaporcenta=0
porcopert1:=100/numerodeopert
porctelem:="%"
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %





;clavenewoperation13
;restaurasion imposible o otro

if operativi1=3
goto, restoremanua


if operativi1=4
goto, preraty2

if operativi1=5
goto, preraty2

if operativi1=16
goto, restabest



if operativi1=21
goto, preraty2


if operativi1=24
goto, preraty2


if operativi1=25
goto, preraty2




readvsl=0




principalacc:


;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1
             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %



EnvAdd,readvsl,1


Iniread, operdeshc,%dhsfileini2%, Operation, %readvsl%
Iniread, direcanmo1,%dhsfileini2%, Dirmov, %readvsl%



if operdeshc=ERROR
goto Restoreoperaty2

if operdeshc=
goto Restoreoperaty2

if operdeshc=No aplica
goto principalacc




SplitPath, operdeshc, nombre33, dir33, ext33, name_no_ext33, drive33


FileGetAttrib, valoarcorfold2, %operdeshc%

If InStr(valoarcorfold2, "D")
        {
Goto, foldersopertDHC
}
else
        {
			Goto, filesldersopertDHC

}


return


preraty2:
MsgBox 0x40040, %nameofthisscript1% - Información, La operación %namexx% no se puede deshacer., 2

;final de la operacion de dehacer
Restoreoperaty2:

Gui, 1:-Disabled 
Gui, zx:-Disabled 

GuiControl,1:, tollee1, |||||||||||||||||  Listo  |||||||||||||||||


FileDelete, %dhsfileini2%

return





;clavenewoperation14

foldersopertDHC:
if operativi1=1
	goto dletefoldercop
else
if operativi1=2
	goto moveotrafolder
else
if operativi1=6
	goto restorenamefolder
else
if operativi1=7
	goto restorenamefolder1
else
if operativi1=8
	goto restorenamefolder2
else
	 	 If  operativi1=10
	 goto,folderHidden11
	 else
If  operativi1=11
	 goto,folderHidden22
	 else
	 If  operativi1=12
	 goto,folderRead11
	 else
	 If  operativi1=13
	 goto,folderRead22
	 else
	 If  operativi1=14
	 goto,folderSystem11
	 else
	 If  operativi1=15
	 goto,folderSystem22
	 else

	 If  operativi1=17
	 goto,folderdesnum1
	 else
	 If  operativi1=18
	 goto,restorenamefolder
	 else
	 	 If  operativi1=19
	 goto,restoremanua
	 else
	  	 If  operativi1=20
	 goto,restorefolelopai
	 else
	 
	 	  	 If  operativi1=22
	 goto, moveotrafolder2
	 else
	 
	 
	 ;delete folder copiado
   	 If  operativi1=23
	 goto,dletefoldercop
	 else
	 
	    	 If  operativi1=26
	 goto,moveotrafolder
	 else
	 	 
	    	 If  operativi1=27
	 goto,movifexistretor
	 else
	     	 If  operativi1=28
	 goto,restoretipesfiles
	 	 	 else
	     	 If  operativi1=29
	 goto,dletefilcop
	 
	 
return







filesldersopertDHC:
if operativi1=1
	goto dletefilcop
else
if operativi1=2
	goto moveotrafile
else
if operativi1=6
	goto restorenamefile
else

if operativi1=7
	goto restorenamefile1
else
if operativi1=8
	goto restorenamefile2
else
if operativi1=9
	goto 7zarch
else

If  operativi1=10
	 goto,fileHidden11
	 else
If  operativi1=11
	 goto,fileHidden22
else
	 If  operativi1=12
	 goto,fileRead11
	 else
	 If  operativi1=13
	 goto,fileRead22
	 else
	 If  operativi1=14
	 goto,fileSystem11
	 else
	 If  operativi1=15
	 goto,fileSystem22
	 
	 else

	 	 If  operativi1=17
	 goto,filesdesnum1
	 
	 else
	 	 If  operativi1=18
	 goto,restorenamefile
	 else
	 	 If  operativi1=19
	 goto,restoremanua
	 else
	 	  	 If  operativi1=20
	 goto,restorefolelopai
	 
	 else
	 
	  	 If  operativi1=22
	 goto, moveotrafile2
	 
	 else
	 
	 
	 	 ;delete file copiado
	   	 If  operativi1=23
	 goto,dletefilcop
	 else
	 	    	 If  operativi1=26
	 goto,moveotrafile
	 else
	 	 	 
	    	 If  operativi1=27
	 goto,movifexistretor2
	 else
	     	 If  operativi1=28
	 goto,restoretipesfiles
	 	 else
	     	 If  operativi1=29
	 goto,dletefilcop
	 
return







dletefilcop:



FileDelete, %operdeshc%
if ErrorLevel
{ 

MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %operdeshc%. 
} 

goto principalacc
return

dletefoldercop:

FileRemoveDir, %operdeshc%,1
if ErrorLevel
{ 

MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %operdeshc%. 
} 

goto principalacc
return




moveotrafile:

FileMove, %operdeshc%, %direcanmo1%\%nombre33%,0
if ErrorLevel
{ 

contnTFN1:=TimeFileName1()	

namearvhmove2=%direcanmo1%\%nombre33% %contnTFN1% .%ext33%

FileMove, %operdeshc%, %namearvhmove2%,0



;comprobar si existe el archivo 

if !FileExist(namearvhmove2)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove2%  ¿Continuar con la operación?
IfMsgBox Yes, {
      
	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}


goto principalacc
}



;comprobar si existe el archivo 
archivxcomp=%direcanmo1%\%nombre33%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
 
	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}




goto principalacc
return


moveotrafolder:

FileMoveDir, %operdeshc%, %direcanmo1%\%nombre33%, 0
if ErrorLevel
{ 
contnTFN1:=TimeFileName1()
namearvhmove3=%direcanmo1%\%nombre33% %contnTFN1%

FileMoveDir, %operdeshc%, %namearvhmove3%,0




;comprobar si existe el archivo 

if !FileExist(namearvhmove3)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove3%  ¿Continuar con la operación?
IfMsgBox Yes, {
	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}




goto principalacc
}



;comprobar si existe el archivo 
archivxcomp=%direcanmo1%\%nombre33%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}







goto principalacc
return








restoremanua:

Run, shell:::{645FF040-5081-101B-9F08-00AA002F954E}, , Max UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2



goto, Restoreoperaty2
return







restorenamefile:

FileMove, %operdeshc%, %direcanmo1%,1


;comprobar si existe el archivo 

if !FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}



goto, principalacc
return

restorenamefolder:


FileMoveDir, %operdeshc%, %direcanmo1%, 1


;comprobar si existe el archivo 

if !FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}






goto, principalacc
return



restorenamefile1:

FileMove, %operdeshc%, %direcanmo1%,1
;comprobar si existe el archivo 

if !FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}

goto, principalacc
return

restorenamefolder1:


FileMoveDir, %operdeshc%, %direcanmo1%, 1


;comprobar si existe el archivo 

if !FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}



goto, principalacc
return



restorenamefile2:

FileMove, %operdeshc%, %direcanmo1%,1
;comprobar si existe el archivo 

if !FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}



goto, principalacc
return

restorenamefolder2:



FileMoveDir, %operdeshc%, %direcanmo1%, 1
;comprobar si existe el archivo 

if !FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}


goto, principalacc
return


7zarch:


FileDelete, %operdeshc%
if ErrorLevel
{ 
	elmeenv=% %varialamproce14%
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %elmeenv%. 
} 

goto Restoreoperaty2
return









folderHidden11:
if nueatribfiles=1
{
FileSetAttrib, -H , %operdeshc%\*, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}
}


FileSetAttrib, -H , %operdeshc%, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}

goto, principalacc
return



folderHidden22:
if nueatribfiles=1
{
FileSetAttrib, +H , %operdeshc%\*, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}
}



FileSetAttrib, +H , %operdeshc%, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}

goto, principalacc

return
	 
	 
	 
	 
	 folderRead11:

if nueatribfiles=1
{
FileSetAttrib, -R , %operdeshc%\*, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}
}

FileSetAttrib, -R , %operdeshc%, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}



goto, principalacc
return

folderRead22:
if nueatribfiles=1
{
FileSetAttrib, +R , %operdeshc%\*, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}
}

FileSetAttrib, +R , %operdeshc%, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}

goto, principalacc
return





folderSystem11:
if nueatribfiles=1
{
FileSetAttrib, -S , %operdeshc%\*, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}
}

FileSetAttrib, -S , %operdeshc%, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}


goto, principalacc
return

folderSystem22:
if nueatribfiles=1
{
FileSetAttrib, +S , %operdeshc%\*, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}
}




FileSetAttrib, +S , %operdeshc%, 1, 1
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}
goto, principalacc
return







fileHidden11:
FileSetAttrib, -H , %operdeshc%
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}

goto, principalacc
return

fileHidden22:


FileSetAttrib, +H , %operdeshc%
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}

goto, principalacc
return
	 

fileRead11:
FileSetAttrib, -R , %operdeshc%
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}

goto, principalacc
return

fileRead22:

FileSetAttrib, +R , %operdeshc%
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}
goto, principalacc
return

fileSystem11:
FileSetAttrib, -S , %operdeshc%
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}

goto, principalacc
return

fileSystem22:
FileSetAttrib, +S , %operdeshc%
if ErrorLevel
{ 
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}

goto, principalacc
return








restabest:




 ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
porcopert1:=50/numerodeopert
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %





readvsl2=0

filevav=0

filevavmove=0
principalacc22:


;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=numesciniparaporcenta*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%



nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %



EnvAdd,readvsl22,1


Iniread, operdeshc2,%dhsfileini2%, Operation, %readvsl22%
Iniread, direcanmo11,%dhsfileini2%, Dirmov, %readvsl22%



if operdeshc2=ERROR
goto estabearchiv

if operdeshc2=
goto estabearchiv

if operdeshc2=No aplica
goto principalacc22



SplitPath, operdeshc2, nombre99, dir99, ext99



 ;verificar que el elemento sea una carpeta
 namevariaachec=%operdeshc2%
 FileGetAttrib, namecomunuso1, %namevariaachec%
 If InStr(namecomunuso1, "D")
        {
ext99=
}
 ;verificar que el elemento sea una carpeta


if ext99=
        {
Goto, foldercreate
}
else
        {
			Goto, savefilesss

}
return

foldercreate:




Sleep 500

if !FileExist(operdeshc2)
FileCreateDir, %operdeshc2%

goto, principalacc22
return


savefilesss:

envadd, filevav,1

ivargge1:="filllmov"filevav
ivargge2:="filllmovdes"filevav

%ivargge1%=%operdeshc2%

%ivargge2%=%direcanmo11%


goto, principalacc22
return



estabearchiv:
 ;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
porcopert1:=50/filevav
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

Loop
{
	
	
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=filevavmove*porcopert1
porcopert3:=50.00+porcopert2

          setformvar1:=Format("{:.2f}",porcopert3)
porcopert3=%setformvar1%




nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert3%%porctelem%
;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %
	
	
	
	
envadd, filevavmove,1

ivargg1:="filllmov"filevavmove
ivargg2:="filllmovdes"filevavmove

if %ivargg1%=
goto exitlllsubf


Sleep 500

filemove, % %ivargg1%, % %ivargg2%,0

;comprobar si existe el archivo 
archivxcomp=% %ivargg2%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox No, {
goto Restoreoperaty2
}
}


}

exitlllsubf:
goto, Restoreoperaty2
return






























filesdesnum1:


FileMove, %operdeshc%, %direcanmo1%, 1

;comprobar si existe el archivo 

if !FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}

goto, principalacc
return


	 
	 
	 

folderdesnum1:

FileMoveDir, %operdeshc%, %direcanmo1%, 1

;comprobar si existe el archivo 

if !FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}



goto, principalacc
return





folderddescomp1:


FileRemoveDir, %operdeshc%,1

if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %operdeshc%. 
} 

goto, principalacc
return



filesdescomp1:


goto, principalacc
return












restorefolelopai:

valores=0


SplitPath, direcanmo1, , dircreate


if  !FileExist(dircreate)
{FileCreateDir, %dircreate%
Sleep,500
}

Loop
{
	priclp11:	
	;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=valores*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%




nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

	

	
envadd, valores,1


Iniread, operdeshc4,%dhsfileini2%, Operation, %valores%
Iniread, operdeshc24,%dhsfileini2%, Dirmov, %valores%



if operdeshc4=ERROR
goto Restoreoperaty2

if operdeshc4=
goto Restoreoperaty2

if operdeshc4=No aplica
goto priclp11


SplitPath, operdeshc4, nombrecod, dircod, extcod, name_no_extcod,


 ;verificar que el elemento sea una carpeta
 namevariaachec=%operdeshc4%
 FileGetAttrib, namecomunuso1, %namevariaachec%
 If InStr(namecomunuso1, "D")
        {
extcod=
}
 ;verificar que el elemento sea una carpeta

if extcod=
goto acc1movdes
else
goto acc2movdes



acc1movdes:
Sleep 500
FileMovedir, %operdeshc4%,%operdeshc24%, 0

 
 ;comprobar si existe el archivo 

if !FileExist(operdeshc24)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc24%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}
 
 
 
 
 
goto enopertlldes


acc2movdes:
Sleep 500

FileMove, %operdeshc4%,%operdeshc24%, 0

 
 ;comprobar si existe el archivo 

if !FileExist(operdeshc24)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %operdeshc24%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}
 
 

enopertlldes:
}

return














moveotrafile2:

FileMove, %operdeshc%, %direcanmo1%,0
if ErrorLevel
{ 
contnTFN1:=TimeFileName1()	
namearvhmove2=%dir33mo%\%nombre33mo% %contnTFN1%

FileMove, %operdeshc%, %namearvhmove2%,0


;comprobar si existe el archivo 

if !FileExist(namearvhmove2)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove2%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}



goto principalacc
}

;comprobar si existe el archivo 

if !FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}





goto principalacc
return











moveotrafolder2:

FileMoveDir, %operdeshc%, %direcanmo1%, 0
if ErrorLevel
{ 

contnTFN1:=TimeFileName1()	
namearvhmove3=%dir33mo%\%nombre33mo% %contnTFN1%

FileMoveDir, %operdeshc%, %namearvhmove3%,0



;comprobar si existe el archivo 

if !FileExist(namearvhmove3)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove3%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}





goto principalacc
}

;comprobar si existe el archivo 

if !FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {

	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}








goto principalacc
return




	 	 

movifexistretor:



SplitPath, direcanmo1, nombreinext, dirinexis, extinext, name_no_extinext, driveinex


if !FileExist(dirinexis)
{
FileCreateDir, %dirinexis%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto:%dirinexis% 
goto principalacc
}
}

FileMoveDir, %operdeshc%, %direcanmo1%, 0
if ErrorLevel
{ 
	
vardustempo:=TimeFileName1()	

namearvhmove3=%dirinexis%\%nombre33% %vardustempo% 

FileMoveDir, %operdeshc%, %namearvhmove3%,0


;comprobar si existe el archivo 

if !FileExist(namearvhmove3)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove3%  ¿Continuar con la operación?
IfMsgBox Yes, {
	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}
}




;comprobar si existe el archivo 

if !FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {
 
	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}



goto principalacc


return



movifexistretor2:



SplitPath, direcanmo1, nombreinext, dirinexis, extinext, name_no_extinext, driveinex


if not FileExist(dirinexis)
{
FileCreateDir, %dirinexis%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto:%dirinexis% 
goto principalacc
}
}

FileMove, %operdeshc%, %direcanmo1%, 0
if ErrorLevel
{ 
	
vardustempo:=TimeFileName1()	

namearvhmove3=%dirinexis%\%name_no_extinext% %vardustempo% .%extinext%

FileMove, %operdeshc%, %namearvhmove3%,0


;comprobar si existe el archivo 

if !FileExist(namearvhmove3)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove3%  ¿Continuar con la operación?
IfMsgBox Yes, {
	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}
}




;comprobar si existe el archivo 

if not FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {
 
	  goto, principalacc
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}



goto principalacc


return




restoretipesfiles:

valores=0
Loop
{
	
	

	;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %


porcopert2:=valores*porcopert1

             setformvar1:=Format("{:.2f}",porcopert2)
porcopert2=%setformvar1%




nameofop3:="namexx"DLsopDLs
nameofop4=% %nameofop3%

GuiControl,1:, tollee1, %nameofop4%  %porcopert2%%porctelem%
EnvAdd, numesciniparaporcenta,1

;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %;Nombre de oper y %

	

	
envadd, valores,1


Iniread, operdeshc4,%dhsfileini2%, Operation, %valores%
Iniread, operdeshc24,%dhsfileini2%, Dirmov, %valores%



if operdeshc4=ERROR
Break

if operdeshc4=
Break

if operdeshc4=No aplica
Continue


SplitPath, operdeshc4, , Xcarp,
Variabdeljuicicar:="bertacc"valores
%Variabdeljuicicar%=%Xcarp%

SplitPath, operdeshc24, nombreinext, dirinexis, extinext, name_no_extinext, driveinex


if !FileExist(operdeshc4)
continue


FileGetAttrib, atrielemagrupar3, %operdeshc4%

If InStr(atrielemagrupar3, "D")
        {
Goto, desagruparfolders
}
else
        {
			Goto, desagruparfiles

}







desagruparfolders:





FileMoveDir, %operdeshc4%, %operdeshc24%, 0
if ErrorLevel
{ 
	
vardustempo:=TimeFileName1()	

namearvhmove3=%dirinexis%\%nombreinext% %vardustempo% 

FileMoveDir, %operdeshc4%, %namearvhmove3%,0


;comprobar si existe el archivo 

if !FileExist(namearvhmove3)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove3%  ¿Continuar con la operación?
IfMsgBox Yes, {
	  continue
} Else IfMsgBox No, {
goto Restoreoperaty2
}
}
}




;comprobar si existe el archivo 

if !FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {
 
continue

} Else IfMsgBox No, {
goto Restoreoperaty2
}
}

continue




desagruparfiles:




FileMove, %operdeshc4%, %operdeshc24%, 0
if ErrorLevel
{ 
	
vardustempo:=TimeFileName1()	

namearvhmove3=%dirinexis%\%name_no_extinext% %vardustempo% .%extinext%

FileMove, %operdeshc4%, %namearvhmove3%,0


;comprobar si existe el archivo 

if !FileExist(namearvhmove3)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %namearvhmove3%  ¿Continuar con la operación?
IfMsgBox Yes, {
continue

} Else IfMsgBox No, {
goto Restoreoperaty2
}
}
}




;comprobar si existe el archivo 

if not FileExist(direcanmo1)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %direcanmo1%  ¿Continuar con la operación?
IfMsgBox Yes, {
continue

} Else IfMsgBox No, {
goto Restoreoperaty2
}
}


}


;Borrar carpetas
valores33=0
Loop
{
	
	EnvAdd, valores33,1
	
Variabdeljuicicar:="bertacc"valores33

Variabdeljuicicar33=% %Variabdeljuicicar%


if Variabdeljuicicar33=
	break

if Variabdeljuicicar33=ERROR
	break

setvaxxmZIZE=0


varsize1:=Variabdeljuicicar33 . "\*.*"
Loop, Files, %varsize1%, FDR
{
setvaxxmZIZE:=A_LoopFileSize
}




if setvaxxmZIZE=0
FileRemoveDir, %Variabdeljuicicar33%, 1

}



valoreslimpieza33=0
;limpieza
Loop
{
	
	EnvAdd, valoreslimpieza33,1
	
Variabdeljuicicar:="bertacc"valoreslimpieza33

%Variabdeljuicicar%=


if valoreslimpieza33>=%valores33%
	break


}





goto Restoreoperaty2


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



usonuev1mod:=usonuev1-40
usonuev2mod:=usonuev2-40


usonuev1mod:=usonuev1-guiZw-6
usonuev2mod:=usonuev2-guiZh-28


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













;ordenar listade elementos
SortStrCmpLogical(vTextA, vTextB, vOffset) ;for use with AHK's Sort command
{
	local
	vRet := DllCall("shlwapi\StrCmpLogicalW", "WStr",vTextA, "WStr",vTextB)
	return vRet ? vRet : -vOffset
}





;********************************************************************************
;para los botones con imagenes

UseGDIP(Params*) { ; Loads and initializes the Gdiplus.dll at load-time
   ; GET_MODULE_HANDLE_EX_FLAG_PIN = 0x00000001
   Static GdipObject := ""
        , GdipModule := ""
        , GdipToken  := ""
   Static OnLoad := UseGDIP()
   If (GdipModule = "") {
      If !DllCall("LoadLibrary", "Str", "Gdiplus.dll", "UPtr")
         UseGDIP_Error("The Gdiplus.dll could not be loaded!`n`nThe program will exit!")
      If !DllCall("GetModuleHandleEx", "UInt", 0x00000001, "Str", "Gdiplus.dll", "PtrP", GdipModule, "UInt")
         UseGDIP_Error("The Gdiplus.dll could not be loaded!`n`nThe program will exit!")
      VarSetCapacity(SI, 24, 0), NumPut(1, SI, 0, "UInt") ; size of 64-bit structure
      If DllCall("Gdiplus.dll\GdiplusStartup", "PtrP", GdipToken, "Ptr", &SI, "Ptr", 0)
         UseGDIP_Error("GDI+ could not be startet!`n`nThe program will exit!")
      GdipObject := {Base: {__Delete: Func("UseGDIP").Bind(GdipModule, GdipToken)}}
   }
   Else If (Params[1] = GdipModule) && (Params[2] = GdipToken)
      DllCall("Gdiplus.dll\GdiplusShutdown", "Ptr", GdipToken)
}
UseGDIP_Error(ErrorMsg) {
   MsgBox, 262160, UseGDIP, %ErrorMsg%
   ExitApp
}



;********************************************************************************




;Funciones para octener el tiempo en el nombre del elemento

TimeFileName1()
{
FormatTime, mtec4,HH, H
FormatTime, mtec5,mm, m
FormatTime, mtec6,ss, s


EnvAdd, recontR1,1


if recontR1>999
	recontR1=0


tiempofileget=[%mtec4%%mtec5%%mtec6%R%recontR1%]

return %tiempofileget%
}


TimeFileName2()
{
FormatTime, mtec1,y, y
FormatTime, mtec2,M, M
FormatTime, mtec3,d, d
FormatTime, mtec4,HH, H
FormatTime, mtec5,mm, m
FormatTime, mtec6,ss, s

EnvAdd, recontR1,1


if recontR1>999
	recontR1=0

tiempofileget=[Y%mtec1%M%mtec2%D%mtec3%H%mtec4%M%mtec5%S%mtec6%R%recontR1%]

return %tiempofileget%
}




;clavenewoperation6
Coloresofgui()
{



if activenescomglob=1
	      	{ 
				
		;ventana	especial

coloskingui1:=colorguicome1
coloskingui2:=colorguicome2
coloskingui3:=colorguicome1

return coloskingui1 "|" coloskingui2 "|" coloskingui3
} 




preconvargroup:="namexxgroup" DLsopDLsglob

numconvargroup=% %preconvargroup%





If  numconvargroup=1
	{


coloskingui1:=colorguicome3

coloskingui2:=colorguicome4 
coloskingui3:=colorguicome3


}
else
If  numconvargroup=2
	{

coloskingui1:=colorguicome5

coloskingui2:=colorguicome6 
coloskingui3:=colorguicome5





}
else
If  numconvargroup=3
	{

coloskingui1:=colorguicome7

coloskingui2:=colorguicome8
coloskingui3:=colorguicome7





}
else
If  numconvargroup=4
	{





coloskingui1:=colorguicome9


coloskingui2:=colorguicome10

coloskingui3:=colorguicome9



}
If  numconvargroup=5
	{








coloskingui1:=colorguicome11


coloskingui2:=colorguicome12
coloskingui3:=colorguicome11







}
else
If  numconvargroup=6
	{



coloskingui1:=colorguicome13


coloskingui2:=colorguicome14
coloskingui3:=colorguicome13










}
else
If  numconvargroup=7
	{




coloskingui1:=colorguicome21
coloskingui2:=colorguicome22 
coloskingui3:=colorguicome21


}




return coloskingui1 "|" coloskingui2 "|" coloskingui3


;1Color 
;2Font
;3Color edit
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

GuiControl, esgrup:,%contexit%,%OutColor%



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
goto reloadguiforcontextmenu
return
;Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Nucle


;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS*****















;Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********
;Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********






























winabout1:

;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo
coloskinguicont:=Coloresofgui()

coloskinguicont:=StrSplit(coloskinguicont, "|")

coloskingui1=% coloskinguicont[1]
coloskingui2=% coloskinguicont[2]
coloskingui3=% coloskinguicont[3]
;;;coloresdeguicoloresdeguicoloresdeguicoloresdeguicoloresdeguicolo


Gui, winabout:Color ,%coloskingui1%
Gui, winabout:Font, c0x%coloskingui2%
Gui, winabout:Color , ,%coloskingui3%

    If alwotcome = 1
    {
        Gui, winabout:+AlwaysOnTop
    }



Gui, winabout:+owner
Gui conf:+Disabled  



Gui, winabout:-MinimizeBox





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



Gui, winabout:Add, Text, gaccchtpps7 vaccchtpps7 x5 y355 w416 h20 center, Class_ImageButton by AHK-just-me, Image Buttons for AHK GUIs


Gui, winabout:Add, Text, gaccchtpps8 vaccchtpps8 x5 y375 w416 h20 center, GetSysImgLstIcon retrieve the associated icon by Just me

Gui, winabout:Add, Text, gaccchtpps9 vaccchtpps9 x5 y395 w416 h20 center, ChooseColor display the standard Windows color picker dialog by rbrtryn 


Gui, winabout:Add, Text, gaccchtpps11 vaccchtpps11 x5 y415 w416 h20 center, Colorette - Simple Color Picker (v 1.01) by sumon





Gui, winabout:Add, Text, x5 y520 w416 h70  vacciespinfeng2 gacciespinfeng2 center, Este programa no tiene garantía`, úselo bajo su propio riesgo. No me responsabilizo ante la perdida de datos o el mal uso del mismo.`nLicencia del script escrito por RGUriel`, exceptuando el código de terceros especificado en el mismo: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007





Gui, winabout:Add, Button, x188 y620 w50 h20 gAboutptk, Aceptar



Gui, winabout:Show, Center h650 w426, %nameofthisscript1% - About



return

Aboutptk:
winaboutguiclose:
Gui conf:-Disabled  
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
accchtpps7:
Run,  "https://github.com/AHK-just-me/Class_ImageButton", ,  UseErrorLevel
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




acciespinfeng3:
MsgBox 0x40040, %nameofthisscript1% - Información,  This program has no guarantee, use it at your own risk. I do not take responsibility for the loss of data or the misuse of it.
return















aladeoimagenabout3:
MsgBox 0x40040, %nameofthisscript1% - Información,  Obtén más información dando clic en las letras e imágenes. `nGet more information by clicking on the letters and images.
return




























