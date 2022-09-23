;Changes a property in the compiled executable's version information.





;@Ahk2Exe-SetFileVersion 3.2R
;@Ahk2Exe-SetProductVersion 3.2R
;@Ahk2Exe-SetVersion 3.2R


;@Ahk2Exe-SetInternalName StartKey M
;@Ahk2Exe-SetName StartKey M
;@Ahk2Exe-SetOrigFilename StartKey M
;@Ahk2Exe-SetProductName StartKey M

;@Ahk2Exe-SetDescription Lanzador de aplicaciones con diferentes utilidades.


;____Not CHANGE
;@Ahk2Exe-SetLanguage 0x0409
;@Ahk2Exe-SetCopyright Copyright © 2022 RGUriel


;Changes a property in the compiled executable's version information.

;#################################################################################
;Cambio de seccion "comandos base"
;#################################################################################
;evita conflictos entre variables
#NoEnv

#SingleInstance Force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;sin 10mlseg entre linea de codigo
SetBatchLines -1 

CoordMode,Mouse,Screen
;NAMENAMENAME
;___________________________________________
nameofthisscript1:="StartKey M"
;___________________________________________
;VVVVVVVVVVversión
Veract1:="3.2R"
;VVVVVVVVVVV
global nameofthisscript1

;No APPS
varsaltmencont=0
;Configuración
vatoflooconfig=0

;boton kill  time
btnenbkilltime=1




;copias de seguridad

SplitPath, A_ScriptFullPath, , , , , paofproc1
;********************************************************************************

; para las notas puesto que UTF-8 es mas moderno y para
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS
FileEncoding, UTF-8
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS


;********************************************************************************
;para los colores en diferentes controles de la gui
#Include %A_ScriptDir%\Data\Scripts\Class_CtlColors.ahk

;para los iconos de los archivos en gui
#Include %A_ScriptDir%\Data\Scripts\GetSysImgLstIcon.ahk

#Include %A_ScriptDir%\Data\Scripts\ChooseColor.ahk

SplitPath, A_ScriptFullPath, , , , , driveorig
;********************************************************************************
;para recuperar datos de las DropDownList

CLAVEaini=%A_ScriptDir%\%nameofthisscript1%.ini
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
IniWrite, 1, %CLAVEaini%, Go, f
IniWrite,1, %CLAVEaini%, Go, g
IniWrite, 1, %CLAVEaini%, Go, l
IniWrite, 1, %CLAVEaini%, Go, j
IniWrite, 1, %CLAVEaini%, Go, n
IniWrite, 1, %CLAVEaini%, Go, m



;oscuridad
IniWrite, 0, %CLAVEaini%, Oscuridad, a
IniWrite, 1.30 Horas, %CLAVEaini%, Oscuridad, b
IniWrite, 4680, %CLAVEaini%, Oscuridad, c
IniWrite, 5, %CLAVEaini%, Oscuridad, d





IniWrite, 0, %CLAVEaini%, otros, a
IniWrite, Segundos, %CLAVEaini%, otros, b
IniWrite, 30000, %CLAVEaini%, otros, c
IniWrite, 1, %CLAVEaini%, otros, d
IniWrite, %A_ScriptDir%\Save, %CLAVEaini%, otros, e
IniWrite, DLs.exe, %CLAVEaini%, otros, f
IniWrite, 1, %CLAVEaini%, otros, g


IniWrite, 0, %CLAVEaini%, NotApps, a

IniWrite, 1, %CLAVEaini%, Folder, a
IniWrite, 1, %CLAVEaini%, Folder, b


IniWrite, Nota 1, %CLAVEaini%, Nanot, a
IniWrite, Nota 2, %CLAVEaini%, Nanot, b
IniWrite, Nota 3, %CLAVEaini%, Nanot, c
IniWrite, Nota 4, %CLAVEaini%, Nanot, d
IniWrite, Nota 5, %CLAVEaini%, Nanot, e
IniWrite, Nota 6, %CLAVEaini%, Nanot, f
IniWrite, Nota 7, %CLAVEaini%, Nanot, g
IniWrite, Nota 8, %CLAVEaini%, Nanot, h
IniWrite, Nota 9, %CLAVEaini%, Nanot, i
IniWrite, Nota 10, %CLAVEaini%, Nanot, j







;Comandos por medio de Hotkey
varnumbcomhk=0
Loop
{
	varnumbcomhk++
IniWrite, 0, %CLAVEaini%, ComandosHotkey, %varnumbcomhk%
	varnumbcomhk++
IniWrite, ^!8, %CLAVEaini%, ComandosHotkey, %varnumbcomhk%
	varnumbcomhk++
IniWrite, No establecido, %CLAVEaini%, ComandosHotkey, %varnumbcomhk%


}until varnumbcomhk=60











IniWrite,^|, %CLAVEaini%, HK, a
IniWrite,^!0, %CLAVEaini%, HK, b
IniWrite,^!m, %CLAVEaini%, HK, c
IniWrite,0, %CLAVEaini%, HK, 1
IniWrite,0, %CLAVEaini%, HK, 2
IniWrite,0, %CLAVEaini%, HK, 3



;**********************************************************
;Start-Start Apps


	IniWrite, 0, %CLAVEaini%, Start-Start Apps, a
valinwrit=0
Loop
{
	EnvAdd, valinwrit,1
	IniWrite, 0, %CLAVEaini%, Start-Start Apps, %valinwrit%
	
}until valinwrit=40

Loop
{
	EnvAdd, valinwrit,1
	IniWrite, No establecido, %CLAVEaini%, Start-Start Apps, %valinwrit%
	
}until valinwrit=60



;**********************************************************
;Close-Close Apps


	IniWrite, 0, %CLAVEaini%, Close-Close Apps, a
valinwrit=0
Loop
{
	EnvAdd, valinwrit,1
	IniWrite, 0, %CLAVEaini%, Close-Close Apps, %valinwrit%
	
}until valinwrit=40

Loop
{
	EnvAdd, valinwrit,1
	IniWrite, No establecido, %CLAVEaini%, Close-Close Apps, %valinwrit%
	
}until valinwrit=60





IniWrite, Center, %CLAVEaini%, window position, gui_position
IniWrite, Center, %CLAVEaini%, window position, gui_position2
;positionn of gui if is new use in new pc
IniWrite, 700/200, %CLAVEaini%, pcnewres, a
;programas predeterminados
IniWrite, Nombre no establecido, %CLAVEaini%, Programas, 1
IniWrite, Ruta no establecida, %CLAVEaini%, Programas, 2
IniWrite, Nombre no establecido, %CLAVEaini%, Programas, 3
IniWrite, Ruta no establecida, %CLAVEaini%, Programas, 4
IniWrite, Nombre no establecido, %CLAVEaini%, Programas, 5
IniWrite, Ruta no establecida, %CLAVEaini%, Programas, 6
IniWrite, Nombre no establecido, %CLAVEaini%, Programas, 7
IniWrite, Ruta no establecida, %CLAVEaini%, Programas, 8
IniWrite, Nombre no establecido, %CLAVEaini%, Programas, 9
IniWrite, Ruta no establecida, %CLAVEaini%, Programas, 10

IniWrite, Ruta no establecida, %CLAVEaini%, Programas, 13
IniWrite, Ruta no establecida, %CLAVEaini%, Programas, 14



;Brillo....................................
iniwrite,  0, %CLAVEaini%, Brillo, a
iniwrite, 60, %CLAVEaini%, Brillo, b
iniwrite, 0, %CLAVEaini%, Brillo, c
iniwrite, 120, %CLAVEaini%, Brillo, d

;*********************************************************
;copias de seguridad

IniWrite, 0, %CLAVEaini%, CS, a



;**********************************************************

;Letra
;Bold o otro
;Tamaño
;color de letra
;color de fondo

;EDIT Custom
IniWrite, Verdana, %CLAVEaini%, EditNotas,1
IniWrite, 2, %CLAVEaini%, EditNotas,2
IniWrite, 8, %CLAVEaini%, EditNotas,3
IniWrite, ffffff, %CLAVEaini%, EditNotas,4
IniWrite, 200729, %CLAVEaini%, EditNotas,5
IniWrite, 0, %CLAVEaini%, EditNotas,6


;SKM Custom
IniWrite, Verdana, %CLAVEaini%, STKG,1
IniWrite, 2, %CLAVEaini%, STKG,2
IniWrite, 8, %CLAVEaini%, STKG,3
IniWrite, ffffff, %CLAVEaini%, STKG,4
IniWrite, 23222B, %CLAVEaini%, STKG,5
IniWrite, 1C1B22, %CLAVEaini%, STKG,6


IniWrite, 1, %CLAVEaini%, STKG,10
IniWrite, 12, %CLAVEaini%, STKG,11
IniWrite, ffffff, %CLAVEaini%, STKG,12
IniWrite, 1, %CLAVEaini%, STKG,13
IniWrite, Comic Sans MS, %CLAVEaini%, STKG,14
IniWrite, 1C1B22, %CLAVEaini%, STKG,15

;colores personalizados
;Color por defecto
colsant_Def:=[16777215,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

Loop % colsant_Def.Length()
colsant_Def_W .= colsant_Def[A_Index] . "|"

IniWrite, % colsant_Def_W, %CLAVEaini%, STKG,16
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
IniRead, guco1, %CLAVEaini%, Go, a
IniRead, guco2, %CLAVEaini%, Go, b
IniRead, guco3, %CLAVEaini%, Go, c
IniRead, guco4, %CLAVEaini%, Go, d
IniRead, guco5, %CLAVEaini%, Go, e
IniRead, gucolll, %CLAVEaini%, Go, f
IniRead,gucoconfig, %CLAVEaini%, Go, g
IniRead, guco14, %CLAVEaini%, Go, l
IniRead,gucojjj, %CLAVEaini%, Go, j



IniRead, notaseleccion, %CLAVEaini%, Go, n
IniRead, idlaccguivariacc, %CLAVEaini%, Go, m



IniRead, guco11, %CLAVEaini%, otros, a
IniRead, guco13, %CLAVEaini%, otros, b
IniRead, tiemenhid1, %CLAVEaini%, otros, c
IniRead, desacmayusbloq, %CLAVEaini%, otros, d
IniRead, CLAVESave, %CLAVEaini%, otros, e
IniRead, CLAVEDLsexe, %CLAVEaini%, otros, f
IniRead, guco12, %CLAVEaini%, otros, g

IniRead, Startwoapps, %CLAVEaini%, NotApps, a

;oscuridad
IniRead, oscur1, %CLAVEaini%, Oscuridad, a
IniRead, oscur2, %CLAVEaini%, Oscuridad, b
IniRead, oscur3, %CLAVEaini%, Oscuridad, c
IniRead, oscur4, %CLAVEaini%, Oscuridad, d





;Comandos por medio de Hotkey
varnumbcomhk=0
Loop
{
	varnumbcomhk++
	
	concomhoke:="comhoke"varnumbcomhk
IniRead, %concomhoke%, %CLAVEaini%, ComandosHotkey, %varnumbcomhk%

}until varnumbcomhk=60



iniRead,convsethotkeynam1, %CLAVEaini%, HK, a
iniRead,convsethotkeynam2, %CLAVEaini%, HK, b
iniRead,convsethotkeynam3, %CLAVEaini%, HK, c
iniRead,sethotkeysoff1, %CLAVEaini%, HK, 1
iniRead,sethotkeysoff2, %CLAVEaini%, HK, 2
iniRead,sethotkeysoff3, %CLAVEaini%, HK, 3





IniRead, Notaname1, %CLAVEaini%, Nanot, a
IniRead, Notaname2, %CLAVEaini%, Nanot, b
IniRead, Notaname3, %CLAVEaini%, Nanot, c
IniRead, Notaname4, %CLAVEaini%, Nanot, d
IniRead, Notaname5, %CLAVEaini%, Nanot, e
IniRead, Notaname6, %CLAVEaini%, Nanot, f
IniRead, Notaname7, %CLAVEaini%, Nanot, g
IniRead, Notaname8, %CLAVEaini%, Nanot, h
IniRead, Notaname9, %CLAVEaini%, Nanot, i
IniRead, Notaname10, %CLAVEaini%, Nanot, j



;**********************************************************
;**********************************************************

IniRead, vdlsnumpos1, %CLAVEaini%, Folder, a
IniRead, vdlsnumpos2, %CLAVEaini%, Folder, b

;**********************************************************

;Start-Start Apps
IniRead, StartStartApps, %CLAVEaini%, Start-Start Apps, a
valinwrit=0
Loop
{
	EnvAdd, valinwrit,1
	convalinwrit:="zxcappssa" valinwrit
	IniRead, %convalinwrit%, %CLAVEaini%, Start-Start Apps, %valinwrit%
	
}until valinwrit=60


;**********************************************************
;Close-Close Apps


	IniRead, CloseCloseApps, %CLAVEaini%, Close-Close Apps, a
valinwrit=0
Loop
{
	EnvAdd, valinwrit,1
    
    	convalinwrit:="zxcappcca" valinwrit
    
	IniRead, %convalinwrit%, %CLAVEaini%, Close-Close Apps, %valinwrit%
	
}until valinwrit=60

;**********************************************************

IniRead, gui_position, %CLAVEaini%, window position, gui_position
IniRead, gui_position2, %CLAVEaini%, window position, gui_position2

;positionn of gui if is new use in new pc
IniRead, pcnewres, %CLAVEaini%, pcnewres, a
;*********************************************************
;copias de seguridad
IniRead, gucoval1, %CLAVEaini%, CS, a

;#################################################################################
;#################################################################################
;programas predeterminados
Iniread, progest1, %CLAVEaini%, Programas, 1
Iniread, progest2, %CLAVEaini%, Programas, 2
Iniread, progest3, %CLAVEaini%, Programas, 3
Iniread, progest4, %CLAVEaini%, Programas, 4
Iniread, progest5, %CLAVEaini%, Programas, 5
Iniread, progest6, %CLAVEaini%, Programas, 6
Iniread, progest7, %CLAVEaini%, Programas, 7
Iniread, progest8, %CLAVEaini%, Programas, 8
Iniread, progest9, %CLAVEaini%, Programas, 9
Iniread, progest10, %CLAVEaini%, Programas, 10

Iniread, progest13, %CLAVEaini%, Programas, 13
Iniread, progest14, %CLAVEaini%, Programas, 14



;Brillo....................................
Iniread,  Brilloeninic, %CLAVEaini%, Brillo, a
Iniread,  Brilloeninicvalor, %CLAVEaini%, Brillo, b
Iniread, Brilloencierre, %CLAVEaini%, Brillo, c
Iniread, Brilloencierrevalor, %CLAVEaini%, Brillo, d

























;EDIT Custom
IniRead, edinot1, %CLAVEaini%, EditNotas,1
IniRead, edinot2, %CLAVEaini%, EditNotas,2
IniRead, edinot3, %CLAVEaini%, EditNotas,3
IniRead, edinot4, %CLAVEaini%, EditNotas,4
IniRead, edinot5, %CLAVEaini%, EditNotas,5
IniRead, edinot6, %CLAVEaini%, EditNotas,6

;Stk Custom
IniRead, stkcg1, %CLAVEaini%, STKG,1
IniRead, stkcg2, %CLAVEaini%, STKG,2
IniRead, stkcg3, %CLAVEaini%, STKG,3
IniRead, stkcg4, %CLAVEaini%, STKG,4
IniRead, stkcg5, %CLAVEaini%, STKG,5
IniRead, stkcg6, %CLAVEaini%, STKG,6


IniRead, ttesactiv, %CLAVEaini%, STKG,10
IniRead, zzletrattesp, %CLAVEaini%, STKG,11
IniRead, ttesguicolorfont, %CLAVEaini%, STKG,12
IniRead, ttesguifontstylepre, %CLAVEaini%, STKG,13
IniRead, ttesguifont, %CLAVEaini%, STKG,14
IniRead, ttesguicolor, %CLAVEaini%, STKG,15

;colores personalizados
IniRead, colsant_R, %CLAVEaini%, STKG,16
Palette2 := StrSplit(colsant_R,"|")
;colores personalizados


;Avisos
IniRead, gmensaviso1, %CLAVEaini%, Avisos, a
IniRead, gmensaviso2, %CLAVEaini%, Avisos, b
IniRead, gmensaviso3, %CLAVEaini%, Avisos, c
IniRead, gmensaviso4, %CLAVEaini%, Avisos, d
IniRead, gmensaviso5, %CLAVEaini%, Avisos, e
IniRead, gmensaviso6, %CLAVEaini%, Avisos, f



























;ttesttesttesttesttes
global ttesactiv
;ttesttesttesttesttes





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
	winzmodif_Ab=0
	
	 ; Ventana sin registro de cierre anterior 
    winzmodif_gec=0
	 winzmodif_osc1=0
	 winzmodif_guinam=0
	 winzmodif_copygui=0
}
else
{
	winzmodif_1=1
	winzmodif_Ab=1
	
	 ; Ventana sin registro de cierre anterior 
    winzmodif_gec=0
	winzmodif_osc1=0
	winzmodif_guinam=0
	 winzmodif_copygui=0
}


Global usonuev1
Global usonuev2
Global usonuev3
Global pcnewres
Global cambscreenvvpcn1
Global cambscreenvvpcn2
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease











if !FileExist(CLAVESave)
FileCreateDir, %CLAVESave%


if !FileExist(CLAVESave)
{
   CLAVESave=%A_ScriptDir%\Save
   FileCreateDir, %CLAVESave%
}




;programas


if !FileExist(progest14)
{
   
progest14name:="Ruta no establecida"
   QDir1:="Ruta no establecida"
}
else
   {
   
   SplitPath, progest14, , , , progest14name, 
    QDir1:=progest14
}


SplitPath, progest12, , ZxxDir
progest7zub1=%ZxxDir%\7z.exe
progest7zub2=%ZxxDir%\App\7-Zip64\7z.exe

progest7zub3:=progest7zub1
7ZipPortable:=progest12
if  !FileExist(progest7zub1)
    {
progest7zub3:=progest7zub2
if  !FileExist(progest7zub2)
    {
progest7zub3:="Ruta no establecida"
}
}

if !FileExist(progest13)
{
   

   notepad:="Ruta no establecida"
}
else
   {
notepad:=progest13
}






;;NOTAS
CLAVENots=%A_ScriptDir%\Data\Notas

if !FileExist(CLAVENots)
FileCreateDir, %CLAVENots%


checlistvar=0
loop 10
{
EnvAdd checlistvar, 1


calvfixn=%CLAVENots%\Note%checlistvar%.txt


if !FileExist(calvfixn)
   FileCopy, %A_ScriptDir%\Data\0.3, %calvfixn%, [, 0]

}




;Ojos ojos 
if  oscur1=1
{
oscur8:=oscur4*1000
oscur6:=oscur3*1000
SetTimer, ojospormsg, %oscur6%
}
;Ojos ojos 
;*********************************************************Timer



;especial to para lanzar set inicio
;especial to para lanzar set inicio
if vdlsnumpos2=1
	FoldExpl_univers=0
else
if vdlsnumpos2=2
FoldExpl_univers=2
else
   if vdlsnumpos2=3
{
	if !FileExist(QDir1)
		FoldExpl_univers=0
	else
	FoldExpl_univers=%QDir1%
}
;especial to para lanzar set inicio
;especial to para lanzar set inicio




;Not APPS
if Startwoapps=1
{
IniWrite, 0, %CLAVEaini%, NotApps, a
Startwoapps=0
goto notapps1
}
;********************************************************

;**********************************************************
;para lanzar set inicio


if StartStartApps=1
{

;especial to para lanzar set inicio
;especial to para lanzar set inicio

if vdlsnumpos2=2
FoldExpl_univers=0

;especial to para lanzar set inicio
;especial to para lanzar set inicio


varnnes1=0
varnnes2=20
varnnes3=40

loop 20
{

EnvAdd, varnnes1, 1
        EnvAdd, varnnes2, 1
        EnvAdd, varnnes3, 1
        
cexxart1:="zxcappssa"varnnes1
cexxart2:="zxcappssa"varnnes2
cexxart3:="zxcappssa"varnnes3
entradacomSTCL=% %cexxart3%

If %cexxart1%=0
continue

if %cexxart2%=1
continue


If entradacomSTCL=No establecido
continue

If entradacomSTCL=
continue



ElemCom_STCL1=
ElemCom_STCL2=

numberDLs_Start=0
Loop, Parse, entradacomSTCL, |,
{
   
numberDLs_Start++

PreeElemComstringvar:="ElemCom_STCL" numberDLs_Start



%PreeElemComstringvar%=%A_LoopField%
   
}until numberDLs_Start=2



;SplitPath, , 
;SplitPath, ElemCom_STCL1, nombreespecialeXE, , extenespexe
;if extenespexe=exe
;{
;if not Process, Exist, %nombreespecialeXE%
;{
;continue
;}
;}


if ElemCom_STCL2=Lista
{
	StartCommandDLs_Lista(ElemCom_STCL1,FoldExpl_univers,LinkNaveg_univers)
	continue
}


;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_STCL1,ElemCom_STCL2,FoldExpl_univers,LinkNaveg_univers)



}



}


;especial to para lanzar set inicio
;especial to para lanzar set inicio

if vdlsnumpos2=2
FoldExpl_univers=2

;especial to para lanzar set inicio
;especial to para lanzar set inicio



notapps1:








;Brillo....................................
if Brilloeninic=1
DisplaySetBrightness( Brilloeninicvalor)
;Brillo....................................


;para el boton exit app....................................
ifvaccinfinalprogui=0



;#################################################################################
;Copia de seguridad de nw

ClaveCose=%A_ScriptDir%\Data\CS
if !FileExist(ClaveCose)
FileCreateDir, %ClaveCose%






If gucoval1=20
   gucoval1=0




;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS*****
;#################################################################################
;Cambio de seccion "entradas para la DropDownList "
;#################################################################################

;#################################################################################
;#################################################################################
;I.......................................DLs
CLAVEDLs=%A_ScriptDir%\Data\DLs
if !FileExist(CLAVEDLs)
FileCreateDir, %CLAVEDLs%
;I.......................................DLs
;#################################################################################
;#################################################################################

;#############
global CLAVEDLs

;Create lists

IniDLs:=CLAVEDLs "\DLsa.ini"
if !FileExist(IniDLs)
CreateListDLs("a")


IniDLs:=CLAVEDLs "\DLsj.ini"
if !FileExist(IniDLs)
	CreateListDLs("j")



IniDLs:=CLAVEDLs "\DLsl.ini"
if !FileExist(IniDLs)
CreateListDLs("l")


IniDLs:=CLAVEDLs "\DLsg.ini"
if !FileExist(IniDLs)
	CreateListDLs("g")


IniDLs:=CLAVEDLs "\DLsf.ini"
if !FileExist(IniDLs)
CreateListDLs("f")


IniDLs:=CLAVEDLs "\DLsb.ini"
if !FileExist(IniDLs)
	CreateListDLs("b")


IniDLs:=CLAVEDLs "\DLse.ini"
if !FileExist(IniDLs)
CreateListDLs("e")


IniDLs:=CLAVEDLs "\DLsr.ini"
if !FileExist(IniDLs)
	CreateListDLs("r")


IniDLs:=CLAVEDLs "\DLsc.ini"
if !FileExist(IniDLs)
CreateListDLs("c")












contespstkvardls=0
loop 9
{
EnvAdd, contespstkvardls,1

if contespstkvardls=1
LetraofDLs:="a"
else
if contespstkvardls=2
LetraofDLs:="j"
else
if contespstkvardls=3
LetraofDLs:="l"
else
if contespstkvardls=4
LetraofDLs:="g"
else
if contespstkvardls=5
LetraofDLs:="f"
else
if contespstkvardls=6
LetraofDLs:="b"
else
if contespstkvardls=7
LetraofDLs:="e"
else
if contespstkvardls=8
LetraofDLs:="r"
else
if contespstkvardls=9
LetraofDLs:="c"

















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



;#################################################################################
;#################################################################################





DLsDLsfaccopt=
(Join|
Explorer.exe|
Clipboard|
%progest14name%|
)















X =
(Join|
Apagar|
Cerrar sesion|
Reiniciar|
Suspender|
)


;para la tab de los links
linkww=
(Join|
Predeterminado|
%progest1%|
%progest3%|
%progest5%|
%progest7%|
%progest9%|
Clipboard|
)


NOTs=
(Join|
%Notaname1%
%Notaname2%
%Notaname3%
%Notaname4%
%Notaname5%
%Notaname6%
%Notaname7%
%Notaname8%
%Notaname9%
%Notaname10%
)


accguicont=
(Join|
Copiar ruta del elemento|
Programa  A|
Programa  B|
Programa  C|
Programa  D|
Programa  E|
Mover al directorio especial|
Copiar al directorio especial|
)





;#################################################################################
;gui utilitarias
;#################################################################################


if  oscur1=1
{
;Gui lista ojos
Gui, osc1:+AlwaysOnTop -Caption +ToolWindow
Gui, osc1:Add, Picture, x0 y0 w100 h50 , %A_ScriptDir%\Data\Gui\Oscuridad.png

}




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

;TTEs
if ttesactiv=1
{

     if ttesguifontstylepre=1
 ttesguifontstyle:="Norm"
   else
          if ttesguifontstylepre=2
 ttesguifontstyle:="Bold"
 else
       if ttesguifontstylepre=3
 ttesguifontstyle:="Italic"
 else
       if ttesguifontstylepre=4
 ttesguifontstyle:="Strike"
    else
       if ttesguifontstylepre=5
 ttesguifontstyle:="Underline"
}





;Notas custom

if edinot6=0
{
     if edinot2=1
 edinotfin2:="Norm"
   else
          if edinot2=2
 edinotfin2:="Bold"
 else
       if edinot2=3
 edinotfin2:="Italic"
 else
       if edinot2=4
 edinotfin2:="Strike"
    else
       if edinot2=5
 edinotfin2:="Underline"
 
}






;#################################################################################
;Cambio de seccion "GUI"
;#################################################################################


;#################################################################################
;Claves generales
;#################################################################################
;#############
;Cambia cuando se agregen tabs
numerodetabs=5



;para el bloqueo de las mayusculas




if desacmayusbloq=0
Hotkey Capslock , off,
else
{   
Hotkey Capslock , on

SetCapsLockState, Off  
stwcaps=0
}

;para reload
Henaccrein=0








;menucontextual










;Imagen 1 



Menu,  direct1, Add, %nameofthisscript1%, imageab4
Menu,  direct1, Add,  Destino, imageab5


;Utilidades



Menu, Brillo1, Add, De Inicio, briext1
Menu, Brillo1, Add, Default, briext3
Menu, Brillo1, Add, De Exit, briext2

Menu, utilit1, Add, Vaciar papelera, Coexidl34
Menu, utilit1, Add,  Extensiones de los archivos, Coexidl31
Menu, utilit1, Add,  Archivos ocultos, ocultos1
Menu, utilit1, Add
Menu, utilit1, Add, Brillo, :Brillo1

;********************************************************************************
;ocultar si el timer para ocultar esta activo
if guco11=1
{
Menu, utilit1, Add, No ocultar,killtime

}
Menu, utilit1, Add, Centrar la ventana,cac12
Menu, utilit1, Add
Menu, utilit1, Add, Directorio, :direct1
Menu, utilit1, Add, Reparar configuración, repairini




Menu, nottapps1, Add, Reiniciar, reloadcomplex
Menu, nottapps1, Add, Reiniciar, contexreinic
Menu, nottapps1, Add, Exit, reloadcomplex2




Menu, menu1, Add, Utilidades, :utilit1
Menu, menu1, Add, Configuración, sett1
Menu, menu1, Add
Menu, menu1, Add, No Start-Close, :nottapps1
Menu, menu1, Add, Reiniciar, contexreinic
Menu, menu1, Add, Exit, exitopc





;Tray---------------------------------------
Menu, Tray, NoStandard
Menu, Tray, Add, Mostrar ventana, nretor 
Menu, Tray, Add, Utilidades, :utilit1
Menu, Tray, Add, Configuracición, sett1
Menu, Tray, Add, No Start-Close, :nottapps1
Menu, Tray, Add, Reiniciar, contexreinic
Menu, Tray, Add, Exit, exitopc

Menu, Tray, Default, Mostrar ventana
;Tray---------------------------------------







;Menus especiales ;Menus especiale ;Menus especiale ;Menus especiale



;menu acceso rapido2
Menu, menusele2, Add,Abrir carpeta,menupictop1
Menu, menusele2, Add, Copiar comando ,menupictop2
Menu, menusele2, Add, Mostrar comando ,ShowComDLsrr
Menu, menusele2, Add, Borrar comando ,EraseComDLsrr
Menu, menusele2, Add, Abrir lista, iniforbaux
Menu, menusele2, Add,Mostrar serial, iniforbaux1


;menu acceso rapido3
Menu, menusele3, Add, Copiar comando ,menupictop2
Menu, menusele3, Add, Mostrar comando ,ShowComDLsrr
Menu, menusele3, Add, Borrar comando ,EraseComDLsrr
Menu, menusele3, Add, Abrir lista, iniforbaux
Menu, menusele3, Add,Mostrar serial, iniforbaux1





;imageofgo2---------------------------------------

Menu, menupic1, Add,Abrir carpeta, imageab1
Menu, menupic1, Add, Copiar comando ,copiarex1
Menu, menupic1, Add, Mostrar comando ,ShowComDLsaa
Menu, menupic1, Add, Borrar comando ,EraseComDLsaa
Menu, menupic1, Add, Abrir lista, acc5


Menu, menupic1pre, Add, Copiar comando ,copiarex1
Menu, menupic1pre, Add, Mostrar comando ,ShowComDLsaa
Menu, menupic1pre, Add, Borrar comando ,EraseComDLsaa
Menu, menupic1pre, Add, Abrir lista, acc5
;Images---------------------------------------

;imageofgo1---------------------------------------

Menu, menupic2, Add,Abrir carpeta, imageab2
Menu, menupic2, Add, Copiar comando ,copiarex2
Menu, menupic2, Add, Mostrar comando ,ShowComDLsbb
Menu, menupic2, Add, Borrar comando ,EraseComDLsbb
Menu, menupic2, Add, Abrir lista, Externo2



Menu, menupic2pre, Add, Copiar comando ,copiarex2
Menu, menupic2pre, Add, Mostrar comando ,ShowComDLsbb
Menu, menupic2pre, Add, Borrar comando ,EraseComDLsbb
Menu, menupic2pre, Add, Abrir lista, Externo2
;Images---------------------------------------



;imageofgo3---------------------------------------

Menu, menupic3, Add,Abrir carpeta, imageab6
Menu, menupic3, Add, Copiar comando ,copiarex3
Menu, menupic3, Add, Mostrar comando ,ShowComDLscc
Menu, menupic3, Add, Borrar comando ,EraseComDLscc
Menu, menupic3, Add, Abrir lista, Externo3

Menu, menupic3pre, Add, Copiar comando ,copiarex3
Menu, menupic3pre, Add, Mostrar comando ,ShowComDLscc
Menu, menupic3pre, Add, Borrar comando ,EraseComDLscc
Menu, menupic3pre, Add, Abrir lista, Externo3
;Images---------------------------------------



;imageofgo4---------------------------------------

Menu, menupic4, Add,Abrir carpeta, imageab3
Menu, menupic4, Add, Copiar comando ,copiarex4
Menu, menupic4, Add, Mostrar comando ,ShowComDLsee
Menu, menupic4, Add, Borrar comando ,EraseComDLsee
Menu, menupic4, Add, Abrir lista, inifiles



Menu, menupic4pre, Add, Copiar comando ,copiarex4
Menu, menupic4pre, Add, Mostrar comando ,ShowComDLsee
Menu, menupic4pre, Add, Borrar comando ,EraseComDLsee
Menu, menupic4pre, Add, Abrir lista, inifiles
;Images---------------------------------------







;imageofgo5---------------------------------------
Menu, menupic5, Add,Abrir carpeta, openfolderSejj
Menu, menupic5, Add, Copiar comando, clipcomandclip
Menu, menupic5, Add, Mostrar comando ,ShowComDLsjj
Menu, menupic5, Add, Borrar comando ,EraseComDLsjj
Menu, menupic5, Add, Abrir lista, Clipb

Menu, menupic5pre, Add, Copiar comando, clipcomandclip
Menu, menupic5pre, Add, Mostrar comando ,ShowComDLsjj
Menu, menupic5pre, Add, Borrar comando ,EraseComDLsjj
Menu, menupic5pre, Add, Abrir lista, Clipb
;Images---------------------------------------



;imagenconf---------------------------------------
Menu, menupic16, Add,Abrir carpeta, openfoldersegg
Menu, menupic16, Add, Copiar comando, clipcomandsett
Menu, menupic16, Add, Mostrar comando ,ShowComDLsgg
Menu, menupic16, Add, Borrar comando ,EraseComDLsgg
Menu, menupic16, Add, Abrir lista, congini


Menu, menupic16pre, Add, Copiar comando, clipcomandsett
Menu, menupic16pre, Add, Mostrar comando ,ShowComDLsgg
Menu, menupic16pre, Add, Borrar comando ,EraseComDLsgg
Menu, menupic16pre, Add, Abrir lista, congini
;Images---------------------------------------


;icocarpeta1---------------------------------------

Menu, menupic17, Add,Abrir carpeta, openfolderfolder
Menu, menupic17, Add, Copiar comando , clipcomandfold
Menu, menupic17, Add, Mostrar comando ,ShowComDLsff
Menu, menupic17, Add, Borrar comando ,EraseComDLsff
Menu, menupic17, Add, Abrir lista, inifolders


Menu, menupic17pre, Add, Copiar comando , clipcomandfold
Menu, menupic17pre, Add, Mostrar comando ,ShowComDLsff
Menu, menupic17pre, Add, Borrar comando ,EraseComDLsff
Menu, menupic17pre, Add, Abrir lista, inifolders
;Images---------------------------------------




;imageofgo6---------------------------------------

Menu, menupic18, Add,Abrir carpeta, openfolderSell
Menu, menupic18, Add, Copiar comando , clipcomandlinks
Menu, menupic18, Add, Mostrar comando ,ShowComDLsll
Menu, menupic18, Add, Borrar comando ,EraseComDLsll
Menu, menupic18, Add, Abrir lista, Cliplinks


Menu, menupic18pre, Add, Copiar comando , clipcomandlinks
Menu, menupic18pre, Add, Mostrar comando ,ShowComDLsll
Menu, menupic18pre, Add, Borrar comando ,EraseComDLsll
Menu, menupic18pre, Add, Abrir lista, Cliplinks
;Images---------------------------------------

;hotkeys ----------------------------------------------



;Agregar to menus aux
vanumbmenu=0
Loop
{
	vanumbmenu++
	
	if vanumbmenu=1
		namexmenu:="menusele2"
	else
	if vanumbmenu=2
		namexmenu:="menusele3"
		else
	if vanumbmenu=3
		namexmenu:="menupic1"
		else
	if vanumbmenu=4
		namexmenu:="menupic1pre"
		else
	if vanumbmenu=5
		namexmenu:="menupic2"
		else
	if vanumbmenu=6
		namexmenu:="menupic2pre"
		else
	if vanumbmenu=7
		namexmenu:="menupic3"
		else
	if vanumbmenu=8
		namexmenu:="menupic3pre"
		else
	if vanumbmenu=9
		namexmenu:="menupic4"
		else
	if vanumbmenu=10
		namexmenu:="menupic4pre"
		else
	if vanumbmenu=11
		namexmenu:="menupic5"
		else
	if vanumbmenu=12
		namexmenu:="menupic5pre"
			else
	if vanumbmenu=13
		namexmenu:="menupic16"
		else
	if vanumbmenu=14
		namexmenu:="menupic16pre"
		else
	if vanumbmenu=15
		namexmenu:="menupic17"
		else
	if vanumbmenu=16
		namexmenu:="menupic17pre"
			else
	if vanumbmenu=17
		namexmenu:="menupic18"
		else
	if vanumbmenu=18
		namexmenu:="menupic18pre"


	
	
	
	
Menu, %namexmenu%, Add
Menu, %namexmenu%, Add, Utilidades, :utilit1
Menu, %namexmenu%, Add, Configuración, sett1
Menu, %namexmenu%, Add
Menu, %namexmenu%, Add, No Start-Close, :nottapps1
Menu, %namexmenu%, Add, Reiniciar, contexreinic
Menu, %namexmenu%, Add, Exit, exitopc
	
}until vanumbmenu=18



;otros menus de otras ventanas-;otros menus de otras ventanas

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

Menu, notagmenucont, Add, Color personalizado, slectco1
Menu, notagmenucont, Add, Identificar color, startcolor


Menu, guistkcmenunorm, Add, Muestra previa, Probarguiexp

;otros menus de otras ventanas-;otros menus de otras ventanas

;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;INICIO



;Comandos por medio de Hotkey
varnumbcomhk=0
Loop
{
varnumbcomhk++


;Si esta desactivado no continuar
convarcomhoke:="comhoke"varnumbcomhk
preconvarcomhoke=% %convarcomhoke%

if preconvarcomhoke=0
{
	varnumbcomhk+=2
	continue
}






;Checar errores de Hotkey
varnumbcomhk++
convarcomhoke:="comhoke"varnumbcomhk
preconvarcomhoke=% %convarcomhoke%

if (preconvarcomhoke="ERROR" or preconvarcomhoke="")
{
	%convarcomhoke%=^!8
	varnumbcomhk2=%varnumbcomhk%
	varnumbcomhk2--
	
	convarcomhoke:="comhoke"varnumbcomhk2
%convarcomhoke%=0
	
	
		varnumbcomhk+=1
	continue
}




;Checar si existe el comando

varnumbcomhk++

convarcomhoke:="comhoke"varnumbcomhk
preconvarcomhoke=% %convarcomhoke%


numberDLs_Start=0
Loop, Parse, preconvarcomhoke, |,
{
   
numberDLs_Start++

PreeElemComstringvar:="ElemCom_HKHK" numberDLs_Start



%PreeElemComstringvar%=%A_LoopField%
   
}until numberDLs_Start=2





if (ElemCom_HKHK2="Config" or ElemCom_HKHK2="Clipboard" or ElemCom_HKHK2="Link")
{
goto ponerhk
}

;finalmente se verifica la existencia de los elementos
        if !FileExist(ElemCom_HKHK1)
		{
			varnumbcomhkrest:=varnumbcomhk
			varnumbcomhkrest-=2
			convarcomhokerest:="comhoke"varnumbcomhkrest
				%convarcomhokerest%=0
		
				continue
		}
         

ponerhk:
;activar hotkeys




	varnumbcomhk2=%varnumbcomhk%
	varnumbcomhk2--

convarcomhoke:="comhoke"varnumbcomhk2
preconvarcomhoke=% %convarcomhoke%


predesvvarnumbcomhk:=varnumbcomhk/3
desvvarnumbcomhk :=Format("{:d}", predesvvarnumbcomhk)

conaccioncomhoke:="accioncomhoke" desvvarnumbcomhk



   Hotkey, %preconvarcomhoke% ,%conaccioncomhoke%



}until varnumbcomhk=60



;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey



      if (convsethotkeynam1="ERROR" or  convsethotkeynam1="" )
    convsethotkeynam1=^!0
   
   if (convsethotkeynam2="ERROR" or  convsethotkeynam2="" )
    convsethotkeynam2=^!0


   if (convsethotkeynam3="ERROR" or  convsethotkeynam3="" )
convsethotkeynam3=^!m



; Hotkeys normales
 if sethotkeysoff1=1
Hotkey, %convsethotkeynam1% ,accionhotkey1

 if sethotkeysoff2=1
   Hotkey, %convsethotkeynam2% ,accionhotkey2
   
    if sethotkeysoff3=1
   Hotkey, %convsethotkeynam3% ,accionhotkey3
;hotkeys ----------------------------------------------
;#################################################################################
;seccion GUI
;#################################################################################


;tooltips botones auxiliares
;TTES
if ttesactiv=0
{

varconbotaux1=0
Loop
{
   Envadd, varconbotaux1,1
   
   
   conbotaux1:="DLsr"varconbotaux1
conbotaux2=% %conbotaux1%

if conbotaux2=.
conbotaux2=

conbotaux3:="imagliar" varconbotaux1 "_TT"



conbotaux6:="textsolnum" varconbotaux1 "_TT"


%conbotaux3%=%conbotaux2%
%conbotaux6%=%conbotaux2%

;fin del loop principal
if varconbotaux1>95
break
}


}
;#################################################################################
;Pictures ar
;#################################################################################



    If guco12 = 1
    {
        Gui, +AlwaysOnTop
    }

Gui, +Hwndgui_id -MinimizeBox

Gui, Color ,,%stkcg5%
Gui, Font, S%stkcg3% c0x%stkcg4% %stkcgfin2%, %stkcg1%
Gui, Color ,%stkcg6%






Gui, Add, Tab, x2 y2 w316 h395 vBasica1 AltSubmit -wrap,`Go!|Note|Setting|Folder|Link

;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
Gui, Tab, Go!



alturapict_y=33
alturaddl_y=36

factaumen_pict:=35+10
factaumen_dll:=20+25


Gui, Add, Picture , xm  x8 y%alturapict_y% w35 h35  gDLsacc1 vimageofgo2 hwndidisposimag1 0x3 , 
;********************************************************************************
Gui, Add, DropDownList, x48 y%alturaddl_y% w263 h20 R30 altsubmit  vidl2 gidl2 hwndCBBID1 , %DLsDLsa%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, idl2, %guco1%
;********************************************************************************



alturapict_y+=%factaumen_pict%
alturaddl_y+=%factaumen_dll%



Gui, Add, Picture ,xm  x8 y%alturapict_y% w35 h35  ggo1 vimageofgo1 hwndidisposimag2 0x3 , 

Gui, Add, DropDownList, x48 y%alturaddl_y% w263 h20 R30 altsubmit  vidl1  gidl1 hwndCBBID1, %DLsDLsb%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, idl1, %guco2%
;********************************************************************************


alturapict_y+=%factaumen_pict%
alturaddl_y+=%factaumen_dll%



Gui, Add, Picture , xm  x8 y%alturapict_y% w35 h35  ggo3 vimageofgo3 hwndidisposimag3 0x3 , 

Gui, Add, DropDownList, x48 y%alturaddl_y% w263 h20 R30 altsubmit vidl3  gidl3 hwndCBBID1, %DLsDLsc%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, idl3, %guco3%
;********************************************************************************





alturapict_y+=%factaumen_pict%
alturaddl_y+=%factaumen_dll%



Gui, Add, Picture ,  x8 y%alturapict_y%  vimageofgo4 ggo4  hwndpicesp1   0x3  , 


;********************************************************************************
Gui, Add, DropDownList, x48 y%alturaddl_y% w263 h20 R30 altsubmit vidl4 gidl4 hwndCBBID1, %DLsDLse%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, idl4, %guco4%
;********************************************************************************




alturapict_y+=%factaumen_pict%
alturaddl_y+=%factaumen_dll%



Gui, Add, Picture , xm x8 y%alturapict_y%  vimagenofclipb gsexecop  hwndidisposimag4  0x3 ,


Gui, Add, DropDownList, x48 y%alturaddl_y% w263 h20 R30 altsubmit  gidl9  vidl9 hwndCBBID1, %DLsDLsj%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, idl9, %gucojjj%



alturapict_y+=%factaumen_pict%
alturaddl_y+=%factaumen_dll%





Gui, Add, Picture , xm x8 y%alturapict_y%  vimagenofaccionofgui  hwndimagenofaccionofgui  0x3,

Gui, Add, DropDownList, x48 y%alturaddl_y% w263 h20 R30 altsubmit    vidlaccgui gidlaccgui hwndCBBID1, %accguicont%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, idlaccgui, %idlaccguivariacc%



alturapict_y+=%factaumen_pict%
alturaddl_y+=%factaumen_dll%




Gui, Add, Picture , xm x8 y%alturapict_y% w35 h35 vimageofgo5 ggo5 ,
;********************************************************************************
Gui, Add, DropDownList, x48 y%alturaddl_y% w263 h20 R30 altsubmit vidl5 gidl5 hwndCBBID1, %X%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, idl5, %guco5%
;********************************************************************************




;***************************************************************************************************************************************************************
;seccion de botones auxiliares
;********************************************************************************a

;#################################################################################
;Pictures ar
;#################################################################################



;origen   Gui, Add, Picture ,xm  vimagliar1 gbotauxb1 %Positix1% y27 w20 h20  hwndpicbotesp1  0x3 0x200, 


	;valor de Y
continforguiprinacra1:=349
	;valor de x
continforguiprinacra2:=8

;valor para la variable independiente


numeguiprinacra=0
Loop
{
	

	
	EnvAdd, numeguiprinacra,1
	
	
	

	continforguiprinacra3:="imagliar"numeguiprinacra

	 continforguiprinacra5:="picbotesp"numeguiprinacra
   continforguiprinacra6:="textsolnum"numeguiprinacra
	
	
	Gui, Add, Picture ,xm  v%continforguiprinacra3%  gbotauxb1    x%continforguiprinacra2% y%continforguiprinacra1% w20 h20  hwnd%continforguiprinacra5%  0x3 , 
	Gui, Add, Text ,  v%continforguiprinacra6%  gbotauxb1           x%continforguiprinacra2%  y%continforguiprinacra1% w20 h20  Center ,%numeguiprinacra%
	
	;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
		EnvAdd, continforguiprinacra2,23
	
				if continforguiprinacra2=146
	continforguiprinacra2=179
	
	
	
	
	
	;valor de Y
	if numeguiprinacra=12
	{
	continforguiprinacra1:=372
	continforguiprinacra2:=8
}
	
	

	;valor de Y
	if numeguiprinacra=17
	{
	continforguiprinacra2:=202
}
	
	





	
	
	
    		if numeguiprinacra=22
			break
	

}



;hwndpicbotesp1   : hwnd-funtion ;picbotesp1  name hwnd
;0x3 - SS_ICON Picture Control Styles
;0x200 - SS_CENTERIMAGE - SS_ICON Picture Control Styles



poboauc6=x123 y372 w20 h20

poboaub7=x145 y349 w30 h30
;********************************************************************************
poboauc8=x179 y372 w20 h20
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;boton desabilitado
Gui, Add, Picture, %poboauc6%  vcodiimagba1, %A_ScriptDir%\Data\Gui\izqoff.png
;********************************************************************************
Gui, Add, Picture, %poboaub7%  vcodiimagba2 gbotnag1, %A_ScriptDir%\Data\Gui\fin1.png
;********************************************************************************
Gui, Add, Picture, %poboauc8%  vcodiimagba3 gbotnag3, %A_ScriptDir%\Data\Gui\dere1.png
;********************************************************************************

;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion



;********************************************************************************
;ocultar si el timer para ocultar esta activo





;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
Gui, Tab, Note
edinotfin5:=stkcg5
edinotfin6:=stkcg4

if edinot6=0
{
	
Gui, Font, Norm
; gui especial
Gui, Font, S%edinot3%  %edinotfin2%, %edinot1%
edinotfin5:=edinot5
edinotfin6:=edinot4
}


Gui, Add, Edit, x5 y25 w310 h315   gditmwacsett vMyEdit1 hwndEDID2,
CtlColors.Attach(EDID2, edinotfin5, edinotfin6)

noyasegseleccac=%CLAVENots%\Note%notaseleccion%.txt
FileRead, settext, %noyasegseleccac% 
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al leer: %noyasegseleccac%,
}
GuiControl,1:, MyEdit1, %settext%


if edinot6=0
{
;Retorno gui normal
Gui, Font, Norm
Gui, Font, S%stkcg3%  %stkcgfin2%, %stkcg1%
}


;**************************************************************************************************************************************************************
;seccion de botones auxiliares
;********************************************************************************


;#################################################################################
;Pictures ar Notas
;#################################################################################



	;valor de Y
continforguiprinacra1:=372
	;valor de x
continforguiprinacra2:=8

;valor para la variable independiente


; valor ya establecido numeguiprinacra=0
Loop
{
	

	
	EnvAdd, numeguiprinacra,1
	
	
	

	continforguiprinacra3:="imagliar"numeguiprinacra
	
	 continforguiprinacra5:="picbotesp"numeguiprinacra
   continforguiprinacra6:="textsolnum"numeguiprinacra
	
	
	Gui, Add, Picture ,xm  v%continforguiprinacra3%  gbotauxb1      x%continforguiprinacra2% y%continforguiprinacra1% w20 h20  hwnd%continforguiprinacra5%  0x3 , 
	Gui, Add, Text ,  v%continforguiprinacra6%  gbotauxb1           x%continforguiprinacra2%  y%continforguiprinacra1% w20 h20  Center ,%numeguiprinacra%
	
	;aumenta x
		EnvAdd, continforguiprinacra2,23
	
	;salto para los botones de navegacion
	
	if numeguiprinacra=27
	{
	continforguiprinacra2:=202
}
	
	

	
    		if numeguiprinacra=32
			break
	

}









Gui, Add, DropDownList, x5 y342 w135 h20 R30 altsubmit  vnotss1 gnotss1  hwndCBBID1, %NOTs%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, notss1, %notaseleccion%


;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion


Gui, Add, Picture, %poboauc6%  vcodiimagba5 gbotnag8, %A_ScriptDir%\Data\Gui\izq1.png
;********************************************************************************
Gui, Add, Picture, %poboaub7%  vcodiimagba6 gbotnag2, %A_ScriptDir%\Data\Gui\m1.png
;********************************************************************************
Gui, Add, Picture, %poboauc8%  vcodiimagba7 gbotnag3, %A_ScriptDir%\Data\Gui\dere1.png
;********************************************************************************

;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion




Gui, Add, Picture, x202 y349 w20 h20  vreloadefal greloadefal2 , %A_ScriptDir%\Data\Gui\notxt1.png
reloadefal_TT := "Borrar archivo."


;********************************************************************************
Gui, Add, Picture, x225 y349 w20 h20  vidbonu9 gxux14, %A_ScriptDir%\Data\Gui\gettxt1.png
idbonu9_TT := "Recargar directamente del archivo."

;********************************************************************************
Gui, Add, Picture, x248 y349 w20 h20  vidbonu6 gxux9, %A_ScriptDir%\Data\Gui\search1.png
idbonu6_TT := "Abrir en Notepad"
;********************************************************************************
Gui, Add, Picture, x271 y349 w20 h20   vidbonu7  gxux6, %A_ScriptDir%\Data\Gui\loadedit1.png
idbonu7_TT := "Recargar datos en memoria"

;********************************************************************************
Gui, Add, Picture, x294 y349 w20 h20   vidbonu8 gxux5, %A_ScriptDir%\Data\Gui\saveedit1.png
idbonu8_TT := "Guardar"

;
;********************************************************************************


;********************************************************************************i








;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
Gui, Tab, Setting





Gui, Add, Picture, xm  x112 y49  h100 w100 gimagenconf vimagenconf hwndimagenconfH 0x3 0x200,


Gui, Add, DropDownList, x8 y169 w304 h20 R30 altsubmit gconfacc1 vconfacc1 hwndCBBID1, %DLsDLsg%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, confacc1, %gucoconfig%

















;**************************************************************************************************************************************************************
;seccion de botones auxiliares
;********************************************************************************

;#################################################################################
;Pictures ar Config
;#################################################################################


	;valor de Y
continforguiprinacra1:=349
	;valor de x
continforguiprinacra2:=8

;valor para la variable independiente


;numeguiprinacra=0
Loop
{
	

	
	EnvAdd, numeguiprinacra,1
	
	
	

	continforguiprinacra3:="imagliar"numeguiprinacra

	 continforguiprinacra5:="picbotesp"numeguiprinacra
   continforguiprinacra6:="textsolnum"numeguiprinacra
	
	
	Gui, Add, Picture ,xm  v%continforguiprinacra3%  gbotauxb1     x%continforguiprinacra2% y%continforguiprinacra1% w20 h20  hwnd%continforguiprinacra5%  0x3 , 
	Gui, Add, Text ,  v%continforguiprinacra6%  gbotauxb1           x%continforguiprinacra2%  y%continforguiprinacra1% w20 h20  Center ,%numeguiprinacra%
	
	
	;aumenta x
		EnvAdd, continforguiprinacra2,23
	
	
		;botones superiores
	if continforguiprinacra1=349
	{
				if continforguiprinacra2=146
	continforguiprinacra2=179
}
	
	
	;botones inferiores
	if 	if numeguiprinacra=49
	{

	continforguiprinacra2=202
}
	
	;valor de Y
	if numeguiprinacra=44
	{
	continforguiprinacra1:=372
	continforguiprinacra2:=8
}
	
	

	
	
	
    		if numeguiprinacra=54
			break
	

}





;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion

Gui, Add, Picture, %poboauc6%  vcodiimagba8 gbotnag8, %A_ScriptDir%\Data\Gui\izq1.png
;********************************************************************************
Gui, Add, Picture, %poboaub7%  vcodiimagba9 gbotnag2, %A_ScriptDir%\Data\Gui\m1.png
;********************************************************************************
Gui, Add, Picture, %poboauc8%  vcodiimagba10  gbotnag3, %A_ScriptDir%\Data\Gui\dere1.png

;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion

;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
Gui, Tab, Folder




Gui, Add, Picture, xm  x42 y65  h50 w50 viconoexplor giconoexplor ,
Gui, Add, Picture, xm  x112 y49  h100 w100 gstarnew1 vicocarpeta1  hwndicocarpeta1H  0x3 0x200,


;poner icono en iconoexplor al inicio
if FoldExpl_univers=0
{
	 guicontrol, 1:, iconoexplor, *icon1 *h50 *w50 C:\Windows\explorer.exe

	}
	else
		if FoldExpl_univers=2
{
guicontrol, 1:, iconoexplor, *icon1 *h50 *w50 %A_ScriptDir%\Data\Gui\Clipb.png

	}
	else
{
	
guicontrol, 1:, iconoexplor, *icon1 *h50 *w50 %QDir1%

	}



Gui, Add, DropDownList, x8 y169 w304 h20 R30 altsubmit gDLsDLsf vDLsDLsf hwndCBBID1, %DLsDLsf%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, DLsDLsf, %vdlsnumpos1%



Gui, Add, DropDownList, x8 y229 w304 h20 R30 altsubmit vDLsDLsfacc gPrestarnew hwndCBBID1, %DLsDLsfaccopt%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, DLsDLsfacc, %vdlsnumpos2%









;**************************************************************************************************************************************************************
;seccion de botones auxiliares
;********************************************************************************

;#################################################################################
;Pictures ar Folder
;#################################################################################



	;valor de Y
continforguiprinacra1:=349
	;valor de x
continforguiprinacra2:=8

;valor para la variable independiente


;numeguiprinacra=0
Loop
{
	

	
	EnvAdd, numeguiprinacra,1
	
	
	

	continforguiprinacra3:="imagliar"numeguiprinacra

	 continforguiprinacra5:="picbotesp"numeguiprinacra
   continforguiprinacra6:="textsolnum"numeguiprinacra
	
	
	Gui, Add, Picture ,xm  v%continforguiprinacra3%  gbotauxb1      x%continforguiprinacra2% y%continforguiprinacra1% w20 h20  hwnd%continforguiprinacra5%  0x3 , 
	Gui, Add, Text ,  v%continforguiprinacra6%  gbotauxb1          x%continforguiprinacra2%  y%continforguiprinacra1% w20 h20  Center ,%numeguiprinacra%
	
	
	;aumenta x
		EnvAdd, continforguiprinacra2,23
	
	
	
	;primer salto boton central
		;botones superiores
	if continforguiprinacra1=349
	{
				if continforguiprinacra2=146
	continforguiprinacra2=179
}
	
	
	
;terminan primera fila de elementos
	
	;valor de Y
	if numeguiprinacra=66
	{
	continforguiprinacra1:=372
	continforguiprinacra2:=8
}
	

	;segundo salto salto boton central y direccionales
	

	
	;botones inferiores
	if 	if numeguiprinacra=71
	{
		;salto para los botones de navegacion

		continforguiprinacra2=202
}


	
	
	
    		if numeguiprinacra=76
			break
	

}


















;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion

Gui, Add, Picture, %poboauc6%  vcodiimagba11 gbotnag8, %A_ScriptDir%\Data\Gui\izq1.png
;********************************************************************************
Gui, Add, Picture, %poboaub7%  vcodiimagba13 gbotnag2, %A_ScriptDir%\Data\Gui\m1.png
;********************************************************************************
Gui, Add, Picture, %poboauc8%  vcodiimagba12 gbotnag3, %A_ScriptDir%\Data\Gui\dere1.png

;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion



;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-ttttttttttttGui, Tab,ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt
Gui, Tab, Link



Gui, Add, Text ,   x42 y45  h40 w50 vdriveofnaveg center,

Gui, Add, Picture, xm  x42 y95  h50 w50 viconofwed giconofwed ,
Gui, Add, Picture, xm  x112 y49  h100 w100 gsexecop1 vimageofgo6 hwndimageofgo6H  0x3 0x200,






Gui, Add, DropDownList, x8 y169 w304 h20 R30 altsubmit glinkscgalm vlinkscgalm hwndCBBID1, %DLsDLsl%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, linkscgalm, %gucolll%

downcountll := "Sell"gucolll









Gui, Add, Edit, x8 y219 w284 h20 geditsearch veditsearch,

Gui, Add, Picture, glk8  x292 y219 w20 h20  vcodiimagba17, %A_ScriptDir%\Data\Gui\search1.png







Gui, Add, DropDownList, x8 y269 w304 h20 R30 altsubmit vidl11  gidl11   hwndCBBID1, %linkww%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, idl11, %guco14%
























;**************************************************************************************************************************************************************
;seccion de botones auxiliares
;********************************************************************************
;********************************************************************************

;#################################################################################
;Pictures ar link
;#################################################################################



	;valor de Y
continforguiprinacra1:=349
	;valor de x
continforguiprinacra2:=8

;valor para la variable independiente


;numeguiprinacra=0
Loop
{
	

	
	EnvAdd, numeguiprinacra,1
	
	
	

	continforguiprinacra3:="imagliar"numeguiprinacra
	
	 continforguiprinacra5:="picbotesp"numeguiprinacra
   continforguiprinacra6:="textsolnum"numeguiprinacra
	
	
	Gui, Add, Picture ,xm  v%continforguiprinacra3%  gbotauxb1      x%continforguiprinacra2% y%continforguiprinacra1% w20 h20  hwnd%continforguiprinacra5%  0x3 , 
	Gui, Add, Text ,  v%continforguiprinacra6%  gbotauxb1           x%continforguiprinacra2%  y%continforguiprinacra1% w20 h20  Center ,%numeguiprinacra%
	
	
	;aumenta x
		EnvAdd, continforguiprinacra2,23
	
	
	
	
	;primer salto boton central
		;botones superiores
	if continforguiprinacra1=349
	{
				if continforguiprinacra2=146
	continforguiprinacra2=179
}
	
	
	
;terminan primera fila de elementos
	
	;valor de Y
	if numeguiprinacra=88
	{
	continforguiprinacra1:=372
	continforguiprinacra2:=8
}
	

	;segundo salto salto boton central y direccionales
	

	
	;botones inferiores
	if 	if numeguiprinacra=93
	{
		;salto para los botones de navegacion

		continforguiprinacra2=202
}

	
	
	
    		if numeguiprinacra=98
			break
	

}







;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion

Gui, Add, Picture, %poboauc6%  vcodiimagba14 gbotnag8, %A_ScriptDir%\Data\Gui\izq1.png
;********************************************************************************
Gui, Add, Picture, %poboaub7%  vcodiimagba15 gbotnag2, %A_ScriptDir%\Data\Gui\m1.png
;********************************************************************************
Gui, Add, Picture, %poboauc8%  vcodiimagba16 , %A_ScriptDir%\Data\Gui\dereoff.png

;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion
;navegacion-navegacion-navegacion-navegacion-navegacion-navegacion-navegacion

;********************************************************************************

;Esconder numeros guia

varresnum=0
Loop
{
   Envadd, varresnum,1
   concontacaname:="textsolnum"varresnum
   
   guicontrol, 1:Hide,%concontacaname%
   
      
   
   if varresnum>=100
      break
}
;********************************************************************************
;numeros no visibles
numshow=0

stkmh=398

stkmw=320
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(stkmh,stkmw,gui_position,"1")
gui_position=%guipositionmod%
				
Gui, Show, %gui_position%  h%stkmh% w%stkmw%, %nameofthisscript1%



;la ventana activa o desactivada
ventaprinact=1
;para los TT
global ventaprinact


;******

; Generated using SmartGUI Creator 4.0

;seccion acciones o variables nesesarias paa la gui
;********************************************************************************




;*********************************************************Timer

if guco11=1
{ 
SetTimer, tdpta1, %tiemenhid1%
} 




;para los tooltip 
OnMessage(0x200, "WM_MOUSEMOVE")

;para lo de guardar posicion de la ventana



;*********************************************************Timer
varstarstkm=1
goto guibotonaux

;"fin del tiempo se oculta SKM"

Return
























































































































;#################################################################################
;;Acciones Gui
;#################################################################################
;#################################################################################
;#################################################################################
;#################################################################################








;Programas A
;#################################################################################
;#################################################################################

;menucontextual
imageab1:



OpenFolderDLs(UtiFolder_aa,UtiFolder_aa,1,FoldExpl_univers)
return


copiarex1:

ToTheClipboardDLs(Comtotal_aa,0)

return

ShowComDLsaa:
Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="a"
Infohere3=%idl2%

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
Infohere3=%idl2%

Gui, 1:-Disabled
goto EraseComDLs

return




idl2:

Gui, 1:Submit, NoHide


;var a modificar
letrainsignia:="a"
fuenteNumber:=idl2
Util_Dir=1
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

;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%
;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%




;ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
ShowMyImageDLs(ElemCom_aa1,ElemCom_aa2,ElemCom_aa3,ElemCom_aa4,{LARGE: 0x00},"1","imageofgo2","idisposimag1",35,35)















if varstarstkm=1
   goto idl3



return




DLsacc1:



if ElemCom_aa2=Lista
{
	StartCommandDLs_Lista(ElemCom_aa1,FoldExpl_univers,LinkNaveg_univers)
	Efecto_Start("1","imageofgo2")
	return
}


;ejecutar los comandos
;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_aa1,ElemCom_aa2,FoldExpl_univers,LinkNaveg_univers)




Efecto_Start("1","imageofgo2")

return




;Programas B
;#################################################################################
;#################################################################################


;menucontextual
imageab2:

OpenFolderDLs(UtiFolder_bb,UtiFolder_bb,1,FoldExpl_univers)

return




copiarex2:
ToTheClipboardDLs(Comtotal_bb,0)
return


ShowComDLsbb:
Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="b"
Infohere3=%idl1%

;not modif
Infohere2pre:="Comtotal_" lidls lidls
Infohere2=% %Infohere2pre%
Infohere1pre:="DLs" lidls Infohere3
Infohere1=% %Infohere1pre%
goto ShowComDLs

return

EraseComDLsbb:
Gui, 1:+Disabled
MsgBox 0x40024, %nameofthisscript1% - Verificación, El comando será borrado y para aplicar los cambios es necesario reiniciar la aplicación ¿Se desea proceder?
IfMsgBox No, {
	Gui, 1:-Disabled
Return
}

Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="b"
Infohere3=%idl1%

Gui, 1:-Disabled
goto EraseComDLs

return



idl1:
Gui, 1:Submit, NoHide






;var a modificar
letrainsignia:="b"
fuenteNumber:=idl1
Util_Dir=1
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

;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%
;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%




;ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
ShowMyImageDLs(ElemCom_bb1,ElemCom_bb2,ElemCom_bb3,ElemCom_bb4,{LARGE: 0x00},"1","imageofgo1","idisposimag2",35,35)


if varstarstkm=1
   goto idl2

return





go1:

if ElemCom_bb2=Lista
{
	StartCommandDLs_Lista(ElemCom_bb1,FoldExpl_univers,LinkNaveg_univers)
	Efecto_Start("1","imageofgo1")
	return
}




;ejecutar los comandos
;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_bb1,ElemCom_bb2,FoldExpl_univers,LinkNaveg_univers)
	Efecto_Start("1","imageofgo1")
return











;Programas C
;#################################################################################
;#################################################################################

;menucontextual
imageab6:

OpenFolderDLs(UtiFolder_cc,UtiFolder_cc,1,FoldExpl_univers)
return



copiarex3:
ToTheClipboardDLs(Comtotal_cc,0)
return


 

ShowComDLscc:

Gui, 1:Submit, NoHide

;Gui mostrar informacion
lidls:="c"
Infohere3=%idl3%

;not modif
Infohere2pre:="Comtotal_" lidls lidls
Infohere2=% %Infohere2pre%
Infohere1pre:="DLs" lidls Infohere3
Infohere1=% %Infohere1pre%
goto ShowComDLs

return


EraseComDLscc:
Gui, 1:+Disabled
MsgBox 0x40024, %nameofthisscript1% - Verificación, El comando será borrado y para aplicar los cambios es necesario reiniciar la aplicación ¿Se desea proceder?
IfMsgBox No, {
	Gui, 1:-Disabled
Return
}

Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="c"
Infohere3=%idl3%

Gui, 1:-Disabled
goto EraseComDLs

return




idl3:

Gui, 1:Submit, NoHide


;var a modificar
letrainsignia:="c"
fuenteNumber:=idl3
Util_Dir=1
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

;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%
;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%




;ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
ShowMyImageDLs(ElemCom_cc1,ElemCom_cc2,ElemCom_cc3,ElemCom_cc4,{LARGE: 0x00},"1","imageofgo3","idisposimag3",35,35)






if varstarstkm=1
   goto idl4



return




go3:



if ElemCom_cc2=Lista
{
	StartCommandDLs_Lista(ElemCom_cc1,FoldExpl_univers,LinkNaveg_univers)
		Efecto_Start("1","imageofgo3")
	return
}




;ejecutar los comandos
;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_cc1,ElemCom_cc2,FoldExpl_univers,LinkNaveg_univers)
		Efecto_Start("1","imageofgo3")
return










;Archivos
;#################################################################################
;#################################################################################



;menucontextual
imageab3:


OpenFolderDLs(UtiFolder_ee,UtiFolder_ee,1,FoldExpl_univers)
return




copiarex4:
ToTheClipboardDLs(Comtotal_ee,0)
return




ShowComDLsee:

Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="e"
Infohere3=%idl4%

;not modif
Infohere2pre:="Comtotal_" lidls lidls
Infohere2=% %Infohere2pre%
Infohere1pre:="DLs" lidls Infohere3
Infohere1=% %Infohere1pre%
goto ShowComDLs

return



EraseComDLsee:
Gui, 1:+Disabled
MsgBox 0x40024, %nameofthisscript1% - Verificación, El comando será borrado y para aplicar los cambios es necesario reiniciar la aplicación ¿Se desea proceder?
IfMsgBox No, {
	Gui, 1:-Disabled
Return
}

Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="e"
Infohere3=%idl4%

Gui, 1:-Disabled
goto EraseComDLs

return







idl4:


Gui, 1:Submit, NoHide



;var a modificar
letrainsignia:="e"
fuenteNumber:=idl4
Util_Dir=1
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

;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%
;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%




;ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
ShowMyImageDLs(ElemCom_ee1,ElemCom_ee2,ElemCom_ee3,ElemCom_ee4,{LARGE: 0x00},"1","imageofgo4","picesp1",35,35)


if varstarstkm=1
goto idlaccgui
return












go4:



if ElemCom_ee2=Lista
{
	StartCommandDLs_Lista(ElemCom_ee1,FoldExpl_univers,LinkNaveg_univers)
			Efecto_Start("1","imageofgo4")
	return
}


;ejecutar los comandos
;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_ee1,ElemCom_ee2,FoldExpl_univers,LinkNaveg_univers)
	Efecto_Start("1","imageofgo4")
return


;Portapapeles
;#################################################################################
;#################################################################################


openfolderSejj:
OpenFolderDLs(UtiFolder_jj,UtiFolder_jj,1,FoldExpl_univers)
return





clipcomandclip:
ToTheClipboardDLs(Comtotal_jj,0)
return

ShowComDLsjj:
Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="j"
Infohere3=%idl9%

;not modif
Infohere2pre:="Comtotal_" lidls lidls
Infohere2=% %Infohere2pre%
Infohere1pre:="DLs" lidls Infohere3
Infohere1=% %Infohere1pre%
goto ShowComDLs

return



EraseComDLsjj:
Gui, 1:+Disabled
MsgBox 0x40024, %nameofthisscript1% - Verificación, El comando será borrado y para aplicar los cambios es necesario reiniciar la aplicación ¿Se desea proceder?
IfMsgBox No, {
	Gui, 1:-Disabled
Return
}

Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="j"
Infohere3=%idl9%

Gui, 1:-Disabled
goto EraseComDLs

return





idl9:

Gui, 1:Submit, NoHide

;var a modificar
letrainsignia:="j"
fuenteNumber:=idl9
Util_Dir=1
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

;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%
;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%




;ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
ShowMyImageDLs(ElemCom_jj1,ElemCom_jj2,ElemCom_jj3,ElemCom_jj4,{LARGE: 0x00},"1","imagenofclipb","idisposimag4",35,35)





if varstarstkm=1
goto DLsDLsf

return

sexecop:


if ElemCom_jj2=Lista
{
	StartCommandDLs_Lista(ElemCom_jj1,FoldExpl_univers,LinkNaveg_univers)
		Efecto_Start("1","imagenofclipb")
	return
}




;ejecutar los comandos
;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_jj1,ElemCom_jj2,FoldExpl_univers,LinkNaveg_univers)
	Efecto_Start("1","imagenofclipb")
return




;Acciones de la GUI
;#################################################################################
;#################################################################################




idlaccgui:

Gui, 1:Submit, NoHide

if idlaccgui=1
{
guicontrol 1:, imagenofaccionofgui, *icon1 *h35 *w35 %A_ScriptDir%\Data\Gui\opcgui1.png
}
else
   if  idlaccgui=2
 {  
ShowMyImageDLs(ElemCom_aa1,ElemCom_aa2,ElemCom_aa3,ElemCom_aa4,{LARGE: 0x00},"1","imagenofaccionofgui","imagenofaccionofgui",35,35)
}
else
   if  idlaccgui=3
 {  
ShowMyImageDLs(ElemCom_bb1,ElemCom_bb2,ElemCom_bb3,ElemCom_bb4,{LARGE: 0x00},"1","imagenofaccionofgui","imagenofaccionofgui",35,35)
}

else
   if  idlaccgui=4
 {  
ShowMyImageDLs(ElemCom_cc1,ElemCom_cc2,ElemCom_cc3,ElemCom_cc4,{LARGE: 0x00},"1","imagenofaccionofgui","imagenofaccionofgui",35,35)
}
else
	   if  idlaccgui=5
 {  
ShowMyImageDLs(ElemCom_ee1,ElemCom_ee2,ElemCom_ee3,ElemCom_ee4,{LARGE: 0x00},"1","imagenofaccionofgui","imagenofaccionofgui",35,35)

}

else
   if  idlaccgui=6
 {  
ShowMyImageDLs(ElemCom_jj1,ElemCom_jj2,ElemCom_jj3,ElemCom_jj4,{LARGE: 0x00},"1","imagenofaccionofgui","imagenofaccionofgui",35,35)
}
else
   if  idlaccgui=7
 {  
   guicontrol 1:, imagenofaccionofgui, *icon1 *h35 *w35 %A_ScriptDir%\Data\Gui\opcgui5.png
}
else
   if  idlaccgui=8
 {  
   guicontrol 1:, imagenofaccionofgui, *icon1 *h35 *w35 %A_ScriptDir%\Data\Gui\opcgui6.png
}

if varstarstkm=1
goto idl9
return


return









;menucontextual
Coexidl31:
;TOGGLES FILE EXTENSIONS
RegRead, HiddenFiles_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt
If HiddenFiles_Status = 1 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 0
Else 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 1
WinGetClass, eh_Class,A
If (eh_Class = "#32770" OR A_OSVersion = "WIN_VISTA")
send, {F5}
Else PostMessage, 0x111, 28931,,, A
setwindowok()
return




;menucontextual
ocultos1:

Run, %A_ScriptDir%\Data\Scripts\Archivos ocultos.exe, ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
Return




;menucontextual
repairini:

MsgBox 0x40024, %nameofthisscript1% - Verificación, Se restableceran las hotkeys, la pocision de la ventana y los estilos.  ¿Se desea proceder?
IfMsgBox No, {
Return
}

gui, 1:+Disabled



;Comandos por medio de Hotkey
varnumbcomhk=0
Loop
{
	varnumbcomhk++
IniWrite, 0, %CLAVEaini%, ComandosHotkey, %varnumbcomhk%
	varnumbcomhk++
IniWrite, ^!8, %CLAVEaini%, ComandosHotkey, %varnumbcomhk%
	varnumbcomhk++
;IniWrite, No establecido, %CLAVEaini%, ComandosHotkey, %varnumbcomhk%


}until varnumbcomhk=60


IniWrite,^|, %CLAVEaini%, HK, a
IniWrite,^!0, %CLAVEaini%, HK, b
IniWrite,^!m, %CLAVEaini%, HK, c
IniWrite, 1, %CLAVEaini%, HK, Zz
;**********************************************************


IniWrite, Center, %CLAVEaini%, window position, gui_position
IniWrite, Center, %CLAVEaini%, window position, gui_position2
;positionn of gui if is new use in new pc
IniWrite, 700/200, %CLAVEaini%, pcnewres, a




;EDIT Custom
IniWrite, Verdana, %CLAVEaini%, EditNotas,1
IniWrite, 2, %CLAVEaini%, EditNotas,2
IniWrite, 8, %CLAVEaini%, EditNotas,3
IniWrite, ffffff, %CLAVEaini%, EditNotas,4
IniWrite, 200729, %CLAVEaini%, EditNotas,5
IniWrite, 0, %CLAVEaini%, EditNotas,6


;SKM Custom
IniWrite, Verdana, %CLAVEaini%, STKG,1
IniWrite, 2, %CLAVEaini%, STKG,2
IniWrite, 8, %CLAVEaini%, STKG,3
IniWrite, ffffff, %CLAVEaini%, STKG,4
IniWrite, 23222B, %CLAVEaini%, STKG,5
IniWrite, 1C1B22, %CLAVEaini%, STKG,6


IniWrite, 1, %CLAVEaini%, STKG,10
IniWrite, 12, %CLAVEaini%, STKG,11
IniWrite, ffffff, %CLAVEaini%, STKG,12
IniWrite, 1, %CLAVEaini%, STKG,13
IniWrite, Verdana, %CLAVEaini%, STKG,14
IniWrite, 1C1B22, %CLAVEaini%, STKG,15




;Avisos
IniWrite, 1, %CLAVEaini%, Avisos, a
IniWrite, 1, %CLAVEaini%, Avisos, b
IniWrite, 1, %CLAVEaini%, Avisos, c
IniWrite, 0, %CLAVEaini%, Avisos, d
IniWrite, 1, %CLAVEaini%, Avisos, e
IniWrite, 0, %CLAVEaini%, Avisos, f


reload
return












;menucontextual
Coexidl34:
FileRecycleEmpty
setwindowok()
return




;menucontextual
;Brillo....................................

briext1:

DisplaySetBrightness(Brilloeninicvalor)

return



briext2:
DisplaySetBrightness(Brilloencierrevalor)
return





briext3:

DisplaySetBrightness(120)
return


;Brillo....................................







;menucontextual
imageab4:

condedirec1=%A_ScriptDir%
goto generalopendir

return




;menucontextual
imageab5:

condedirec1=%CLAVESave%
goto generalopendir

return


;abrir directorios o carpetas
generalopendir:
Gui, 1:Submit, NoHide
if DLsDLsfacc=1
{
   If InStr(condedirec1, "shell:")
goto notqudirt1

if !FileExist(condedirec1)
return

notqudirt1:

Run, explorer.exe %condedirec1%, ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
}
else
if DLsDLsfacc=2
         { 
clipboard =%condedirec1%
setwindowcopy()
}
else
   if DLsDLsfacc=3
{
   If InStr(condedirec1, "shell:")
goto notqudirt2

if !FileExist(condedirec1)
return


if !FileExist(QDir1)
  {  
  MsgBox 0x40040, %nameofthisscript1% - Información, Ruta del programa invalida., 2
    return
    }

Run, %QDir1% "%condedirec1%", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return

notqudirt2:
Run, explorer.exe %condedirec1%, ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
}
Return



GuiDropFiles:
{
   Gui, 1:Submit, NoHide
   
   accionvalr=0
   
   listaelemmove2 := A_GuiEvent

Loop, Parse, listaelemmove2, `n, `r   
{

EnvAdd, accionvalr, 1


soloportenvarlo:="architmpovarlstk"accionvalr

%soloportenvarlo%=%A_LoopField%	;para numeracion



if A_Index=% FileList.MaxIndex()	
break
}



;desactivar cualquier ToolTip que este actualmente desplegado
ToolTip


	Efecto_Start("1","imagenofaccionofgui")



if idlaccgui=1
{
   
   
   Clipboard=%architmpovarlstk1%
   setwindowcopy()
   return
}
else
   if  idlaccgui=2
 {  
   

SplitPath, ElemCom_aa1, , , extcompinc
if extcompinc !=exe
{
	MsgBox 0x40030, %nameofthisscript1% - Advertencia, El elemento no es un ejecutable., 1
	return
}

filedrop="%architmpovarlstk1%"

;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_aa1,filedrop,FoldExpl_univers,LinkNaveg_univers)





}

else
   if  idlaccgui=3
   {


SplitPath, ElemCom_bb1, , , extcompinc
if extcompinc !=exe
{
	MsgBox 0x40030, %nameofthisscript1% - Advertencia, El elemento no es un ejecutable., 1
	return
}

filedrop="%architmpovarlstk1%"
StartCommandDLs(ElemCom_bb1,filedrop,0,0)


}
else
   if  idlaccgui=4
  { 

SplitPath, ElemCom_cc1, , , extcompinc
if extcompinc !=exe
{
	MsgBox 0x40030, %nameofthisscript1% - Advertencia, El elemento no es un ejecutable., 1
	return
}

filedrop="%architmpovarlstk1%"
StartCommandDLs(ElemCom_cc1,filedrop,0,0)


}
else
	   if  idlaccgui=5
  { 
SplitPath, ElemCom_ee1, , , extcompinc
if  extcompinc !=exe
{
	MsgBox 0x40030, %nameofthisscript1% - Advertencia, El elemento no es un ejecutable., 1
	return
}

filedrop="%architmpovarlstk1%"
StartCommandDLs(ElemCom_ee1,filedrop,0,0)

}
else
	   if  idlaccgui=6
  { 
SplitPath, ElemCom_jj1, , , extcompinc
if  extcompinc !=exe
{
	MsgBox 0x40030, %nameofthisscript1% - Advertencia, El elemento no es un ejecutable., 1
	return
}

filedrop="%architmpovarlstk1%"
StartCommandDLs(ElemCom_jj1,filedrop,0,0)


}
else
   if  idlaccgui between 7 and 8
   {
   ;Mover archivos y copiar

Gui, 1:+Disabled 


accionvalr=0
vaacccopiop=0
Loop, Parse, listaelemmove2, `n, `r  
{

EnvAdd, accionvalr, 1
soloportenvarlo:="architmpovarl"accionvalr
%soloportenvarlo%=%A_LoopField%	;para numeracion
}

readfileup2:
EnvAdd, vaacccopiop, 1

soloportenvarlo:="architmpovarl"vaacccopiop


carfmovercop=% %soloportenvarlo%

if vaacccopiop>%accionvalr%
Goto,finaloperaty

SplitPath, carfmovercop, namestk, direcstk, extebstk, namnoextstl
aacini=%carfmovercop%
carpetafinaloper=%CLAVESave%

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


DLsacc11:
;folders


   if  idlaccgui=7
   {
    goto  accgenmc1
      
   }
else
   if  idlaccgui=8
   {
          goto  accgenmc2
   }
return


DLsacc12:
   if  idlaccgui=7
   {
     goto  accgenmc3
   }
else
   if  idlaccgui=8
   {
    goto  accgenmc4
   }
return



accgenmc1:
FileMoveDir, %aacini%, %carpetafinaloper%\%namestk%,0
		 if ErrorLevel
{ 
                   namefilefold1:=TimeFileName1()
                   namefilefold24=%carpetafinaloper%\%namnoextstl% %namestk%
                   FileMoveDir, %aacini%, %namefilefold24%,1
;comprobar si existe el archivo 
archivxcomp=%namefilefold24%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
	  goto, readfileup2
} Else IfMsgBox No, {
goto finaloperaty
}
}                   
                   
                   
}


;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%namestk%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
	  goto, readfileup2
} Else IfMsgBox No, {
goto finaloperaty
}
}

goto, readfileup2
return

accgenmc2:
FileCopyDir, %aacini%, %carpetafinaloper%\%namestk%
    
		 if ErrorLevel
{ 
                   namefilefold1:=TimeFileName1()
                   namefilefold24=%carpetafinaloper%\%namestk% %namefilefold1%
                   FileCopyDir, %aacini%, %namefilefold24%,1
                   
     
;comprobar si existe el archivo 
archivxcomp=%namefilefold24%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
	  goto, readfileup2
} Else IfMsgBox No, {
goto finaloperaty
}
}              
                   
}



;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%namestk%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
	  goto, readfileup2
} Else IfMsgBox No, {
goto finaloperaty
}
}



goto, readfileup2
return



accgenmc3:
FileMove, %aacini%, %carpetafinaloper%\%namnoextstl%.%extebstk%,0
 
		 if ErrorLevel
{ 
                   namefilefold1:=TimeFileName1()
                   namefilefold24=%carpetafinaloper%\%namnoextstl% %namefilefold1% .%extebstk%
                   FileMove, %aacini%, %namefilefold24%,1
                   
                   ;comprobar si existe el archivo 
archivxcomp=%namefilefold24%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
	  goto, readfileup2
} Else IfMsgBox No, {
goto finaloperaty
}
}
                   
                   
}


;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%namnoextstl%.%extebstk%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
	  goto, readfileup2
} Else IfMsgBox No, {
goto finaloperaty
}
}


goto, readfileup2
return




accgenmc4:
FileCopy, %aacini%, %carpetafinaloper%\%namnoextstl%.%extebstk%,0
    

		 if ErrorLevel
{ 
                   namefilefold1:=TimeFileName1()
                   namefilefold24=%carpetafinaloper%\%namnoextstl% %namefilefold1% .%extebstk%
                   FileCopy, %aacini%, %namefilefold24%,1
                   
;comprobar si existe el archivo 
archivxcomp=%namefilefold24%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
	  goto, readfileup2
} Else IfMsgBox No, {
goto finaloperaty
}
}
                   
                   
                   
}


;comprobar si existe el archivo 
archivxcomp=%carpetafinaloper%\%namnoextstl%.%extebstk%
if !FileExist(archivxcomp)
{
MsgBox 0x40014, %nameofthisscript1% - Error, Elemento en conflicto: %archivxcomp%  ¿Continuar con la operación?
IfMsgBox Yes, {
	  goto, readfileup2
} Else IfMsgBox No, {
goto finaloperaty
}
}




goto, readfileup2
return


finaloperaty:

listaelemmovestk1=0
vardelimvalo1=0
Loop
{

	
EnvAdd, vardelimvalo1, 1


soloportenvarlo:="architmpovarl"vardelimvalo1

if vardelimvalo1>%accionvalr%
break
}

Gui, 1:-Disabled 



}










setwindowok()
}
return





;Opciones finales del ordenador
;#################################################################################
;#################################################################################




go5:


Gui, 1:Submit, NoHide

	Efecto_Start("1","imageofgo5")

if (idl5 =1)
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Se desea proceder?
IfMsgBox Yes, {
   Goto, comuncentaxfinal
} 
Else IfMsgBox No, {
Return
}
}



else
   



if (idl5 =2)
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Se desea proceder?
IfMsgBox Yes, {
   Goto, comuncentaxfinal
} 
Else IfMsgBox No, {
Return
}
}



else
   


if (idl5 =3)
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Se desea proceder?
IfMsgBox Yes, {
Goto, comuncentaxfinal
} 
Else IfMsgBox No, {
Return
}
}



else
   

if (idl5 =4)
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación,¿Se desea proceder?
IfMsgBox Yes, {
DllCall("PowrProf\SetSuspendState", "Int", 0, "Int", 1, "Int", 1)
} 
Else IfMsgBox No, {
Return
}
}

return





idl5:
Gui, 1:Submit, NoHide
if (idl5 =1)
{ 
      guicontrol, 1:, imageofgo5,*icon1 *h35 *w35 %A_ScriptDir%\Data\Gui\Off.png
}
else
if (idl5 =2)
{ 
      guicontrol, 1:, imageofgo5,*icon1 *h35 *w35 %A_ScriptDir%\Data\Gui\Cerrs.png
}
else
   if (idl5 =3)
{ 
      guicontrol, 1:, imageofgo5,*icon1 *h35 *w35 %A_ScriptDir%\Data\Gui\Rei.png
}
else
if (idl5 =4)
{ 
      guicontrol, 1:, imageofgo5,*icon1 *h35 *w35 %A_ScriptDir%\Data\Gui\Sus.png
}
else
if (idl5 =5)
{ 
      guicontrol, 1:, imageofgo5,*icon1 *h35 *w35 %A_ScriptDir%\Data\Gui\Sandp.png
}


;esto es la cadena de inicio
if varstarstkm=1
goto confacc1

return


;Acceso rapido
;#################################################################################
;#################################################################################



guibotonaux:

varliar1=0

;var a modificar
letrainsignia:="r"
;fuenteNumber:=varliar1
;var a modificar


Loop
{
EnvAdd, varliar1,1

;fin del loop principal
if varliar1>95
break






fuenteNumber:=varliar1



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



;control a modicar
controlidv:="imagliar"varliar1
controlhwnd:="picbotesp"varliar1


if ElemCom_rr1=
Continue

ShowMyImageDLs(ElemCom_rr1,ElemCom_rr2,ElemCom_rr3,ElemCom_rr4,{SMALL: 0x01},"1",controlidv,controlhwnd,20,20)

}






if varstarstkm=1
goto idl1

return












botauxb1:

codibotauxicontrol:=A_GUICONTROL

If InStr(A_GUICONTROL, "imagliar")
{
		codibotauxi:= StrReplace(A_GUICONTROL, "imagliar", "")

	goto estabaccionbauxs
}

If InStr(A_GUICONTROL, "textsolnum")
{
		codibotauxi:= StrReplace(A_GUICONTROL, "textsolnum", "")
		
	goto estabaccionbauxs
}
return






estabaccionbauxs:


;var a modificar
letrainsignia:="r"
fuenteNumber:=codibotauxi
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







if ElemCom_rr2=Lista
{
	StartCommandDLs_Lista(ElemCom_rr1,FoldExpl_univers,LinkNaveg_univers)

Efecto_Start("1",A_GUICONTROL)
	return
}



;ejecutar los comandos
;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_rr1,ElemCom_rr2,FoldExpl_univers,LinkNaveg_univers)
Efecto_Start("1",A_GUICONTROL)
return




;Navegación
;#################################################################################
;#################################################################################







botnag1:
GuiControl, choose, Basica1, %numerodetabs%
Return




botnag2:
GuiControl, choose, Basica1, 1
Return




botnag3:
GuiControlGet, tyux,, Basica1,,
EnvAdd, tyux, 1
GuiControl, choose, Basica1, %tyux%
Return


botnag8:
GuiControlGet, tyux,, Basica1,,
EnvAdd, tyux, -1
GuiControl, choose, Basica1, %tyux%
Return











killtime:
SetTimer, tdpta1, Off
Menu, utilit1, Disable, No ocultar
btnenbkilltime=0
setwindowok()
return





cac10:
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación,¿Se desea proceder?
IfMsgBox Yes, {
   
ifvaccinfinalprogui=1
Goto, comuncentaxfinal
} 
Else IfMsgBox No, {
Return
}
}
return

Return


cac11:
Henaccrein=1
goto comuncentaxfinal
Return



cac12:
Gui, Show, Center  h%stkmh% w%stkmw%
Return


;Notas
;#################################################################################
;#################################################################################






editsearch:
ditmwacsett:

if guco11=1
{
SetTimer, tdpta1, off
SetTimer, extimmdeditmw, 150000
}
return




notss1:



Gui, 1:Submit, NoHide
Gui, 1:+Disabled  


FileDelete, %noyasegseleccac%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al borrar: %noyasegseleccac%,
}


FileAppend, %MyEdit1%, %noyasegseleccac%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al leer: %noyasegseleccac%,
}

if not FileExist(noyasegseleccac)
{
   MsgBox 0x40030, %nameofthisscript1% - Advertencia, El elemento no existe: %noyasegseleccac%
}




;nuevo valor
noyasegseleccac=%CLAVENots%\Note%notss1%.txt


FileRead, settext, %noyasegseleccac% 
if ErrorLevel
{
   MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al leer: %noyasegseleccac% 
}

GuiControl,1:, MyEdit1, %settext%
Gui, 1:-Disabled  
setwindowok()

return












xux14:
FileRead, settext, %noyasegseleccac% 
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al leer: %noyasegseleccac%,

}

GuiControl,1:, MyEdit1, %settext%
setwindowok()
Return






xux9:
if !FileExist(notepad)
  {  
MsgBox 0x40040, %nameofthisscript1% - Información, Ruta del programa invalida., 2
    return
    }
Run, %notepad% "%noyasegseleccac%", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
Return






xux6:
GuiControl, 1:, MyEdit1, %settext%
setwindowok()
Return












xux5:
Gui, 1:Submit, NoHide


FileDelete, %noyasegseleccac%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %noyasegseleccac%,

}





FileAppend, %MyEdit1%, %noyasegseleccac%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %noyasegseleccac%,

}

if not FileExist(noyasegseleccac)
{
   MsgBox 0x40030, %nameofthisscript1% - Advertencia, El elemento no existe: %noyasegseleccac%

}



setwindowok()
Return










reloadefal2:


MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Se desea proceder?
IfMsgBox Yes, {
	Gui, 1:+Disabled  
FileDelete, %noyasegseleccac%
if ErrorLevel
{ 
    
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al borrar: %noyasegseleccac%,

}





FileCopy, %A_ScriptDir%\Data\0.3, %noyasegseleccac%, [, 1]
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al copiar: %noyasegseleccac%,

}






FileRead, settext, %noyasegseleccac%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al leer: %noyasegseleccac%,

}


GuiControl,1:, MyEdit1, %settext%
Gui, 1:-Disabled  
setwindowok()
return



} 
Else IfMsgBox No, {
Return
}



return
























;Acceso a configuraciones
;#################################################################################
;#################################################################################


openfoldersegg:

OpenFolderDLs(UtiFolder_gg,UtiFolder_gg,1,FoldExpl_univers)
return



clipcomandsett:
ToTheClipboardDLs(Comtotal_gg,0)
return





ShowComDLsgg:
Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="g"
Infohere3=%confacc1%

;not modif
Infohere2pre:="Comtotal_" lidls lidls
Infohere2=% %Infohere2pre%
Infohere1pre:="DLs" lidls Infohere3
Infohere1=% %Infohere1pre%
goto ShowComDLs

return

EraseComDLsgg:
Gui, 1:+Disabled
MsgBox 0x40024, %nameofthisscript1% - Verificación, El comando será borrado y para aplicar los cambios es necesario reiniciar la aplicación ¿Se desea proceder?
IfMsgBox No, {
	Gui, 1:-Disabled
Return
}

Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="g"
Infohere3=%confacc1%

Gui, 1:-Disabled
goto EraseComDLs

return




confacc1:
Gui, 1:Submit, NoHide


;var a modificar
letrainsignia:="g"
fuenteNumber:=confacc1
Util_Dir=1
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

;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%
;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%




;ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
ShowMyImageDLs(ElemCom_gg1,ElemCom_gg2,ElemCom_gg3,ElemCom_gg4,{EXTRALARGE: 0x02},"1","imagenconf","imagenconfH",80,80)


if varstarstkm=1
goto idl11



return






imagenconf:


if ElemCom_gg2=Lista
{
	StartCommandDLs_Lista(ElemCom_gg1,FoldExpl_univers,LinkNaveg_univers)
	Efecto_Start("1","imagenconf")
	return
}



;ejecutar los comandos
;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_gg1,ElemCom_gg2,FoldExpl_univers,LinkNaveg_univers)
	Efecto_Start("1","imagenconf")
return






;Carpetas
;#################################################################################
;#################################################################################


;menucontextual
openfolderfolder:

OpenFolderDLs(UtiFolder_ff,UtiFolder_ff,1,FoldExpl_univers)

return



clipcomandfold:

ToTheClipboardDLs(Comtotal_ff,0)
return

ShowComDLsff:
Gui, 1:Submit, NoHide

;Gui mostrar informacion
lidls:="f"
Infohere3=%DLsDLsf%

;not modif
Infohere2pre:="Comtotal_" lidls lidls
Infohere2=% %Infohere2pre%
Infohere1pre:="DLs" lidls Infohere3
Infohere1=% %Infohere1pre%
goto ShowComDLs

return



EraseComDLsff:
Gui, 1:+Disabled
MsgBox 0x40024, %nameofthisscript1% - Verificación, El comando será borrado y para aplicar los cambios es necesario reiniciar la aplicación ¿Se desea proceder?
IfMsgBox No, {
	Gui, 1:-Disabled
Return
}

Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="f"
Infohere3=%DLsDLsf%

Gui, 1:-Disabled
goto EraseComDLs

return




DLsDLsf:


Gui, 1:Submit, NoHide


;var a modificar
letrainsignia:="f"
fuenteNumber:=DLsDLsf
Util_Dir=1
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

;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%
;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%




;ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
ShowMyImageDLs(ElemCom_ff1,ElemCom_ff2,ElemCom_ff3,ElemCom_ff4,{EXTRALARGE: 0x02},"1","icocarpeta1","icocarpeta1H",80,80)


;esto es la cadena de inicio
if varstarstkm=1
goto idl5

return




iconoexplor:

if FoldExpl_univers=0
{
Run,  C:\Windows\explorer.exe, ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

	}
	else
		if FoldExpl_univers=2
{
		Efecto_Start("1","iconoexplor")
goto clipcomandfold

	}
	else
{
Run,  %QDir1%, ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

	}

	
	Efecto_Start("1","iconoexplor")
return




Prestarnew:


Gui, 1:Submit, NoHide

if DLsDLsfacc=1
{
	FoldExpl_univers=0
	 guicontrol, 1:, iconoexplor, *icon1 *h50 *w50 C:\Windows\explorer.exe
}
else
if DLsDLsfacc=2
{
	
	
FoldExpl_univers=2
guicontrol, 1:, iconoexplor, *icon1 *h50 *w50 %A_ScriptDir%\Data\Gui\Clipb.png
}
else
   if DLsDLsfacc=3
{
	
	
	if !FileExist(QDir1)
	{
		FoldExpl_univers=0
		guicontrol, 1:, iconoexplor, *icon1 *h50 *w50 C:\Windows\explorer.exe
	}
	else
	{
	FoldExpl_univers=%QDir1%
	guicontrol, 1:, iconoexplor, *icon1 *h50 *w50 %QDir1%
}
}






return



starnew1:


if ElemCom_ff2=Lista
{
	StartCommandDLs_Lista(ElemCom_ff1,FoldExpl_univers,LinkNaveg_univers)
	
		Efecto_Start("1","icocarpeta1")
	
	return
}


;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_ff1,ElemCom_ff2,FoldExpl_univers,LinkNaveg_univers)
		Efecto_Start("1","icocarpeta1")
Return


















;Links
;#################################################################################
;#################################################################################


openfolderSell:
OpenFolderDLs(UtiFolder_ll,UtiFolder_ll,1,FoldExpl_univers)
return


clipcomandlinks:
ToTheClipboardDLs(Comtotal_ll,0)
return




ShowComDLsll:

Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="l"
Infohere3=%linkscgalm%

;not modif
Infohere2pre:="Comtotal_" lidls lidls
Infohere2=% %Infohere2pre%
Infohere1pre:="DLs" lidls Infohere3
Infohere1=% %Infohere1pre%
goto ShowComDLs

return


EraseComDLsll:
Gui, 1:+Disabled
MsgBox 0x40024, %nameofthisscript1% - Verificación, El comando será borrado y para aplicar los cambios es necesario reiniciar la aplicación ¿Se desea proceder?
IfMsgBox No, {
	Gui, 1:-Disabled
Return
}

Gui, 1:Submit, NoHide
;Gui mostrar informacion
lidls:="l"
Infohere3=%linkscgalm%

Gui, 1:-Disabled
goto EraseComDLs

return




linkscgalm:


Gui, 1:Submit, NoHide


;var a modificar
letrainsignia:="l"
fuenteNumber:=linkscgalm
Util_Dir=1
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

;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%
;no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%no utilizar %PreElemCom%




;ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
ShowMyImageDLs(ElemCom_ll1,ElemCom_ll2,ElemCom_ll3,ElemCom_ll4,{EXTRALARGE: 0x02},"1","imageofgo6","imageofgo6H",80,80)



;Final de la cadena de inicio
;Accion final de poner las imagenes

if varstarstkm=1
{
   varstarstkm=0
   ;situacion del icono que tarda en aparecer
      Gui, 1:hide
      Sleep 10
   Gui, 1:show
  return
}



return









idl11:



	

Gui, 1:Submit, NoHide
if (idl11 =1)
         { 
      
 guicontrol, 1:, iconofwed, *icon1 *h50 *w50 %A_ScriptDir%\Data\Gui\imacong.png
 guicontrol, 1:, driveofnaveg, 
 LinkNaveg_univers:=0
}
else
if (idl11 =2)
         { 
            if !FileExist(progest2)
              {  guicontrol, 1:, iconofwed, *icon1 *h50 *w50 %A_ScriptDir%\Data\Gui\Noapp.png
                guicontrol, 1:, driveofnaveg,
				 LinkNaveg_univers:=0
             }
            else
            {
 guicontrol, 1:, iconofwed, *icon1 *h50 *w50 %progest2%
 SplitPath, progest2, , , , , drivenave
 if drivenave=
 drivenave:=driveorig
 guicontrol, 1:, driveofnaveg, %drivenave%\
 LinkNaveg_univers:=progest2
}
}
else
if (idl11 =3)
         { 
                    if !FileExist(progest4)
       {  guicontrol, 1:, iconofwed, *icon1 *h50 *w50 %A_ScriptDir%\Data\Gui\Noapp.png
                guicontrol, 1:, driveofnaveg,
								 LinkNaveg_univers:=0
             }
            else
            {
 guicontrol, 1:, iconofwed, *icon1 *h50 *w50 %progest4%
 SplitPath, progest4, , , , , drivenave
  if drivenave=
 drivenave:=driveorig
 guicontrol, 1:, driveofnaveg, %drivenave%\
				 LinkNaveg_univers:=progest4
}
}
else
if (idl11 =4)
         { 
                        if !FileExist(progest6)
       {  guicontrol, 1:, iconofwed, *icon1 *h50 *w50 %A_ScriptDir%\Data\Gui\Noapp.png
                guicontrol, 1:, driveofnaveg,
								 LinkNaveg_univers:=0
             }
            else
            {
 guicontrol, 1:, iconofwed, *icon1 *h50 *w50 %progest6%
 SplitPath, progest6, , , , , drivenave
  if drivenave=
 drivenave:=driveorig
 guicontrol, 1:, driveofnaveg, %drivenave%\
				 LinkNaveg_univers:=progest6
}
}
else
if (idl11 =5)
         { 
                if !FileExist(progest8)
       {  guicontrol, 1:, iconofwed, *icon1 *h50 *w50 %A_ScriptDir%\Data\Gui\Noapp.png
                guicontrol, 1:, driveofnaveg,
								 LinkNaveg_univers:=0
             }
            else
            {
 guicontrol, 1:, iconofwed, *icon1 *h50 *w50 %progest8%
 SplitPath, progest8, , , , , drivenave
  if drivenave=
 drivenave:=driveorig
 guicontrol, 1:, driveofnaveg, %drivenave%\
				 LinkNaveg_univers:=progest8
}

}
else
if (idl11 =6)
         { 
                            if !FileExist(progest10)
       {  guicontrol, 1:, iconofwed, *icon1 *h50 *w50 %A_ScriptDir%\Data\Gui\Noapp.png
                guicontrol, 1:, driveofnaveg,
								 LinkNaveg_univers:=0
             }
            else
            {
 guicontrol, 1:, iconofwed, *icon1 *h50 *w50 %progest10%
 SplitPath, progest10, , , , , drivenave
  if drivenave=
 drivenave:=driveorig
 guicontrol, 1:, driveofnaveg, %drivenave%\
				 LinkNaveg_univers:=progest10
}
}
else
if (idl11 =7)
         { 
                guicontrol, 1:, iconofwed, *icon1 *h50 *w50 %A_ScriptDir%\Data\Gui\Clipb.png
   guicontrol, 1:, driveofnaveg,
   				 LinkNaveg_univers:=2
}



;esto es la cadena de inicio
if varstarstkm=1
{
goto, linkscgalm
}

return











iconofwed:


if LinkNaveg_univers=2
{
	Efecto_Start("1","iconofwed")
goto clipcomandlinks
}
			

Efecto_Start("1","iconofwed")

if LinkNaveg_univers=0
StartCommandDLs("https://duckduckgo.com","Link",0,0)
	else
StartCommandDLs(LinkNaveg_univers,"",0,0)


return




sexecop1:



if ElemCom_ll2=Lista
{
	StartCommandDLs_Lista(ElemCom_ll1,FoldExpl_univers,LinkNaveg_univers)
	
	Efecto_Start("1","imageofgo6")
	return
}


;ejecutar los comandos
;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_ll1,ElemCom_ll2,FoldExpl_univers,LinkNaveg_univers)
	Efecto_Start("1","imageofgo6")
return













limpiarbusqueda:
guicontrol, 1:, editsearch,
return







lk8:

SetTimer, limpiarbusqueda, 180000

Gui, 1:Submit, NoHide
GuiControlGet, vaabusgoo ,1:, editsearch


if  vaabusgoo=
return



vupat=
(
http://www.google.com/search?q=%vaabusgoo%
)



if LinkNaveg_univers=2
			return

	Efecto_Start("1","codiimagba17")

if LinkNaveg_univers=0
StartCommandDLs(vupat,"Link",0,0)
	else
		StartCommandDLs(vupat,"Link",0,LinkNaveg_univers)


return









;#################################################################################
;;Acciones Gui internas
;#################################################################################
;#################################################################################
;#################################################################################
;#################################################################################







;para los tooltip 
;#################################################################################
;#################################################################################

WM_MOUSEMOVE()
{
    static CurrControl, PrevControl, _TT  ; _TT is kept blank for use by the ToolTip command below.
    CurrControl := A_GuiControl
    If (CurrControl <> PrevControl and not InStr(CurrControl, " "))
    {
        ToolTip  ; Turn off any previous tooltip.
        SetTimer, DisplayToolTip, 0   ;tiempo de despliege
        PrevControl := CurrControl
    }
    return

    DisplayToolTip:
	
		;si la gui esta oculta no se muestran 
if ventaprinact=0
	return
	
	
if ttesactiv=1
{
If InStr(CurrControl, "imagliar")
{
	global acqvtt:= StrReplace(CurrControl, "imagliar", "")
	gosub displayguiesp
	return
}

If InStr(CurrControl, "textsolnum")
{
	global acqvtt:= StrReplace(CurrControl, "textsolnum", "")
	gosub displayguiesp
	return
}
}
	
	
	
	
    SetTimer, DisplayToolTip, Off
    ToolTip % %CurrControl%_TT  ; The leading percent sign tell it to use an expression.
    SetTimer, RemoveToolTip, 5000 ;duracion del  despliege
    return

    RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip
    return
}








displayguiesp:

if laguiaparec=1
return

nametodisp1:="DLsr"acqvtt
nametodisp2=% %nametodisp1%




if nametodisp2=.
return

if nametodisp2=
return

;posicion actual del maus
MouseGetPos ,guinamx,guinamy

;ttes no fuera de la gui
WinGetPos, gui_xcheck, gui_ycheck,,, ahk_id %gui_id%

gui_xcheck2:=gui_xcheck
gui_ycheck2:=gui_ycheck
EnvAdd,gui_xcheck2,295
EnvAdd,gui_ycheck2,393
;+ caption bar
EnvAdd,gui_ycheck2, 30

if guinamx not between %gui_xcheck% and %gui_xcheck2%
return

if guinamy not between %gui_ycheck% and %gui_ycheck2%
return





guinamx4:=guinamx
guinamy4:=guinamy
;espacio de separacion maus
EnvAdd,guinamx4,20
EnvAdd,guinamy4,20

Gui, guinam:+AlwaysOnTop -Caption +ToolWindow


Gui, guinam:Font, s%zzletrattesp% c0x%ttesguicolorfont% %ttesguifontstyle%, %ttesguifont%
Gui, guinam:Color ,%ttesguicolor%

Gui, guinam:Add, Text, x5 y5 center Hwndtexofguittes,

SetTextAndResize(texofguittes,nametodisp2)


;espacio para mejorar aspecto
EnvAdd,wzixeofcontrol,10
EnvAdd,hzixeofcontrol,10


gui_positionguinam=x%guinamx4% y%guinamy4%
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(hzixeofcontrol,wzixeofcontrol,gui_positionguinam,"guinam")
gui_positionguinam=%guipositionmod%


Gui, guinam:Show, %gui_positionguinam%  w%wzixeofcontrol% h%hzixeofcontrol% NA , %nametodisp2% 
;Gui, guinam:Show, %gui_positionguinam% w%guinamw% h%guinamh% NA , %nametodisp2%
laguiaparec=1


stopguinam3:
SetTimer, stopguinam2, 500
return

stopguinam2:
MouseGetPos ,guinamx2,guinamy2

	if guinamx2=%guinamx%
		goto stopguinam3
	
	if guinamy2=%guinamy%
		goto stopguinam3
	
		goto stopguinam	
	return
	
return


stopguinam:

SetTimer, stopguinam2, Off
Gui, guinam:Destroy
laguiaparec=0
return


SetTextAndResize(controlHwnd, newText) {
    dc := DllCall("GetDC", "Ptr", controlHwnd)

    ; 0x31 = WM_GETFONT
    SendMessage 0x31,,,, ahk_id %controlHwnd%
    hFont := ErrorLevel
    oldFont := 0
    if (hFont != "FAIL")
        oldFont := DllCall("SelectObject", "Ptr", dc, "Ptr", hFont)

    VarSetCapacity(rect, 16, 0)
    ; 0x440 = DT_CALCRECT | DT_EXPANDTABS
    h := DllCall("DrawText", "Ptr", dc, "Ptr", &newText, "Int", -1, "Ptr", &rect, "UInt", 0x440)
    ; width = rect.right - rect.left
    w := NumGet(rect, 8, "Int") - NumGet(rect, 0, "Int")

    if oldFont
        DllCall("SelectObject", "Ptr", dc, "Ptr", oldFont)
    DllCall("ReleaseDC", "Ptr", controlHwnd, "Ptr", dc)


Global wzixeofcontrol:=w
Global hzixeofcontrol:=h

    GuiControl,, %controlHwnd%, %newText%
    GuiControl Move, %controlHwnd%, % "h" h " w" w
}




;menucontextual
;#################################################################################
;#################################################################################
GuiContextMenu:

;desactivar cualquier ToolTip que este actualmente desplegado
ToolTip
;TTES
gosub stopguinam

If A_GUICONTROL=imageofgo2
{
	
	;no hay comando
	if ElemCom_aa1=
	{
		Menu, menupic1pre, Show, %A_GuiX%, %A_GuiY%
		return
	}
	
	varseleccmenu:=ComTieneDirectorioDLs(ElemCom_aa2)
	
	if varseleccmenu=0
Menu, menupic1, Show, %A_GuiX%, %A_GuiY%
else
	Menu, menupic1pre, Show, %A_GuiX%, %A_GuiY%



return
}


If A_GUICONTROL=imageofgo1
{
	
	
		;no hay comando
	if ElemCom_bb1=
	{
		Menu, menupic2pre, Show, %A_GuiX%, %A_GuiY%
		return
	}
	
	
	varseleccmenu:=ComTieneDirectorioDLs(ElemCom_bb2)
	
	if varseleccmenu=0
Menu, menupic2, Show, %A_GuiX%, %A_GuiY%
else
	Menu, menupic2pre, Show, %A_GuiX%, %A_GuiY%
return
}


If A_GUICONTROL=imageofgo3
{
	
	
		;no hay comando
	if ElemCom_cc1=
	{
		Menu, menupic3pre, Show, %A_GuiX%, %A_GuiY%
		return
	}

	
		varseleccmenu:=ComTieneDirectorioDLs(ElemCom_cc2)
	
	if varseleccmenu=0
Menu, menupic3, Show, %A_GuiX%, %A_GuiY%
else
	Menu, menupic3pre, Show, %A_GuiX%, %A_GuiY%

return
}




If A_GUICONTROL=imageofgo4
{
	
			;no hay comando
	if ElemCom_ee1=
	{
		Menu, menupic4pre, Show, %A_GuiX%, %A_GuiY%
		return
	}

	
	
			varseleccmenu:=ComTieneDirectorioDLs(ElemCom_ee2)
	
	if varseleccmenu=0
Menu, menupic4, Show, %A_GuiX%, %A_GuiY%
else
Menu, menupic4pre, Show, %A_GuiX%, %A_GuiY%

return
}

If A_GUICONTROL=imagenofclipb
{
	
	
	
				;no hay comando
	if ElemCom_jj1=
	{
		Menu, menupic5pre, Show, %A_GuiX%, %A_GuiY%
		return
	}

	
			varseleccmenu:=ComTieneDirectorioDLs(ElemCom_jj2)
	
	if varseleccmenu=0
Menu, menupic5, Show, %A_GuiX%, %A_GuiY%
else
Menu, menupic5pre, Show, %A_GuiX%, %A_GuiY%
return
}


If A_GUICONTROL=imagenconf
{
	
		if ElemCom_gg1=
	{
		Menu, menupic16pre, Show, %A_GuiX%, %A_GuiY%
		return
	}
	
	
			varseleccmenu:=ComTieneDirectorioDLs(ElemCom_gg2)
	
	if varseleccmenu=0
Menu, menupic16, Show, %A_GuiX%, %A_GuiY%
else
Menu, menupic16pre, Show, %A_GuiX%, %A_GuiY%

return
}

If A_GUICONTROL=icocarpeta1
{
	
			if ElemCom_ff1=
	{
		Menu, menupic17pre, Show, %A_GuiX%, %A_GuiY%
		return
	}
	
			varseleccmenu:=ComTieneDirectorioDLs(ElemCom_ff2)
	
	if varseleccmenu=0
Menu, menupic17, Show, %A_GuiX%, %A_GuiY%
else
	Menu, menupic17pre, Show, %A_GuiX%, %A_GuiY%
return
}


If A_GUICONTROL=imageofgo6
{
	
	
	
				if ElemCom_ll1=
	{
		Menu, menupic18pre, Show, %A_GuiX%, %A_GuiY%
		return
	}
	
	
	
				varseleccmenu:=ComTieneDirectorioDLs(ElemCom_ll2)
	
	if varseleccmenu=0
Menu, menupic18, Show, %A_GuiX%, %A_GuiY%
else
	Menu, menupic18pre, Show, %A_GuiX%, %A_GuiY%
return
}




If InStr(A_GUICONTROL, "imagliar")
{
	posidelelemet:= StrReplace(A_GUICONTROL, "imagliar", "")
	goto setguicontexsecund
}

If InStr(A_GUICONTROL, "textsolnum")
{
	posidelelemet:= StrReplace(A_GUICONTROL, "textsolnum", "")
	goto setguicontexsecund
}

	goto menumenusele1



setguicontexsecund:


;var a modificar
letrainsignia:="r"
fuenteNumber:=posidelelemet
Util_Dir=1
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




if %PreElemCom1%=
	goto menumenusele2es




if %PreElemCom2%=Clipboard
goto menumenusele2es
if %PreElemCom2%=Clipboardtxt
goto menumenusele2es
if %PreElemCom2%=Config
goto menumenusele2es
if %PreElemCom2%=Link
goto menumenusele2es



Menu, menusele2, Show, %A_GuiX%, %A_GuiY%
return

menumenusele2es:
Menu, menusele3, Show, %A_GuiX%, %A_GuiY%
return

menumenusele1:
Menu, menu1, Show, %A_GuiX%, %A_GuiY%
return





menupictop1:

OpenFolderDLs(ElemCom_rr1,UtiFolder_rr,1,FoldExpl_univers)


return



menupictop2:

ToTheClipboardDLs(Comtotal_rr,0)
return



ShowComDLsrr:

;Gui mostrar informacion
lidls:="r"
Infohere3=%posidelelemet%

;not modif
Infohere2pre:="Comtotal_" lidls lidls
Infohere2=% %Infohere2pre%
Infohere1pre:="DLs" lidls Infohere3
Infohere1=% %Infohere1pre%
goto ShowComDLs

return

EraseComDLsrr:
Gui, 1:+Disabled
MsgBox 0x40024, %nameofthisscript1% - Verificación, El comando será borrado y para aplicar los cambios es necesario reiniciar la aplicación ¿Se desea proceder?
IfMsgBox No, {
	Gui, 1:-Disabled
Return
}

;Gui mostrar informacion
lidls:="r"
Infohere3=%posidelelemet%

Gui, 1:-Disabled
goto EraseComDLs

return





;Ocultar gui
;#################################################################################
;#################################################################################

extimmdeditmw:
goto, tdpta1
return



;OJos
;#################################################################################
;#################################################################################
ojospormsg:
MouseGetPos ,stkposix,stkposiy


EnvSub, stkposix,105
EnvSub, stkposiy,55

gui_positionwin1=x%stkposix% y%stkposiy%
guipositionmod:=ShowGuiPlease(50,100,gui_positionwin1,"osc1")
gui_positionwin1=%guipositionmod%

SoundPlay, *64


Gui, osc1:Show, NA %gui_positionwin1% w100 h50, Tiempo de oscuridad

;el calculo fue realizado en el inicio
SetTimer, oscuridad1, %oscur8%
Return


oscuridad1:
gui, osc1: Hide

;el calculo fue realizado en el inicio
SetTimer, ojospormsg, %oscur6%
return






;#################################################################################
;Cambio de seccion "Acciones del teclado"
;#################################################################################


accionhotkey2: 
Winset, Alwaysontop, , A
setwindowok()
Return



accionhotkey1:
nretor: 


if ventaprinact=0
{
Gui, 1:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(stkmh,stkmw,gui_position,"1")
gui_position=%guipositionmod%
Gui, 1:Show, %gui_position%


ventaprinact=1

if guco11=1
{ 
SetTimer, tdpta1, %tiemenhid1%
} 






}
else
{
   
   goto GuiClose
   
   
}



Return










;*********************************************************Timer
; Turn Caps Lock into a Shift key





fincapss:
Capslock::



if stwcaps=1
 {
  SetCapsLockState, Off  
  stwcaps=0
  SetTimer, fincapss, off
}
else
 {
 SetCapsLockState, On
  stwcaps=1
  SetTimer, fincapss, 30000
}

return








accionhotkey3:
SoundSet, +1, , mute
Return
















;#################################################################################
;#################################################################################
;#################################################################################
;#################################################################################
;Acciones Gui
;#################################################################################









































































































   











;#################################################################################
;gui utilitarias
;#################################################################################
;********************************************************************************
;gui para mostrar que se esta ejecutando un comando




;#################################################################################


sett1:


if vatoflooconfig=1
{
	Gui, Ab:Show
	
	WinGetPos, gui_x, gui_y,,, ahk_id %skconf%
gui_position2=x%gui_x% y%gui_y%

;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(379,410,gui_position2,"Ab")
gui_position2=%guipositionmod%

Gui, Ab:Show, %gui_position2%
	return
}
	




tiemenhid2:=tiemenhid1/1000
    setformvar1:=Format("{:d}",tiemenhid2)
tiemenhid2=%setformvar1%



;end loop
vatoflooconfig=1






Gui, Ab:Font, Norm
Gui, Ab:Color ,,%stkcg5%
Gui, Ab:Font, c0x%stkcg4%
Gui, Ab:Color ,%stkcg6%

Gui, Ab:Add, Button, x10 y10 w90 h20 vetes4 gwindow2, Apps


Gui, Ab:Add, Button, x110 y10 w90 h20 vetes3 gacc4, Start-Start Apps


Gui, Ab:Add, Button, x210  y10 w90 h20 vproaacalcie gproaacalcie, Close-Close Apps


;Gui, Ab:Add, Button, x310  y10 w90 h20   


Gui, Ab:Add, Button, x10 y40 w90 h20   vwindow3 gwindow3, Brillo

Gui, Ab:Add, Button, x110 y40 w90 h20 gGuioscur vGuioscur, Oscuridad


Gui, Ab:Add, Button, x210  y40 w90 h20 vrecnotes grecnotes, Notas nombres

Gui, Ab:Add, Button, x310 y40 w90 h20   vnotyascust gnotyascust, Notas estilo



Gui, Ab:Add, Button, x10 y70 w90 h20   vstkust gstkust, STK estilo

Gui, Ab:Add, Button, x110  y70 w90 h20  vwindwutgui gwindwutgui , Avisos



Gui, Ab:Add, Button, x210  y70 w90 h20 vsethotkeys  gsethotkeys, Hotkeys

Gui, Ab:Add, Button, x310 y70 w90 h20   vaplichk gaplichk, Com. Hotkey
;Gui, Ab:Add, Button, x210  y70 w90 h20   


;Gui, Ab:Add, Button, x310 y70 w90 h20 


Gui, Ab:Add, Text, x12 y165 w390 h20 center,Otras configuraciones





Gui, Ab: Add, CheckBox, x12 y179 w60 h30 vcaja6 Checked%guco12%, OnTop



Gui, Ab:Add, CheckBox, x82 y179 w60 h30 vcaja5  Checked%guco11%, Ocultar

Gui, Ab:Add, Edit, x152 y184 w70 h20 gsegundosasttstk vlortimeedit r1 number center, %tiemenhid2%

Gui, Ab:Add, Text, x230 y188 w150 h20 vcaja7 , %guco13%




Gui, Ab: Add, CheckBox, x12 y209 w60 h30 vonoffcapsl Checked%desacmayusbloq%, Caps

Gui, Ab:Add, text, x12 y243 w80 h20 ,Carpeta destino
Gui, Ab:Add, Edit, x90 y239 w310 h20  vsavecarp r1 ,%CLAVESave%




Gui, Ab:Add, text, x12 y273 w80 h20 center ,DLs
Gui, Ab:Add, Edit, x90 y269 w310 h20  vrutdls r1 ,%CLAVEDLsexe%








Gui, Ab:Add, Button, x350 y349 w50 h20 gacc1, Aceptar



Gui, Ab:Add, Button, x192 y349 w40 h20 gabout1, About

Gui, Ab:Add, Button, x12 y349 w50 h20 gsetdd, Default



;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(379,410,gui_position2,"Ab")
gui_position2=%guipositionmod%

Gui, Ab:Show, %gui_position2% h379 w410, %nameofthisscript1% - Configuración

Gui, Ab:+Hwndskconf


return









;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos por medio de Hotkey
aplichk:
;la ventana esta activa
varguiaplichkgui=1



Gui Ab:+Disabled  ; Disable main window.
Gui, aplichkgui:+ownerAb
Gui, aplichkgui:Font, Norm
Gui, aplichkgui:Color ,,%stkcg5%
Gui, aplichkgui:Font, c0x%stkcg4%
Gui, aplichkgui:Color ,%stkcg6%

Gui, aplichkgui:-MinimizeBox
	;valor de Y
continforguiprinacraY:=10
	;valor de x
continforguiprinacraX:=10

;valor para la variable independiente

numeguiprinacra=0
; valor ya establecido numeguiprinacra=0
numeguiprinacragrupo=0
Loop
{
numeguiprinacragrupo++

numeguiprinacra++

	continforguiprinacra3:="aplichkcontr"numeguiprinacra
	 continforguiprinacra5:="comhoke"numeguiprinacra
continforguiprinacra6=% %continforguiprinacra5%


Gui, aplichkgui:Add, CheckBox,  X%continforguiprinacraX%   y%continforguiprinacraY%  h20 w170       Checked%continforguiprinacra6% v%continforguiprinacra3% , Activar Hotkey %numeguiprinacragrupo%



numeguiprinacra++
	continforguiprinacra3:="aplichkcontr"numeguiprinacra
	 continforguiprinacra5:="comhoke"numeguiprinacra
continforguiprinacra6=% %continforguiprinacra5%
	
continforguiprinacraY+=20
	
Gui, aplichkgui:Add, Hotkey, X%continforguiprinacraX%   y%continforguiprinacraY%  h20 w200 v%continforguiprinacra3%        ,%continforguiprinacra6%




numeguiprinacra++
	continforguiprinacra3:="aplichkcontr"numeguiprinacra
	 continforguiprinacra5:="comhoke"numeguiprinacra
continforguiprinacra6=% %continforguiprinacra5%

continforguiprinacraY+=20
	
Gui, aplichkgui:Add, Edit, X%continforguiprinacraX%   y%continforguiprinacraY%  h20 w300 v%continforguiprinacra3%         ,%continforguiprinacra6%


	

;Nuevo grupo
continforguiprinacraY+=30

	
	
if numeguiprinacragrupo=7
{
	continforguiprinacraX+=310
	continforguiprinacraY=10
}

if numeguiprinacragrupo=14
{
	continforguiprinacraX+=310
	continforguiprinacraY=10
}


}until numeguiprinacra=60



Gui, aplichkgui:Add, Text,  x10 y510 h20 w780  , Si la Hotkey esta vacía o el elemento principal en el comando no existe la Hotkey se desactivará al iniciar %nameofthisscript1%.

Gui, aplichkgui:Add, Button,  x900  y510 h20 w30 vaplichkcontr66 gaplichkcontr66  ,OK 

Gui, aplichkgui:Show, center h540 w940, %nameofthisscript1% - Comandos  Hotkey




numprlop=0
Loop
{
	Gui, aplichkgui:Submit, NoHide

numprlop++


	preconnamevar:="aplichkcontr" numprlop
	connamevar=% %preconnamevar%
	
	if  connamevar=0
	{
		numprlop++
		guicontrol, aplichkgui:Disable, aplichkcontr%numprlop%
			numprlop++
		guicontrol, aplichkgui:Disable, aplichkcontr%numprlop%
	}
	else
	{
			numprlop++
		guicontrol, aplichkgui:Enable, aplichkcontr%numprlop%
			numprlop++
		guicontrol, aplichkgui:Enable, aplichkcontr%numprlop%

	}
	
	
	if numprlop=60
	{
		numprlop=0
		Sleep 1500

	}
	
	if varguiaplichkgui=0
	break
}


return





aplichkcontr66:
Gui, aplichkgui:Submit, NoHide




varnumbcomhk=0
Loop
{
	varnumbcomhk++
	
prevarnumbcomhk1:=varnumbcomhk*3
varnumbcomhk1 :=Format("{:d}", prevarnumbcomhk1)

continforguiprinacra3:="aplichkcontr"varnumbcomhk1
continforguiprinacra4=% %continforguiprinacra3%

if continforguiprinacra4=
	%continforguiprinacra3%=No establecido

}until varnumbcomhk=30




varnumbcomhk=0
Loop
{
	varnumbcomhk++




continforguiprinacra3:="aplichkcontr"varnumbcomhk
continforguiprinacra4=% %continforguiprinacra3%


;actualizar variables
concomhoke:="comhoke"varnumbcomhk
%concomhoke%=%continforguiprinacra4%


IniWrite, %continforguiprinacra4%, %CLAVEaini%, ComandosHotkey, %varnumbcomhk%



}until varnumbcomhk=60



;la ventana esta activa
varguiaplichkgui=0

Gui, aplichkgui:Destroy
Gui Ab:-Disabled  ; Disable main window.


goto acc1

return








aplichkguiGuiclose:
;la ventana esta activa
varguiaplichkgui=0

Gui, aplichkgui:Destroy
Gui Ab:-Disabled  ; Disable main window.
return





accioncomhoke1:
valoraccioncomhoke=1
goto concentracomhoke
return



accioncomhoke2:
valoraccioncomhoke=2
goto concentracomhoke
return




accioncomhoke3:
valoraccioncomhoke=3
goto concentracomhoke
return


accioncomhoke4:
valoraccioncomhoke=4
goto concentracomhoke
return




accioncomhoke5:
valoraccioncomhoke=5
goto concentracomhoke
return





accioncomhoke6:
valoraccioncomhoke=6
goto concentracomhoke
return




accioncomhoke7:
valoraccioncomhoke=7
goto concentracomhoke
return




accioncomhoke8:
valoraccioncomhoke=8
goto concentracomhoke
return




accioncomhoke9:
valoraccioncomhoke=9
goto concentracomhoke
return





accioncomhoke10:
valoraccioncomhoke=10
goto concentracomhoke
return




accioncomhoke11:
valoraccioncomhoke=11
goto concentracomhoke
return




accioncomhoke12:
valoraccioncomhoke=12
goto concentracomhoke
return



accioncomhoke13:
valoraccioncomhoke=13
goto concentracomhoke
return


accioncomhoke14:
valoraccioncomhoke=14
goto concentracomhoke
return




accioncomhoke15:
valoraccioncomhoke=15
goto concentracomhoke
return




accioncomhoke16:
valoraccioncomhoke=16
goto concentracomhoke
return




accioncomhoke17:
valoraccioncomhoke=17
goto concentracomhoke
return




accioncomhoke18:
valoraccioncomhoke=18
goto concentracomhoke
return





accioncomhoke19:
valoraccioncomhoke=19
goto concentracomhoke
return




accioncomhoke20:
valoraccioncomhoke=20
goto concentracomhoke
return





concentracomhoke:

valoraccioncomhoke1:=valoraccioncomhoke*3

conentradacomhoke:="comhoke" valoraccioncomhoke1

entradacomhoke=% %conentradacomhoke%


ElemCom_HKHK1=
ElemCom_HKHK2=



numberDLs_Start=0
Loop, Parse, entradacomhoke, |,
{
   
numberDLs_Start++

PreeElemComstringvar:="ElemCom_HKHK" numberDLs_Start



%PreeElemComstringvar%=%A_LoopField%
   
}until numberDLs_Start=2



if ElemCom_HKHK2=Lista
{
	StartCommandDLs_Lista(ElemCom_HKHK1,FoldExpl_univers,LinkNaveg_univers)
	return
}


;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_HKHK1,ElemCom_HKHK2,FoldExpl_univers,LinkNaveg_univers)
return

;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey











setdd:

MsgBox 0x40024, %nameofthisscript1% - Verificación,¿Realmente desea proceder?
IfMsgBox Yes, {
    
filedelete, %CLAVEaini%
Reload    

          } 
              Else IfMsgBox No, {
					
				
              Return
              }


return






windwutgui:

windwutguiactive=1

Gui, windwutgui:+ownerAb  ; Make the main window (Gui #1) the owner of the "about box".
Gui Ab:+Disabled  ; Disable main window.


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
Gui Ab:-Disabled  ; Disable main window.

Return







Guioscur:


ventactoscur=1




Gui, Oscg:-MinimizeBox

Gui, Oscg:+ownerAb  ; Make the main window (Gui #1) the owner of the "about box".
Gui Ab:+Disabled  ; Disable main window.

Gui, Oscg:Font, Norm
Gui, Oscg:Color ,,%stkcg5%
Gui, Oscg:Font, c0x%stkcg4%
Gui, Oscg:Color ,%stkcg6%



Gui, Oscg:Add, Text, x12 y9 w130 h20 voscguicon1, Periodo de espera
Gui, Oscg:Add, Edit, x142 y9 w60 h20 voscguicon2 goscguicon2 number center, %oscur3%
Gui, Oscg:Add, Text, x212 y12 w115 h20 voscguicon3, %oscur2%


Gui, Oscg:Add, Text, x12 y39 w130 h20 voscguicon4, Tiempo de despliegue
Gui, Oscg:Add, Edit, x142 y39 w60 h20 voscguicon5 number center, %oscur4%
Gui, Oscg:Add, Text, x212 y42 w115 h20 voscguicon6, Segundos



Gui, Oscg:Add, CheckBox, x12 y69 w140 h20 Checked%oscur1% voscguicon7, Oscuridad activada


Gui, Oscg:Add, Button, x282 y69 w40 h20  gsaveosc vsaveosc, Ok



; Generated using SmartGUI Creator 4.0
Gui, Oscg:Show, Center h99 w328, %nameofthisscript1% - Oscuridad




Loop
{
   Gui, Oscg:Submit, NoHide

   if  oscguicon7=0
   {
   guicontrol, Oscg:Disable, oscguicon2
              guicontrol, Oscg:Disable, oscguicon5
}
else
{
      guicontrol, Oscg:Enable, oscguicon2
              guicontrol, Oscg:Enable, oscguicon5
              
}

if ventactoscur=0
   break
}

Return











oscguicon2:

Loop 30 {
guicontrolget, certv,Oscg:,oscguicon2
    
    
guicontrol, Oscg:,oscguicon3, Segundos
    
    if  certv>59
{
    minutoscard3:=certv/60
    


             setformvar1:=Format("{:.2f}",minutoscard3)
minutoscard3=%setformvar1%



guicontrol, Oscg:,oscguicon3, %minutoscard3% Minutos
}


if  certv>3599
{
    minutoscard2:=certv/3600
    
             setformvar1:=Format("{:.2f}",minutoscard2)
minutoscard2=%setformvar1%
    
    
    
guicontrol, Oscg:,oscguicon3, %minutoscard2% Horas
}

sleep 500

if  ventactoscur=1
        break

}
Return











saveosc:

Gui, Oscg:Submit, NoHide

guicontrolget, certv2,Oscg:,oscguicon3


if oscguicon2=
{
oscguicon2=4680
certv2=1.30 Horas
}


if oscguicon5=
oscguicon5=5



if oscguicon2<30
   {
MsgBox 0x40030, %nameofthisscript1% - Advertencia,  El valor del periodo de espera es demasiado bajo., 2
return
}




if oscguicon5>60
   {
MsgBox 0x40030, %nameofthisscript1% - Advertencia,  El valor del tiempo de despliegue es demasiado alto., 2
return
}

if oscguicon5<2
   {
MsgBox 0x40030, %nameofthisscript1% - Advertencia,  El valor del tiempo de despliegue es demasiado bajo., 2
return
}



IniWrite, %oscguicon7%, %CLAVEaini%, Oscuridad, a
IniWrite, %certv2%, %CLAVEaini%, Oscuridad, b
IniWrite, %oscguicon2%, %CLAVEaini%, Oscuridad, c
IniWrite, %oscguicon5%, %CLAVEaini%, Oscuridad, d



;Guardar y reiniciar sin apps
Henaccrein=1
goto reloadcomplex



return



OscgGuiClose:

ventactoscur=0


Gui Ab:-Disabled  ; Disable main window.

Gui Oscg:Destroy


Return






















AbGuiClose:
AbGuiEscape:



WinGetPos, gui_x, gui_y,,, ahk_id %skconf%
gui_position2=x%gui_x% y%gui_y%
IniWrite, %gui_position2%, %CLAVEaini%, window position, gui_position2



if guco11=1
   { 
SetTimer, tdpta1, %tiemenhid1%  
} 


;end loop
vatoflooconfig=0



Gui Ab:Destroy  ; Destroy the about box.



return



segundosasttstk:

Loop 30 {
guicontrolget, certv,Ab:,lortimeedit
    
    
guicontrol, Ab:,caja7, Segundos
    
    if  certv>59
{
    minutoscard3:=certv/60
    


             setformvar1:=Format("{:.2f}",minutoscard3)
minutoscard3=%setformvar1%



guicontrol, Ab:,caja7, %minutoscard3% Minutos
}


if  certv>3599
{
    minutoscard2:=certv/3600
    
             setformvar1:=Format("{:.2f}",minutoscard2)
minutoscard2=%setformvar1%
    
    
    
guicontrol, Ab:,caja7, %minutoscard2% Horas
}

sleep 500

if  vatofloo=1
        break

}
Return












acc1: 

Gui, Ab:Submit, NoHide





if  savecarp=
savecarp=%A_ScriptDir%\Save


valorsavestkm8:=lortimeedit*1000


if valorsavestkm8 <=13000
   {
MsgBox 0x40030, %nameofthisscript1% - Advertencia,  El valor es demasiado bajo., 2
return
}



if rutdls=
rutdls=DLs.exe

GuiControlGet, texttempo,Ab:,caja7

IniWrite, %caja5%, %CLAVEaini%, otros, a
IniWrite, %texttempo%, %CLAVEaini%, otros, b
IniWrite, %valorsavestkm8%, %CLAVEaini%, otros, c
IniWrite, %onoffcapsl%, %CLAVEaini%, otros, d
IniWrite, %savecarp%, %CLAVEaini%, otros, e
IniWrite, %rutdls%, %CLAVEaini%, otros, f
IniWrite, %caja6%, %CLAVEaini%, otros, g






contexreinic:
;Guardar y reiniciar sin apps
Henaccrein=1
goto reloadcomplex

return




sethotkeys:
;exit loop
exitventhk1=0


Gui, hotkeygui:+ownerAb  ; Make the main window (Gui #1) the owner of the "about box".
Gui Ab:+Disabled  ; Disable main window.
Gui, hotkeygui:-MinimizeBox

Gui, hotkeygui:Font, Norm
Gui, hotkeygui:Color ,,%stkcg5%
Gui, hotkeygui:Font, c0x%stkcg4%
Gui, hotkeygui:Color ,%stkcg6%






Gui, hotkeygui:Add, CheckBox, x12 y12 w190 h20  vcajaoffhk1 Checked%sethotkeysoff1%,  % "Mostrar/ocultar  "  nameofthisscript1
Gui, hotkeygui:Add, Hotkey, x12 y29 w190 h20 vsethotkeynam1, %convsethotkeynam1%



Gui, hotkeygui:Add, CheckBox, x212 y12 w190 h20  vcajaoffhk2 Checked%sethotkeysoff2%, Ventana activa siempe encima
Gui, hotkeygui:Add, Hotkey, x212 y29 w190 h20 vsethotkeynam2, %convsethotkeynam2%


Gui, hotkeygui:Add, CheckBox, x12 y52 w190 h20 vcajaoffhk3 Checked%sethotkeysoff3%, Mute
Gui, hotkeygui:Add, Hotkey, x12 y69 w190 h20 vsethotkeynam3, %convsethotkeynam3%













Gui, hotkeygui:Add, Button, x362 y112 w40 h20 gsethotkeynames1, OK


; Generated using SmartGUI Creator 4.0
Gui, hotkeygui:Show, Center h142 w413, %nameofthisscript1% - Hotkeys



Loop
{
   Gui, hotkeygui:Submit, NoHide

   if  cajaoffhk1=0
  guicontrol, hotkeygui:Disable, sethotkeynam1
   else
	guicontrol, hotkeygui:Enable, sethotkeynam1

   if  cajaoffhk2=0
  guicontrol, hotkeygui:Disable, sethotkeynam2
   else
	guicontrol, hotkeygui:Enable, sethotkeynam2


   if  cajaoffhk3=0
  guicontrol, hotkeygui:Disable, sethotkeynam3
   else
	guicontrol, hotkeygui:Enable, sethotkeynam3





sleep 1500


if exitventhk1=1
   break
}
Return









hotkeyguiGuiClose:
;exit loop
exitventhk1=1

Gui Ab:-Disabled  ; Disable main window.
Gui hotkeygui:Destroy  

return




sethotkeynames1:
Gui, hotkeygui:Submit, NoHide



   if sethotkeynam1=
    sethotkeynam1=^|

   if sethotkeynam2=
    sethotkeynam2=^!0

   if sethotkeynam3=
    sethotkeynam3=^!m
    


IniWrite,%sethotkeynam1%, %CLAVEaini%, HK, a
IniWrite,%sethotkeynam2%, %CLAVEaini%, HK, b
IniWrite,%sethotkeynam3%, %CLAVEaini%, HK, c
IniWrite,%cajaoffhk1%, %CLAVEaini%, HK, 1
IniWrite,%cajaoffhk2%, %CLAVEaini%, HK, 2
IniWrite,%cajaoffhk3%, %CLAVEaini%, HK, 3


;Guardar y reiniciar sin apps
Henaccrein=1
goto reloadcomplex


return







;********************************************************************************
acc4:


startguissapp=1


Gui, p3:+ownerAb ; Make the main window (Gui #1) the owner of the "about box".
Gui Ab:+Disabled  ; Disable main window.
Gui, p3:-MinimizeBox


Gui, p3:Font, Norm
Gui, p3:Color ,,%stkcg5%
Gui, p3:Font, c0x%stkcg4%
Gui, p3:Color ,%stkcg6%




;origen   Gui, p3:Add, CheckBox, x12 y9 w70 h20 vcajasi1 Checked%archiejecse1%, Enable 1


	;valor de Y
convalprimguiautm1:=9
	;valor de x
convalprimguiautm5:=12

;valor para la variable independiente


valprimguiautm=0
Loop
{
	EnvAdd, valprimguiautm,1
	

	convalprimguiautm2:="zxcguicontssapps"valprimguiautm
	convalprimguiautm3:="zxcappssa"valprimguiautm
	convalprimguiautm4=% %convalprimguiautm3%
	
	
	Gui, p3:Add, CheckBox, x%convalprimguiautm5%    y%convalprimguiautm1%   w60 h20   v%convalprimguiautm2%    Checked%convalprimguiautm4%,      On  %valprimguiautm%
	;valor de Y
	EnvAdd, convalprimguiautm1,30
	
    
    	;valor de x & y despues de 10 elementos
    if valprimguiautm=10
    {
      convalprimguiautm5:=380
      convalprimguiautm1:=9
   }
    
    
    
	
}until valprimguiautm=20




;origen   Gui, p3:Add, CheckBox, x82 y9 w70 h20 vlcierrexese1 Checked%exealcierrexese1%, Al cerrar
	;valor de Y
convalprimguiautm1:=9
	;valor de x
convalprimguiautm5:=72

;valor para la variable independienteya establecida
Loop
{
	EnvAdd, valprimguiautm,1
	

	convalprimguiautm2:="zxcguicontssapps"valprimguiautm
	convalprimguiautm3:="zxcappssa"valprimguiautm
	convalprimguiautm4=% %convalprimguiautm3%
	
	
	Gui, p3:Add, CheckBox, x%convalprimguiautm5%    y%convalprimguiautm1%   w80 h20   v%convalprimguiautm2%    Checked%convalprimguiautm4%,    Close-Start
	;valor de Y
	EnvAdd, convalprimguiautm1,30
	
    
    	;valor de x & y despues de 10 elementos
    if valprimguiautm=30
    {
      convalprimguiautm5:=440
      convalprimguiautm1:=9
   }
    
    
    
	
}until valprimguiautm=40




;origen   Gui, p3:Add, Edit, r1 vsie1  x152 y9 w220 h20 , %infoeleaejcse1%
	;valor de Y
convalprimguiautm1:=9
	;valor de x
convalprimguiautm5:=152


Loop
{
	EnvAdd, valprimguiautm,1
	

	convalprimguiautm2:="zxcguicontssapps"valprimguiautm
	convalprimguiautm3:="zxcappssa"valprimguiautm
	convalprimguiautm4=% %convalprimguiautm3%
	
	
	Gui, p3:Add, Edit, x%convalprimguiautm5%    y%convalprimguiautm1%   w20 w210   v%convalprimguiautm2%     r1,    %convalprimguiautm4%
	;valor de Y
	EnvAdd, convalprimguiautm1,30
	
    
    	;valor de x & y despues de 10 elementos
    if valprimguiautm=50
    {
      convalprimguiautm5:=520
      convalprimguiautm1:=9
   }
    
    
    
	
}until valprimguiautm=60


Gui, p3:Add, CheckBox, x82 y309 w160 h20 vonofstappscheck  Checked%StartStartApps%, Start-Start Apps activado



Gui, p3:Add, Button, x700 y309 w30 h20 gacc50, OK
Gui, p3:Add, Button, x12  y309 w50 h20 gacc52, Default
; Generated using SmartGUI Creator 4.0
Gui, p3:Show, Center h339 w742, %nameofthisscript1% -  Start-Start Apps
; Generated using SmartGUI Creator 4.0







Loop
{
   
   Gui, p3:Submit, NoHide
   
   if  onofstappscheck =0
{
   
   numcondisbcon=0
   loop
   {
      	EnvAdd, numcondisbcon,1
   comdisbcon1:="zxcguicontssapps"numcondisbcon
   
   guicontrol, p3:Disable,%comdisbcon1%
}until numcondisbcon=60
   
}
else
{
      numcondisbcon=0
   loop
   {
      	EnvAdd, numcondisbcon,1
   comdisbcon1:="zxcguicontssapps"numcondisbcon
   
   guicontrol, p3:Enable,%comdisbcon1%
}until numcondisbcon=60
   
   
   sleep 1000
   
}

}until startguissapp=0


return









p3guiclose:

startguissapp=0
Gui, Ab:-Disabled
Gui p3:Destroy  ; Destroy the about box.

return



acc50:
Gui, p3:Submit, NoHide


	IniWrite, %onofstappscheck%, %CLAVEaini%, Start-Start Apps, a
    
valinwrit=0
Loop
{
   	EnvAdd, valinwrit,1
    
convalprimguiautm2:="zxcguicontssapps"valinwrit
   convalprimguiautm7=% %convalprimguiautm2%


if valinwrit>39
{
if convalprimguiautm7=
   convalprimguiautm7=No establecido
}


	IniWrite, %convalprimguiautm7%, %CLAVEaini%, Start-Start Apps, %valinwrit%
	
}until valinwrit=60


;Actualizasion de variables

StartStartApps=%onofstappscheck%

valinwrit=0
Loop
{
	EnvAdd, valinwrit,1
	convalinwrit:="zxcappssa" valinwrit
  convalprimguiautm2:="zxcguicontssapps"valinwrit
   convalprimguiautm7=% %convalprimguiautm2%
    
    %convalinwrit%=%convalprimguiautm7%

}until valinwrit=60


;**********************************************************

startguissapp=0
Gui, Ab:-Disabled
Gui p3:Destroy  ; Destroy the about box.
return



;********************************************************************************
;boton default
;********************************************************************************

acc52:

Gui, p3:+Disabled

MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Se desea proceder?
IfMsgBox Yes, {
   
   
   
   

;Start-Start Apps


	IniWrite, 0, %CLAVEaini%, Start-Start Apps, a
valinwrit=0
Loop
{
	EnvAdd, valinwrit,1
	IniWrite, 0, %CLAVEaini%, Start-Start Apps, %valinwrit%
	
}until valinwrit=40

Loop
{
	EnvAdd, valinwrit,1
	IniWrite, No establecido, %CLAVEaini%, Start-Start Apps, %valinwrit%
	
}until valinwrit=60






;Actualizasion de variables

StartStartApps=0

valinwrit=0
Loop
{
	EnvAdd, valinwrit,1
	convalinwrit:="zxcappssa" valinwrit
   convalprimguiautm7=0
    
    %convalinwrit%=%convalprimguiautm7%

}until valinwrit=40

Loop
{
	EnvAdd, valinwrit,1
	convalinwrit:="zxcappssa" valinwrit
   convalprimguiautm7=No establecido
    
    %convalinwrit%=%convalprimguiautm7%

}until valinwrit=60





;**********************************************************

startguissapp=0
Gui, Ab:-Disabled
Gui p3:Destroy  ; Destroy the about box.
   
   goto acc4
Return


} 

Else IfMsgBox No, {
   
Gui, p3:-Disabled
} 
Return











;********************************************************************************
proaacalcie:


startguissapp=1


Gui, proaac:+ownerAb ; Make the main window (Gui #1) the owner of the "about box".
Gui Ab:+Disabled  ; Disable main window.
Gui, proaac:-MinimizeBox


Gui, proaac:Font, Norm
Gui, proaac:Color ,,%stkcg5%
Gui, proaac:Font, c0x%stkcg4%
Gui, proaac:Color ,%stkcg6%




;origen   Gui, proaac:Add, CheckBox, x12 y9 w70 h20 vcajasi1 Checked%archiejecse1%, Enable 1


	;valor de Y
convalprimguiautm1:=9
	;valor de x
convalprimguiautm5:=12

;valor para la variable independiente


valprimguiautm=0
Loop
{
	EnvAdd, valprimguiautm,1
	

	convalprimguiautm2:="zxcguicontccapps"valprimguiautm
	convalprimguiautm3:="zxcappcca"valprimguiautm
	convalprimguiautm4=% %convalprimguiautm3%
	
	
	Gui, proaac:Add, CheckBox, x%convalprimguiautm5%    y%convalprimguiautm1%   w60 h20   v%convalprimguiautm2%    Checked%convalprimguiautm4%,      On  %valprimguiautm%
	;valor de Y
	EnvAdd, convalprimguiautm1,30
	
    
    	;valor de x & y despues de 10 elementos
    if valprimguiautm=10
    {
      convalprimguiautm5:=380
      convalprimguiautm1:=9
   }
    
    
    
	
}until valprimguiautm=20




;origen   Gui, proaac:Add, CheckBox, x82 y9 w70 h20 vlcierrexese1 Checked%exealcierrexese1%, Al cerrar
	;valor de Y
convalprimguiautm1:=9
	;valor de x
convalprimguiautm5:=72

;valor para la variable independienteya establecida
Loop
{
	EnvAdd, valprimguiautm,1
	

	convalprimguiautm2:="zxcguicontccapps"valprimguiautm
	convalprimguiautm3:="zxcappcca"valprimguiautm
	convalprimguiautm4=% %convalprimguiautm3%
	
	
	Gui, proaac:Add, CheckBox, x%convalprimguiautm5%    y%convalprimguiautm1%   w100 h20   v%convalprimguiautm2%    Checked%convalprimguiautm4%,   Cerrar proceso
	;valor de Y
	EnvAdd, convalprimguiautm1,30
	
    
    	;valor de x & y despues de 10 elementos
    if valprimguiautm=30
    {
      convalprimguiautm5:=440
      convalprimguiautm1:=9
   }
    
    
    
	
}until valprimguiautm=40




;origen   Gui, proaac:Add, Edit, r1 vsie1  x152 y9 w220 h20 , %infoeleaejcse1%
	;valor de Y
convalprimguiautm1:=9
	;valor de x
convalprimguiautm5:=172


Loop
{
	EnvAdd, valprimguiautm,1
	

	convalprimguiautm2:="zxcguicontccapps"valprimguiautm
	convalprimguiautm3:="zxcappcca"valprimguiautm
	convalprimguiautm4=% %convalprimguiautm3%
	
	
	Gui, proaac:Add, Edit, x%convalprimguiautm5%    y%convalprimguiautm1%   w20 w190   v%convalprimguiautm2%     r1,    %convalprimguiautm4%
	;valor de Y
	EnvAdd, convalprimguiautm1,30
	
    
    	;valor de x & y despues de 10 elementos
    if valprimguiautm=50
    {
      convalprimguiautm5:=540
      convalprimguiautm1:=9
   }
    
    
    
	
}until valprimguiautm=60


Gui, proaac:Add, CheckBox, x82 y309 w160 h20 vonofstappscheck2  Checked%CloseCloseApps%, Close-Close Apps activado



Gui, proaac:Add, Button, x700 y309 w30 h20 gacccerrar2, OK
Gui, proaac:Add, Button, x12  y309 w50 h20 gacccerrar1, Default
; Generated using SmartGUI Creator 4.0
Gui, proaac:Show, Center h339 w742, %nameofthisscript1% -  Close-Close Apps
; Generated using SmartGUI Creator 4.0







Loop
{
   
   Gui, proaac:Submit, NoHide
   
   if  onofstappscheck2=0
{
   
   numcondisbcon=0
   loop
   {
      	EnvAdd, numcondisbcon,1
   comdisbcon1:="zxcguicontccapps"numcondisbcon
   
   guicontrol, proaac:Disable,%comdisbcon1%
}until numcondisbcon=60
   
}
else
{
      numcondisbcon=0
   loop
   {
      	EnvAdd, numcondisbcon,1
   comdisbcon1:="zxcguicontccapps"numcondisbcon
   
   guicontrol, proaac:Enable,%comdisbcon1%
}until numcondisbcon=60
   
   
   sleep 1000
   
}

}until startguissapp=0


return




proaacguiclose:

startguissapp=0
Gui, Ab:-Disabled
Gui proaac:Destroy  ; Destroy the about box.

return














acccerrar2:
Gui, proaac:Submit, NoHide


	IniWrite, %onofstappscheck2%, %CLAVEaini%, Close-Close Apps, a
    
valinwrit=0
Loop
{
   	EnvAdd, valinwrit,1
    
convalprimguiautm2:="zxcguicontccapps"valinwrit
   convalprimguiautm7=% %convalprimguiautm2%


if valinwrit>39
{
if convalprimguiautm7=
   convalprimguiautm7=No establecido
}


	IniWrite, %convalprimguiautm7%, %CLAVEaini%, Close-Close Apps, %valinwrit%
	
}until valinwrit=60


;Actualizasion de variables

CloseCloseApps=%onofstappscheck2%

valinwrit=0
Loop
{
	EnvAdd, valinwrit,1
	convalinwrit:="zxcappcca" valinwrit
  convalprimguiautm2:="zxcguicontccapps"valinwrit
   convalprimguiautm7=% %convalprimguiautm2%
    
    %convalinwrit%=%convalprimguiautm7%

}until valinwrit=60


;**********************************************************

startguissapp=0
Gui, Ab:-Disabled
Gui proaac:Destroy  
return



;********************************************************************************
;boton default
;********************************************************************************

acccerrar1:

Gui, proaac:+Disabled

MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Se desea proceder?
IfMsgBox Yes, {
   
   
   
   

;Start-Start Apps


	IniWrite, 0, %CLAVEaini%, Close-Close Apps, a
valinwrit=0
Loop
{
	EnvAdd, valinwrit,1
	IniWrite, 0, %CLAVEaini%, Close-Close Apps, %valinwrit%
	
}until valinwrit=40

Loop
{
	EnvAdd, valinwrit,1
	IniWrite, No establecido, %CLAVEaini%, Close-Close Apps, %valinwrit%
	
}until valinwrit=60






;Actualizasion de variables

CloseCloseApps=0

valinwrit=0
Loop
{
	EnvAdd, valinwrit,1
	convalinwrit:="zxcappcca" valinwrit
   convalprimguiautm7=0
    
    %convalinwrit%=%convalprimguiautm7%

}until valinwrit=40

Loop
{
	EnvAdd, valinwrit,1
	convalinwrit:="zxcappcca" valinwrit
   convalprimguiautm7=No establecido
    
    %convalinwrit%=%convalprimguiautm7%

}until valinwrit=60





;**********************************************************

startguissapp=0
Gui, Ab:-Disabled
Gui proaac:Destroy 
   
   goto proaacalcie
Return


} 

Else IfMsgBox No, {
   
Gui, proaac:-Disabled
} 
Return















































































































































































;********************************************************************************

acc5:
run, %CLAVEDLsexe% "%A_ScriptDir%\Data\DLs\DLsa.ini", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2 
return

Externo2:

run, %CLAVEDLsexe% "%A_ScriptDir%\Data\DLs\DLsb.ini", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2 
return

Externo3:

run, %CLAVEDLsexe% "%A_ScriptDir%\Data\DLs\DLsc.ini", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2 
return







inifiles:
run, %CLAVEDLsexe% "%A_ScriptDir%\Data\DLs\DLse.ini", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2 
return





Clipb:
run, %CLAVEDLsexe% "%A_ScriptDir%\Data\DLs\DLsj.ini", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2 
return



congini:
run, %CLAVEDLsexe% "%A_ScriptDir%\Data\DLs\DLsg.ini", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2 
return




Cliplinks:
run, %CLAVEDLsexe% "%A_ScriptDir%\Data\DLs\DLsl.ini", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2 
return


inifolders:
run, %CLAVEDLsexe% "%A_ScriptDir%\Data\DLs\DLsf.ini", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2 
return

iniforbaux:
run, %CLAVEDLsexe% "%A_ScriptDir%\Data\DLs\DLsr.ini", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2 
return



iniforbaux1:



if numshow=1
goto timeretorn

varresnum=0
Loop
{
   Envadd, varresnum,1
   concontacaname:="imagliar"varresnum
   
   guicontrol, 1:Hide,%concontacaname%
   
      
   
   if varresnum>=100
      break
}



varresnum=0
Loop
{
   Envadd, varresnum,1
   concontacaname:="textsolnum"varresnum
   
   guicontrol, 1:Show,%concontacaname%
   
      
   
   if varresnum>=100
      break
}


Menu, menusele2, Rename, Mostrar serial, Ocultar serial
Menu, menusele3, Rename, Mostrar serial, Ocultar serial


;numeros visibles
numshow=1


return



timeretorn:


varresnum=0
Loop
{
   Envadd, varresnum,1
   concontacaname:="textsolnum"varresnum
   
   guicontrol, 1:Hide,%concontacaname%
   
      
   
   if varresnum>=100
      break
}





varresnum=0
Loop
{
   Envadd, varresnum,1
   concontacaname:="imagliar"varresnum
   
   guicontrol, 1:Show,%concontacaname%
   
      
   
   if varresnum>=100
      break
}

Menu, menusele2, Rename, Ocultar serial, Mostrar serial
Menu, menusele3, Rename, Ocultar serial, Mostrar serial
;numeros no visibles
numshow=0


return













notagGuiContextMenu:

	namegccolor=notag
	
	if A_GUICONTROL=congucustn7
{
contexit=congucustn8
goto mennotag
}
else
if A_GUICONTROL=congucustn9
{
contexit=congucustn10
goto mennotag
}
else
return



mennotag:
Menu, notagmenucont, Show, %A_GuiX%, %A_GuiY%
return


















notyascust:

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



;vartofin of loop
vatofloo=0

Gui, notag:Font, Norm
Gui, notag:Color ,,%stkcg5%
Gui, notag:Font, c0x%stkcg4%
Gui, notag:Color ,%stkcg6%


Gui, notag:-MinimizeBox +Hwndnotag

Gui, notag:+ownerAb  ; Make the main window (Gui #1) the owner of the "about box".
Gui Ab:+Disabled  ; Disable main window.


Gui, notag:Add, Text, x3 y22 w67 h20 vcongucustn1 center, Letra
Gui, notag:Add, ComboBox, x72 y19 w230 h20 r30 vcongucustn2  hwndnotagguicont1, %Fontlist%
CtlColors.Attach(notagguicont1, stkcg5,stkcg4)
GuiControl, notag:Choose, congucustn2, %edinot1%

Gui, notag:Add, Text, x3 y52 w67 h20 vcongucustn3 center, Tamaño 
Gui, notag:Add, DropDownList, x72 y49 w60 h20 vcongucustn4 r30  hwndnotagguicont2, %contenumb%
CtlColors.Attach(notagguicont2, stkcg5,stkcg4)
GuiControl, notag:Choose, congucustn4, %edinot3%


Gui, notag:Add, Text, x170 y52 w60 h20 vcongucustn5, Formato

Gui, notag:Add, DropDownList, x222 y49 w80 h20 R30 altsubmit  vcongucustn6  hwndCBBID1 , %sty%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, notag:Choose, congucustn6, %edinot2%
;*************************



Gui, notag:Add, Text, x5 y82 w60 h20 vcongucustn7 center, Color letra
Gui, notag:Add, Edit, x72 y79 w60 h20 vcongucustn8  center, %edinot4%


Gui, notag:Add, Text, x142 y82 w100 h20 vcongucustn9 center, Color trasfondo
Gui, notag:Add, Edit, x242 y79 w60 h20 vcongucustn10  center,%edinot5%

Gui, notag:Add, CheckBox, x12 y109 w200 h20 vcongucustn11 Checked%edinot6% ,% "Usar estilo de " nameofthisscript1 




Gui, notag:Add, Button, x12 y139 w60 h20 vcongucustn21 gcongucustn21, Cargar
Gui, notag:Add, Button, x82 y139 w60 h20 vcongucustn22 gcongucustn22, Guardar

Gui, notag:Add, Button, x272 y139 w30 h20 vgandfcesp ggandfcesp, Ok
; Generated using SmartGUI Creator 4.0
Gui, notag:Show, Center h174 w317, %nameofthisscript1% -  Notas estilo



Loop
{

   Gui,  notag:Submit, NoHide
   
if   congucustn11=1
{
   
   guicontrol, notag:Hide, congucustn1
      guicontrol, notag:Hide, congucustn2
         guicontrol, notag:Hide, congucustn3
            guicontrol, notag:Hide, congucustn4
               guicontrol, notag:Hide, congucustn5
                  guicontrol, notag:Hide, congucustn6
                     guicontrol, notag:Hide, congucustn7
                        guicontrol, notag:Hide, congucustn8
                           guicontrol, notag:Hide, congucustn9
                              guicontrol, notag:Hide, congucustn10
							     guicontrol, notag:Hide, congucustn21
                              guicontrol, notag:Hide, congucustn22
}
else
{
      guicontrol, notag:Show, congucustn1
      guicontrol, notag:Show, congucustn2
         guicontrol, notag:Show, congucustn3
            guicontrol, notag:Show, congucustn4
               guicontrol, notag:Show, congucustn5
                  guicontrol, notag:Show, congucustn6
                     guicontrol, notag:Show, congucustn7
                        guicontrol, notag:Show, congucustn8
                           guicontrol, notag:Show, congucustn9
                              guicontrol, notag:Show, congucustn10
            guicontrol, notag:Show, congucustn21
                              guicontrol, notag:Show, congucustn22
}
      sleep 1000
      
   if  vatofloo=1
      break
   
}


Return






congucustn21:

Gui notag:+Disabled
FileSelectFile, CLAVEsavetema, 3, , Open a file, Tema (*.temstk)
if CLAVEsavetema =
  {  
Gui notag:-Disabled
    return
    }





	vgrabdat=0
loop 5
{
	vgrabdat++
	
	predatperzg:="datperzg" vgrabdat

	
iniread, %predatperzg%, %CLAVEsavetema%, Tema, %vgrabdat%

}




;letra
GuiControl, notag:Choose,congucustn2,%datperzg1%
;Size
GuiControl, notag:Choose,congucustn4,%datperzg2%
;Style
GuiControl, notag:Choose,congucustn6,%datperzg3%
;fontcolor
GuiControl, notag:,congucustn8,%datperzg4%
;Background color
GuiControl, notag:,congucustn10,%datperzg5%
;color gui
;GuiControl, notag:,stkgv11,%datperzg6%
Gui notag:-Disabled
setwindowok()

return


congucustn22:


Gui, vaa2:Font, Norm
Gui, vaa2:Color ,,%stkcg5%
Gui, vaa2:Font, c0x%stkcg4%
Gui, vaa2:Color ,%stkcg6%




Gui, vaa2:+ownernotag ; Make the main window (Gui #1) the owner of the "about box".
Gui notag:+Disabled  ; Disable main window.
Gui, vaa2:-MinimizeBox
Gui, vaa2:Add, Edit, vedespaco2 x12 y9 w400 h20 ,Mi tema
Gui, vaa2:Add, Button , vtollee52 genra2 x172 y39 w80 h20 default, Generar tema

; Generated using SmartGUI Creator 4.0
Gui, vaa2:Show, Center h70 w424, %nameofthisscript1% - Nombre del tema


Return





enra2:

Gui, vaa2:Submit, NoHide

Gui vaa2:hide
FileSelectFolder, foldertema, , 3
if foldertema =
  {  

goto vaa1Guiclose
    }

if edespaco2=
	edespaco2:="No name"


CLAVEsavetema:=foldertema "\" edespaco2 ".temstk"


if FileExist(CLAVEsavetema)
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El archivo ya existe ¿Desea sobrescribir?
IfMsgBox No, {
               goto vaa1Guiclose
              }
}



;letra
GuiControlGet, datperzg1, notag:,congucustn2
;Size
GuiControlGet, datperzg2, notag:,congucustn4
;Style
GuiControlGet, datperzg3, notag:,congucustn6
;fontcolor
GuiControlGet, datperzg4, notag:,congucustn8
;Background color
GuiControlGet, datperzg5, notag:,congucustn10





	vgrabdat=0
loop 5
{
	vgrabdat++
	
	predatperzg:="datperzg" vgrabdat
	condatperzg=% %predatperzg%
	
IniWrite, %condatperzg%, %CLAVEsavetema%, Tema, %vgrabdat%

}

setwindowok()

vaa2Guiclose:

Gui, notag:-Disabled
Gui vaa2:Destroy

return










notagGuiClose:
Gui Ab:-Disabled  ; Disable main window.
Gui notag:Destroy  ; Disable main window.
vatofloo=1
Return



gandfcesp:
Gui, notag:Submit, NoHide



If congucustn2=
congucustn2=Verdana

If congucustn4=
congucustn4=8

If congucustn8=
congucustn8=ffffff

If congucustn10=
congucustn10=200729


IniWrite, %congucustn2%, %CLAVEaini%, EditNotas,1
IniWrite, %congucustn6%, %CLAVEaini%, EditNotas,2

IniWrite, %congucustn4%, %CLAVEaini%, EditNotas,3
IniWrite, %congucustn8%, %CLAVEaini%, EditNotas,4
IniWrite, %congucustn10%, %CLAVEaini%, EditNotas,5

IniWrite, %congucustn11%, %CLAVEaini%, EditNotas,6


;Guardar y reiniciar sin apps
Henaccrein=1
goto reloadcomplex

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
	
	
	
	namegccolor=guistkc
	
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

GuiControlget, colval_hex, %namegccolor%:,%contexit%
colval_dec:=HexToDec(colval_hex)



colval_dec_user:= ChooseColor(colval_dec,%namegccolor%, , , Palette2*)

;Error, no color
if  (colval_dec_user=0)
return


;guardar colores al salir de la aplicación
coloresaguardar=1



colval_hex_user :=FHex( colval_dec_user,6)
colval_hex_user1 := SubStr(colval_hex_user, 3, 8)

GuiControl, %namegccolor%:,%contexit%,%colval_hex_user1%
return







stkust:


;gui estilo activa
guistyleon=1

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




Gui, guistkc:Font, Norm
Gui, guistkc:Color ,,%stkcg5%
Gui, guistkc:Font, c0x%stkcg4%
Gui, guistkc:Color ,%stkcg6%


Gui, guistkc:-MinimizeBox  +Hwndguistkc

Gui, guistkc:+ownerAb  ; Make the main window (Gui #1) the owner of the "about box".
Gui Ab:+Disabled  ; Disable main window.

Gui, guistkc:Add, Text, x3 y22 w67 h20 vstkgv1 center, Letra
Gui, guistkc:Add, ComboBox, x72 y19 w230 h20 vstkgv2 r30 hwndguistkccb1, %Fontlist%
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
Gui, guistkc:Add, Edit, x72 y79 w60 h20 vstkgv8 center, %stkcg4%


Gui, guistkc:Add, Text, x142 y82 w90 h20 vstkgv9 center,  Color trasfondo
Gui, guistkc:Add, Edit, x242 y79 w60 h20 vstkgv10 center,%stkcg5%


Gui, guistkc:Add, Text, x3 y112 w69 h20 vstkgv13  , Color ventana
Gui, guistkc:Add, Edit, x72 y109 w60 h20 vstkgv11 center,%stkcg6%







Gui, guistkc:Add, CheckBox, x12 y140 w120 h20  vttesconguist1 Checked%ttesactiv%, Activar nombres


Gui, guistkc:Add, Text, x3 y173 w67 h20 vttesconguist12  center, Letra
Gui, guistkc:Add, ComboBox, x72 y170 w230 h20 vttesconguist3 r30 hwndguistkccb6, %Fontlist%
CtlColors.Attach(guistkccb6,stkcg5,stkcg4)
GuiControl, guistkc:Choose, ttesconguist3, %ttesguifont%




Gui, guistkc:Add, Text, x3 y203 w67 h20 vttesconguist4 center, Tamaño
Gui, guistkc:Add, DropDownList, x72 y200 w60 h20 vttesconguist5   hwndguistkccb11 r30, %contenumb%
CtlColors.Attach(guistkccb11,stkcg5,stkcg4)
GuiControl, guistkc:Choose, ttesconguist5, %zzletrattesp%


Gui, guistkc:Add, Text, x175 y203 w50 h20 vttesconguist6, Formato

Gui, guistkc:Add, DropDownList, x222 y200 w80 h20 R30 altsubmit  vttesconguist7  hwndguistkccb7 , %sty%
CtlColors.Attach(guistkccb7,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, guistkc:Choose, ttesconguist7, %ttesguifontstylepre%
;*************************



Gui, guistkc:Add, Text, x13 y233 w60 h20 vttesconguist8 , Color letra
Gui, guistkc:Add, Edit, x72 y230 w60 h20 vttesconguist9 center, %ttesguicolorfont%


Gui, guistkc:Add, Text, x162 y233 w100 h20 vttesconguist10, Color ventana
Gui, guistkc:Add, Edit, x242 y230 w60 h20 vttesconguist11 center,%ttesguicolor%





Gui, guistkc:Add, Button, x12 y289 w60 h20 vstkgv21 gstkgv21, Cargar
Gui, guistkc:Add, Button, x82 y289 w60 h20 vstkgv22 gstkgv22, Guardar


Gui, guistkc:Add, Button, x272 y289 w30 h20 vstkgv12 gstkgv12, Ok
; Generated using SmartGUI Creator 4.0
Gui, guistkc:Show, Center h320 w317, %nameofthisscript1% - Estilo


Loop
{
	
	Gui, guistkc:Submit, NoHide
	
	if ttesconguist1=0
	{
		guicontrol, guistkc:Disable, ttesconguist3
		guicontrol, guistkc:Disable, ttesconguist5
		guicontrol, guistkc:Disable, ttesconguist7
		guicontrol, guistkc:Disable, ttesconguist9
		guicontrol, guistkc:Disable, ttesconguist11

		
		
	}
	else
	{

			guicontrol, guistkc:Enable, ttesconguist3
		guicontrol, guistkc:Enable, ttesconguist5
		guicontrol, guistkc:Enable, ttesconguist7
		guicontrol, guistkc:Enable, ttesconguist9
		guicontrol, guistkc:Enable, ttesconguist11
	}
	
	
if guistyleon=0
	{
Gui, 	muestr:Destroy
Gui, 	muestr2:Destroy
		break
	}
	
	sleep 1500
	
	}

Return




Probarguiexp:

	Gui, guistkc:Submit, NoHide

	Gui, 	muestr:Destroy
Gui, 	muestr2:Destroy

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







		;STK custom
     if ttesconguist7=1
 stkcgfinesp3:="Norm"
   else
          if ttesconguist7=2
 stkcgfinesp3:="Bold"
 else
       if ttesconguist7=3
 stkcgfinesp3:="Italic"
 else
       if ttesconguist7=4
 stkcgfinesp3:="Strike"
    else
       if ttesconguist7=5
 stkcgfinesp3:="Underline"

	




Gui, muestr2:-Caption +ToolWindow
Gui, muestr2:Font, s%ttesconguist5% c0x%ttesconguist9% %stkcgfinesp3%, %ttesconguist3%
Gui, muestr2:Color ,%ttesconguist11%
Gui, muestr2:Add, Text, x5 y5  Hwndtexofguittesespec center,
SetTextAndResize(texofguittesespec,nameofthisscript1)


muestry1:=muestry+muestrh+30
gui_positmuestr2=x%muestrx1% y%muestry1%
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(hzixeofcontrol,wzixeofcontrol,gui_positmuestr2,"guinam")
gui_positmuestr2=%guipositionmod%
Gui, muestr2:Show, %gui_positmuestr2%  AutoSize NA , %nameofthisscript1% 
;Gui, guinam:Show, %gui_positionguinam% w%guinamw% h%guinamh% NA , %nametodisp2%

	SetTimer, endmuestra, 10000
return


endmuestra:
	Gui, 	muestr:Destroy
Gui, 	muestr2:Destroy
return




stkgv21:

Gui muestr2:+Disabled
FileSelectFile, CLAVEsavetema, 3, , Open a file, Tema (*.temstk)
if CLAVEsavetema =
  {  
Gui muestr2:-Disabled
    return
    }





	vgrabdat=0
loop 11
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



;letra
GuiControl, guistkc:Choose,ttesconguist3,%datperzg7%
;Size
GuiControl, guistkc:Choose,ttesconguist5,%datperzg8%
;Style
GuiControl, guistkc:Choose,ttesconguist7,%datperzg9%
;fontcolor
GuiControl, guistkc:,ttesconguist9,%datperzg10%
;color gui
GuiControl, guistkc:,ttesconguist11,%datperzg11%

Gui muestr2:-Disabled
setwindowok()

return


stkgv22:


Gui, vaa1:Font, Norm
Gui, vaa1:Color ,,%stkcg5%
Gui, vaa1:Font, c0x%stkcg4%
Gui, vaa1:Color ,%stkcg6%




Gui, vaa1:+ownerguistkc ; Make the main window (Gui #1) the owner of the "about box".
Gui guistkc:+Disabled  ; Disable main window.
Gui, vaa1:-MinimizeBox
Gui, vaa1:Add, Edit, vedespaco1 x12 y9 w400 h20 ,Mi tema
Gui, vaa1:Add, Button , vtollee52 genra1 x172 y39 w80 h20 default, Generar tema

; Generated using SmartGUI Creator 4.0
Gui, vaa1:Show, Center h70 w424, %nameofthisscript1% - Nombre del tema


Return





enra1:

Gui, vaa1:Submit, NoHide

Gui vaa1:hide
FileSelectFolder, foldertema, , 3
if foldertema =
  {  

goto vaa1Guiclose
    }

if edespaco1=
	edespaco1:="No name"


CLAVEsavetema:=foldertema "\" edespaco1 ".temstk"


if FileExist(CLAVEsavetema)
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El archivo ya existe ¿Desea sobrescribir?
IfMsgBox No, {
	Gui, guistkc:-Disabled
               goto vaa1Guiclose
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

;letra
GuiControlGet, datperzg7, guistkc:,ttesconguist3
;Size
GuiControlGet, datperzg8, guistkc:,ttesconguist5
;Style
GuiControlGet, datperzg9, guistkc:,ttesconguist7
;fontcolor
GuiControlGet, datperzg10, guistkc:,ttesconguist9
;color gui
GuiControlGet, datperzg11, guistkc:,ttesconguist11



	vgrabdat=0
loop 11
{
	vgrabdat++
	
	predatperzg:="datperzg" vgrabdat
	condatperzg=% %predatperzg%
	
IniWrite, %condatperzg%, %CLAVEsavetema%, Tema, %vgrabdat%

}

setwindowok()

vaa1Guiclose:

Gui, guistkc:-Disabled
Gui vaa1:Destroy

return








guistkcGuiClose:
guistyleon=0
Gui Ab:-Disabled  ; Disable main window.
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







if ttesconguist5=
ttesconguist5=12


if ttesconguist9=
ttesconguist9=ffffff


if ttesconguist3=
ttesconguist3=Verdana


if ttesconguist11=
ttesconguist11=200729



IniWrite, %ttesconguist1%, %CLAVEaini%, STKG,10
IniWrite, %ttesconguist5%, %CLAVEaini%, STKG,11
IniWrite, %ttesconguist9%, %CLAVEaini%, STKG,12
IniWrite, %ttesconguist7%, %CLAVEaini%, STKG,13
IniWrite, %ttesconguist3%, %CLAVEaini%, STKG,14
IniWrite, %ttesconguist11%, %CLAVEaini%, STKG,15












;Guardar y reiniciar sin apps
Henaccrein=1
goto reloadcomplex

return





;********************************************************************************
;********************************************************************************












window2:
Gui, Ab:+Disabled
Gui, win2:+ownerAb ; Make the main window (Gui #1) the owner of the "about box".
Gui, win2:-MinimizeBox

Gui, win2:Font, Norm
Gui, win2:Color ,,%stkcg5%
Gui, win2:Font, c0x%stkcg4%
Gui, win2:Color ,%stkcg6%



Gui, win2:Add, Text, x12 y9 w260 h20 , Navegador 1
Gui, win2:Add, Edit, x12 y29 w260 h20 vprogns1, Navegador 1
Gui, win2:Add, Edit, x12 y49 w260 h20 vprogns2, Navegador 11
GuiControl,win2:, progns1, %progest1%
GuiControl,win2:, progns2, %progest2%


Gui, win2:Add, Text, x12 y79 w260 h20 , Navegador 2
Gui, win2:Add, Edit, x12 y99 w260 h20 vprogns3, Navegador 2
Gui, win2:Add, Edit, x12 y119 w260 h20 vprogns4, Navegador 22
GuiControl,win2:, progns3, %progest3%
GuiControl,win2:, progns4, %progest4%



Gui, win2:Add, Text, x12 y149 w260 h20 , Navegador 3
Gui, win2:Add, Edit, x12 y169 w260 h20 vprogns5, Navegador 3
Gui, win2:Add, Edit, x12 y189 w260 h20 vprogns6, Navegador 33
GuiControl,win2:, progns5, %progest5%
GuiControl,win2:, progns6, %progest6%



Gui, win2:Add, Text, x12 y219 w260 h20 , Navegador 4
Gui, win2:Add, Edit, x12 y239 w260 h20 vprogns7, Navegador 4
Gui, win2:Add, Edit, x12 y259 w260 h20 vprogns8, Navegador 44
GuiControl,win2:, progns7, %progest7%
GuiControl,win2:, progns8, %progest8%



Gui, win2:Add, Text, x12 y289 w260 h20 , Navegador 5
Gui, win2:Add, Edit, x12 y309 w260 h20 vprogns9, Navegador 5
Gui, win2:Add, Edit, x12 y329 w260 h20 vprogns10, Navegador 55
GuiControl,win2:, progns9, %progest9%
GuiControl,win2:, progns10, %progest10%




Gui, win2:Add, Text, x12 y359 w260 h20 , Notepad
Gui, win2:Add, Edit, x12 y379 w260 h20 vprogns13, Notepad
GuiControl,win2:, progns13, %progest13%


Gui, win2:Add, Text, x12 y409 w260 h20 , Explorador
Gui, win2:Add, Edit, x12 y429 w260 h20 vprogns14, Explorador
GuiControl,win2:, progns14, %progest14%


Gui, win2:Add, Button, x240 y460 w30 h20 gaccwin2, OK








Gui, win2:Show, Center h490 w280, %nameofthisscript1% - Apps


Return

accwin2:
Gui, win2:Submit, NoHide

Gui, win2:-Disabled



if progns1=
   progns1=Nombre no establecido
if progns2=
   progns2=Ruta no establecida
if progns3=
   progns3=Nombre no establecido
if progns4=
   progns4=Ruta no establecida
if progns5=
   progns5=Nombre no establecido
if progns6=
   progns6=Ruta no establecida
if progns7=
   progns7=Nombre no establecido
if progns8=
   progns8=Ruta no establecida
if progns9=
   progns9=Nombre no establecido
if progns10=
   progns10=Ruta no establecida

if progns13=
   progns13=Ruta no establecida
if progns14=
   progns14=Ruta no establecida






IniWrite, %progns1%, %CLAVEaini%, Programas, 1
IniWrite, %progns2%, %CLAVEaini%, Programas, 2
IniWrite, %progns3%, %CLAVEaini%, Programas, 3
IniWrite, %progns4%, %CLAVEaini%, Programas, 4
IniWrite, %progns5%, %CLAVEaini%, Programas, 5
IniWrite, %progns6%, %CLAVEaini%, Programas, 6
IniWrite, %progns7%, %CLAVEaini%, Programas, 7
IniWrite, %progns8%, %CLAVEaini%, Programas, 8
IniWrite, %progns9%, %CLAVEaini%, Programas, 9
IniWrite, %progns10%, %CLAVEaini%, Programas, 10

IniWrite, %progns13%, %CLAVEaini%, Programas, 13
IniWrite, %progns14%, %CLAVEaini%, Programas, 14






;Guardar y reiniciar sin apps
Henaccrein=1
goto reloadcomplex

Return








win2GuiClose:
Gui, Ab:-Disabled
Gui win2:Destroy
Return










window3:


Gui, brill:+ownerAb ; Make the main window (Gui #1) the owner of the "about box".
Gui Ab:+Disabled  ; Disable main window.
Gui, brill:-MinimizeBox


Gui, brill:Font, Norm
Gui, brill:Color ,,%stkcg5%
Gui, brill:Font, c0x%stkcg4%
Gui, brill:Color ,%stkcg6%




Gui, brill:Add, Text, x12 y9 w195 h20 , Minimo 0 - Por defecto 120 - Maximo 250

Gui, brill:Add, CheckBox, x12 y39 w60 h20 vcajabri1 Checked%Brilloeninic%, On
Gui, brill:Add, Text, x12 y69 w60 h20 , Inicio
Gui, brill:Add, Button, x12 y109 w60 h20 vEstabrillo1 gEstabrillo1, Set
Gui, brill:Add, Edit, x12 y89 w60 h20 veditvalorbrillo1 Number, %Brilloeninicvalor%


Gui, brill:Add, CheckBox, x82 y39 w60 h20 vcajabri2 Checked%Brilloencierre%, On
Gui, brill:Add, Text, x82 y69 w60 h20 , Close
Gui, brill:Add, Edit, x82 y89 w60 h20 veditvalorbrillo2 Number, %Brilloencierrevalor%
Gui, brill:Add, Button, x82 y109 w60 h20 vEstabrillo2 gEstabrillo2, Set

Gui, brill:Add, Button, x152 y109 w60 h20  vaccfbrill gaccfbrill, Save

Gui, brill:Show, Center h142 w224, %nameofthisscript1% -  Brillo
; Generated using SmartGUI Creator 4.0



Return

brillGuiClose:
Gui Ab:-Disabled  ; Disable main window.
Gui, brill:Destroy
Return






accfbrill:
Gui, brill:Submit, NoHide



if editvalorbrillo1 >=250
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Valor demasiado alto., 1
return
}

if editvalorbrillo2 >=250
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Valor demasiado alto., 1
return
}

if editvalorbrillo1 =
   editvalorbrillo1=60


if editvalorbrillo2 =
   editvalorbrillo2=120




iniwrite, %cajabri1%, %CLAVEaini%, Brillo, a
iniwrite, %editvalorbrillo1%, %CLAVEaini%, Brillo, b
iniwrite, %cajabri2%, %CLAVEaini%, Brillo, c
iniwrite, %editvalorbrillo2%, %CLAVEaini%, Brillo, d





Brilloeninic=%cajabri1%
Brilloeninicvalor=%editvalorbrillo1%
Brilloencierre=%cajabri2%
Brilloencierrevalor=%editvalorbrillo2%

;Brillo....................................
if Brilloeninic=1
DisplaySetBrightness( Brilloeninicvalor)
else
DisplaySetBrightness( 120)
;Brillo....................................

goto brillGuiClose
Return




Estabrillo1:
Gui, brill:Submit, NoHide

if editvalorbrillo1 >=250
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Valor demasiado alto., 1
return
}



DisplaySetBrightness( editvalorbrillo1)

return

Estabrillo2:
Gui, brill:Submit, NoHide

if editvalorbrillo2 >=250
{
MsgBox 0x40030, %nameofthisscript1% - Advertencia,Valor demasiado alto., 1
return
}

DisplaySetBrightness( editvalorbrillo2)
return




















recnotes:
Gui, guiednote:+ownerAb ; Make the main window (Gui #1) the owner of the "about box".
Gui Ab:+Disabled  ; Disable main window.
Gui, guiednote:-MinimizeBox


Gui, guiednote:Font, Norm
Gui, guiednote:Color ,,%stkcg5%
Gui, guiednote:Font, c0x%stkcg4%
Gui, guiednote:Color ,%stkcg6%

Gui, guiednote:Add, Text, x12 y19 w30 h20 , 1
Gui, guiednote:Add, Text, x12 y39 w30 h20 , 2
Gui, guiednote:Add, Text, x12 y59 w30 h20 , 3
Gui, guiednote:Add, Text, x12 y79 w30 h20 , 4
Gui, guiednote:Add, Text, x12 y99 w30 h20 , 5
Gui, guiednote:Add, Text, x12 y119 w30 h20 , 6
Gui, guiednote:Add, Text, x12 y139 w30 h20 , 7
Gui, guiednote:Add, Text, x12 y159 w30 h20 , 8
Gui, guiednote:Add, Text, x12 y179 w30 h20 , 9
Gui, guiednote:Add, Text, x12 y199 w30 h20 , 10
Gui, guiednote:Add, Edit, x42 y19 w140 h20 vdercedname1, %Notaname1%
Gui, guiednote:Add, Edit, x42 y39 w140 h20 vdercedname2, %Notaname2%
Gui, guiednote:Add, Edit, x42 y59 w140 h20 vdercedname3, %Notaname3%
Gui, guiednote:Add, Edit, x42 y79 w140 h20 vdercedname4, %Notaname4%
Gui, guiednote:Add, Edit, x42 y99 w140 h20 vdercedname5, %Notaname5%
Gui, guiednote:Add, Edit, x42 y119 w140 h20 vdercedname6, %Notaname6%
Gui, guiednote:Add, Edit, x42 y139 w140 h20 vdercedname7, %Notaname7%
Gui, guiednote:Add, Edit, x42 y159 w140 h20 vdercedname8, %Notaname8%
Gui, guiednote:Add, Edit, x42 y179 w140 h20 vdercedname9, %Notaname9%
Gui, guiednote:Add, Edit, x42 y199 w140 h20 vdercedname10, %Notaname10%
Gui, guiednote:Add, Button, x12 y229 w50 h20 vdefaestabcevalorenotnames gdefaestabcevalorenotnames, Default
Gui, guiednote:Add, Button, x132 y229 w50 h20 vgestabcevalorenotnames gestabcevalorenotnames, OK
; Generated using SmartGUI Creator 4.0
Gui, guiednote:Show, Center h261 w201, %nameofthisscript1% -  Nombres de las notas
Return

guiednoteGuiClose:
Gui, Ab:-Disabled
Gui guiednote:Destroy  ; Destroy the about box.
Return




estabcevalorenotnames:

Gui, guiednote:Submit, NoHide


if dercedname1=
dercedname1=Nota 1

if dercedname2=
dercedname2=Nota 2

if dercedname3=
dercedname3=Nota 3

if dercedname4=
dercedname4=Nota 4

if dercedname5=
dercedname5=Nota 5

if dercedname6=
dercedname6=Nota 6

if dercedname7=
dercedname7=Nota 7

if dercedname8=
dercedname8=Nota 8

if dercedname9=
dercedname9=Nota 9

if dercedname10=
dercedname10=Nota 10



IniWrite, %dercedname1%, %CLAVEaini%, Nanot, a
IniWrite, %dercedname2%, %CLAVEaini%, Nanot, b
IniWrite, %dercedname3%, %CLAVEaini%, Nanot, c
IniWrite, %dercedname4%, %CLAVEaini%, Nanot, d
IniWrite, %dercedname5%, %CLAVEaini%, Nanot, e
IniWrite, %dercedname6%, %CLAVEaini%, Nanot, f
IniWrite, %dercedname7%, %CLAVEaini%, Nanot, g
IniWrite, %dercedname8%, %CLAVEaini%, Nanot, h
IniWrite, %dercedname9%, %CLAVEaini%, Nanot, i
IniWrite, %dercedname10%, %CLAVEaini%, Nanot, j


;Guardar y reiniciar sin apps
Henaccrein=1
goto reloadcomplex




return



defaestabcevalorenotnames:
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Se desea proceder?
IfMsgBox Yes, {


IniWrite, Nota 1, %CLAVEaini%, Nanot, a
IniWrite, Nota 2, %CLAVEaini%, Nanot, b
IniWrite, Nota 3, %CLAVEaini%, Nanot, c
IniWrite, Nota 4, %CLAVEaini%, Nanot, d
IniWrite, Nota 5, %CLAVEaini%, Nanot, e
IniWrite, Nota 6, %CLAVEaini%, Nanot, f
IniWrite, Nota 7, %CLAVEaini%, Nanot, g
IniWrite, Nota 8, %CLAVEaini%, Nanot, h
IniWrite, Nota 9, %CLAVEaini%, Nanot, i
IniWrite, Nota 10, %CLAVEaini%, Nanot, j

;Guardar y reiniciar sin apps
Henaccrein=1
goto reloadcomplex




} 
Else IfMsgBox No, {
Return
}
}




return














































































































































































































































































































about1:


Gui, winabout:+ownerAb  
Gui Ab:+Disabled  



Gui, winabout:-MinimizeBox


Gui, winabout:Font, Norm
Gui, winabout:Color ,,%stkcg5%
Gui, winabout:Font, c0x%stkcg4%
Gui, winabout:Color ,%stkcg6%


Gui, winabout:Add, Picture, vaccchtpps17  gaccchtpps17 x138 y15 w150 h150 ,%A_ScriptDir%\Data\Gui\Guiabout.png
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


Gui, winabout:Add, Text, gaccchtpps8 vaccchtpps8  x5 y355 w416 h20 center, GetSysImgLstIcon retrieve the associated icon by Just me

Gui, winabout:Add, Text, gaccchtpps9 vaccchtpps9 x5 y375 w416 h20 center, ChooseColor display the standard Windows color picker dialog by rbrtryn 


Gui, winabout:Add, Text, gaccchtpps11 vaccchtpps11 x5 y395 w416 h20 center, Colorette - Simple Color Picker (v 1.01) by sumon





Gui, winabout:Add, Text, x5 y520 w416 h70  vacciespinfeng2 gacciespinfeng2 center, Este programa no tiene garantía`, úselo bajo su propio riesgo. No me responsabilizo ante la perdida de datos o el mal uso del mismo.`nLicencia del script escrito por RGUriel`, exceptuando el código de terceros especificado en el mismo: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007





Gui, winabout:Add, Button, x188 y620 w50 h20 gAboutptk, Aceptar



Gui, winabout:Show, Center h650 w426, %nameofthisscript1% - About


return


Aboutptk:
winaboutguiclose:
Gui Ab:-Disabled  
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




acciespinfeng3:
MsgBox 0x40040, %nameofthisscript1% - Información,  This program has no guarantee, use it at your own risk. I do not take responsibility for the loss of data or the misuse of it.
return















aladeoimagenabout3:
MsgBox 0x40040, %nameofthisscript1% - Información,  Obtén más información dando clic en las letras e imágenes. `nGet more information by clicking on the letters and images.
return






















;#################################################################################
;Cambio de seccion "Acciones de cierre"
;#################################################################################

tdpta1:
GuiClose:




;detener TT especiales
SetTimer, stopguinam2, Off
Gui, guinam:Destroy
laguiaparec=0
;detener TT especiales



;boton de destruir tiempo de ocultacion
if btnenbkilltime=0
{
	Menu, utilit1, Enable, No ocultar

btnenbkilltime=1
}

;la ventana activa o desactivada
ventaprinact=0


;ocultar gui tiempo
SetTimer, tdpta1, Off  ; Desactivar el contador




;txt
Gui, 1:Submit, NoHide
settext=%MyEdit1%



FileDelete, %noyasegseleccac%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al borrar: %noyasegseleccac%,

}





FileAppend, %MyEdit1%, %noyasegseleccac%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al leer: %noyasegseleccac%,

}


if not FileExist(noyasegseleccac)
{
   MsgBox 0x40030, %nameofthisscript1% - Advertencia, El elemento no existe: %noyasegseleccac%

}





;si la gui esta minimizada
Gui, 1:Show



SetTimer, extimmdeditmw, off



WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%

Gui, 1:hide
return








reloadcomplex:


IniWrite, 1, %CLAVEaini%, NotApps, a

Gui, 1:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%

;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(stkmh,stkmw,gui_position,"1")
gui_position=%guipositionmod%
Gui, 1:Show, %gui_position%


;No APPS
varsaltmencont=1

goto  comuncentaxfinal

return


reloadcomplex2:

Gui, 1:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%

;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(stkmh,stkmw,gui_position,"1")
gui_position=%guipositionmod%
Gui, Show, %gui_position%


IniWrite, 1, %CLAVEaini%, NotApps, a


;No APPS
varsaltmencont=2

goto  comuncentaxfinal

return























exitopc:
Gui, 1:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%

;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(stkmh,stkmw,gui_position,"1")
gui_position=%guipositionmod%
Gui, Show, %gui_position%  h%stkmh% w%stkmw%, %nameofthisscript1%

;tray menu
Henaccrein=3

comuncentaxfinal:

Gui, 1:+Disabled

;Brillo....................................
if Brilloencierre=1
DisplaySetBrightness( Brilloencierrevalor)
;Brillo....................................


Gui, 1:Submit, NoHide

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
IniWrite, x%gui_x% y%gui_y%, %CLAVEaini%, window position, gui_position

;positionn of gui if is new use in new pc
IniWrite, %usonuev3%, %CLAVEaini%, pcnewres, a

IniWrite, %idl2%, %CLAVEaini%, Go, a
IniWrite, %idl1%, %CLAVEaini%, Go, b
IniWrite, %idl3%, %CLAVEaini%, Go, c
IniWrite, %idl4%, %CLAVEaini%, Go, d
IniWrite, %idl5%, %CLAVEaini%, Go, e
IniWrite, %linkscgalm%, %CLAVEaini%, Go, f
IniWrite, %confacc1%, %CLAVEaini%, Go, g

IniWrite, %idl11%, %CLAVEaini%, Go, l
IniWrite, %idl9%, %CLAVEaini%, Go, j

IniWrite, %notss1%, %CLAVEaini%, Go, n
IniWrite, %idlaccgui%, %CLAVEaini%, Go, m

IniWrite, %DLsDLsf%, %CLAVEaini%, Folder, a
IniWrite, %DLsDLsfacc%, %CLAVEaini%, Folder, b








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

IniWrite, % arrcolors_W, %CLAVEaini%, STKG,16
;colores personalizados



}













if vatoflooconfig=1
{
	
WinGetPos, gui_x, gui_y,,, ahk_id %skconf%
gui_position2=x%gui_x% y%gui_y%
IniWrite, %gui_position2%, %CLAVEaini%, window position, gui_position2


}









FileDelete, %noyasegseleccac%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %noyasegseleccac%,
}

FileAppend, %MyEdit1%, %noyasegseleccac%
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %noyasegseleccac%,

}


if not FileExist(noyasegseleccac)
{
   MsgBox 0x40030, %nameofthisscript1% - Advertencia, El elemento no existe: %noyasegseleccac%

}



;___________________________________________________________________
;copia de seguridad


EnvAdd, gucoval1, 1

FileRemoveDir,%ClaveCose%\Notas-CS%gucoval1%,1
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %ClaveCose%\Notas-CS%gucoval1%,

}

FileCopyDir, %CLAVENots%,%ClaveCose%\Notas-CS%gucoval1%,1
if ErrorLevel
{ 
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Elemento en conflicto: %ClaveCose%\Notas-CS%gucoval1%,

}

IniWrite, %gucoval1%, %CLAVEaini%, CS, a



;___________________________________________________________________










;___________________________________________________________________
;___________________________________________________________________



;____________________

if varsaltmencont=1
goto exinum8

if varsaltmencont=2
goto exinum1


;**********************************************************


;StartStartApps


if StartStartApps=1
{

;especial to para lanzar set inicio
;especial to para lanzar set inicio

if vdlsnumpos2=2
FoldExpl_univers=0

;especial to para lanzar set inicio
;especial to para lanzar set inicio


varnnes1=0
varnnes2=20
varnnes3=40

loop 20
{

EnvAdd, varnnes1, 1
        EnvAdd, varnnes2, 1
        EnvAdd, varnnes3, 1
        
cexxart1:="zxcappssa"varnnes1
cexxart2:="zxcappssa"varnnes2
cexxart3:="zxcappssa"varnnes3
entradacomSTCL=% %cexxart3%

If %cexxart1%=0
continue

if %cexxart2%=0
continue


If entradacomSTCL=No establecido
continue

If entradacomSTCL=
continue



ElemCom_STCL1=
ElemCom_STCL2=

numberDLs_Start=0
Loop, Parse, entradacomSTCL, |,
{
   
numberDLs_Start++

PreeElemComstringvar:="ElemCom_STCL" numberDLs_Start



%PreeElemComstringvar%=%A_LoopField%
   
}until numberDLs_Start=2



;SplitPath, , 
;SplitPath, ElemCom_STCL1, nombreespecialeXE, , extenespexe
;if extenespexe=exe
;{
;if not Process, Exist, %nombreespecialeXE%
;{
;continue
;}
;}


if ElemCom_STCL2=Lista
{
	StartCommandDLs_Lista(ElemCom_STCL1,FoldExpl_univers,LinkNaveg_univers)
	continue
}


;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)
StartCommandDLs(ElemCom_STCL1,ElemCom_STCL2,FoldExpl_univers,LinkNaveg_univers)



}



}











;CloseCloseApps







if CloseCloseApps=1
{


varnnes1=0
varnnes2=20
varnnes3=40

loop 20
{

EnvAdd, varnnes1, 1
        EnvAdd, varnnes2, 1
        EnvAdd, varnnes3, 1
        
cexxart1:="zxcappcca"varnnes1
cexxart2:="zxcappcca"varnnes2
cexxart3:="zxcappcca"varnnes3
cexxart4=% %cexxart3%




If %cexxart1%=0
continue





SplitPath, cexxart4, nombreespecialeXE

If nombreespecialeXE=No establecido
continue

If nombreespecialeXE=
continue

if !FileExist(cexxart4)
continue



loop 6
{
WinClose, ahk_exe %nombreespecialeXE%
}


	if %cexxart2%=0
continue

	
	Process, Exist, %nombreespecialeXE%
if (Errorlevel = 0)
{
continue
}
    
loop 6
{
Process, Close,%nombreespecialeXE%
}






}










}























;tray menu
if Henaccrein=3
Goto, exinum1





if Henaccrein=1
Goto, exinum8





if  ifvaccinfinalprogui=1
Goto, exinum1

if (idl5 =1)
Goto, exinum2
else
if (idl5 =2)
Goto, exinum3
else
if (idl5 =3)
Goto, exinum4
return







































exinum1:


ExitApp
return

exinum2:

Shutdown 8
ExitApp
return







exinum3:
Shutdown, 0
ExitApp
return









exinum4:

Shutdown, 2
ExitApp
return







exinum8:
Reload
return











;Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********
;Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********


;Brillo.................................................................
DisplaySetBrightness( Br=128 ) {
 Loop, % VarSetCapacity( GR,1536 ) / 6
   NumPut( ( n := (Br+128)*(A_Index-1)) > 65535 ? 65535 : n, GR, 2*(A_Index-1), "UShort" )
 DllCall( "RtlMoveMemory", UInt,&GR+512,  UInt,&GR, UInt,512 )
 DllCall( "RtlMoveMemory", UInt,&GR+1024, UInt,&GR, UInt,512 )
 Return DllCall( "SetDeviceGammaRamp", UInt,hDC := DllCall( "GetDC", UInt,0 ), UInt,&GR )
     , DllCall( "ReleaseDC", UInt,0, UInt,hDC )
}








;********************************************************************************

;Funciones para octener el tiempo en el nombre del elemento


TimeFileName1()
{
FormatTime, mtec1,y, y
FormatTime, mtec2,M, M
FormatTime, mtec3,d, d
FormatTime, mtec4,HH, H
FormatTime, mtec5,mm, m
FormatTime, mtec6,ss, s

Random, nalsec , 0, 10

tiempofileget=[%mtec1%%mtec2%%mtec3%%mtec4%%mtec5%%mtec6%%nalsec%]

return %tiempofileget%
}




















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

GuiControl, %namegccolor%:,%contexit%,%OutColor%



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
	
	
}until numcom3=3


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
Henaccrein=1
goto reloadcomplex
return
;Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Nucle


;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS*****













;Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********
;Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********








