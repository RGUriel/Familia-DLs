
;Changes a property in the compiled executable's version information.




;@Ahk2Exe-SetFileVersion 1.4T
;@Ahk2Exe-SetProductVersion 1.4T
;@Ahk2Exe-SetVersion 1.4T


;@Ahk2Exe-SetInternalName Select and execute
;@Ahk2Exe-SetName Select and execute
;@Ahk2Exe-SetOrigFilename Select and execute
;@Ahk2Exe-SetProductName Select and execute

;@Ahk2Exe-SetDescription Lanzador de aplicaciones con diferentes utilidades.


;____Not CHANGE
;@Ahk2Exe-SetLanguage 0x0409
;@Ahk2Exe-SetCopyright Copyright © 2022 RGUriel


;Changes a property in the compiled executable's version information.











#SingleInstance Force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include %A_ScriptDir%\Data\Class_CtlColors.ahk


;sin 10mlseg entre linea de codigo
SetBatchLines -1 

;********************************************************************************
; para las notas puesto que UTF-8 es mas moderno
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS
FileEncoding, UTF-8
CoordMode,Mouse,Screen
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS
;para los iconos de los archivos en gui
#Include %A_ScriptDir%\Data\GetSysImgLstIcon.ahk
#Include %A_ScriptDir%\Data\ChooseColor.ahk


;VVVVVVVVVVversión
Veract1:="1.4T"
;VVVVVVVVVVV



;No APPS
varsaltmencont=0
;Configuración
vatoflooconfig=0
;para tooltip especial
laguiaparec=0







;para recuperar datos de las DropDownList

CLAVEaini=%A_ScriptDir%\Select and execute.ini
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
IniWrite, 0, %CLAVEaini%, Go, c

IniWrite, No establecido, %CLAVEaini%, Apps, a
IniWrite, No establecido, %CLAVEaini%, Apps, b

IniWrite, Center, %CLAVEaini%, window position, gui_position

IniWrite, Center, %CLAVEaini%, window position, gui_position2
;positionn of gui if is new use in new pc
IniWrite, 700/200, %CLAVEaini%, pcnewres, a

IniWrite, ^!}, %CLAVEaini%, HK, a
IniWrite, 0, %CLAVEaini%, HK, b
IniWrite,No establecido, %CLAVEaini%, DLs, a

IniWrite, 1, %CLAVEaini%, Exit, a

IniWrite, 0, %CLAVEaini%, Timer, a
IniWrite, 30000, %CLAVEaini%, Timer, b
IniWrite, Segundos, %CLAVEaini%, Timer, c

IniWrite, 0, %CLAVEaini%, NotApps, a






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















;SKM Custom
IniWrite, Verdana, %CLAVEaini%, STKG,1
IniWrite, 2, %CLAVEaini%, STKG,2
IniWrite, 8, %CLAVEaini%, STKG,3
IniWrite, ffffff, %CLAVEaini%, STKG,4
IniWrite, 23222B, %CLAVEaini%, STKG,5
IniWrite, 1C1B22, %CLAVEaini%, STKG,6
IniWrite, 0, %CLAVEaini%, STKG,7
IniWrite, 1, %CLAVEaini%, STKG,8
IniWrite, 1, %CLAVEaini%, STKG,9

IniWrite, 1, %CLAVEaini%, STKG,10
IniWrite, 12, %CLAVEaini%, STKG,11
IniWrite, ffffff, %CLAVEaini%, STKG,12
IniWrite, 1, %CLAVEaini%, STKG,13
IniWrite, Comic Sans MS, %CLAVEaini%, STKG,14
IniWrite, 1C1B22, %CLAVEaini%, STKG,15

IniWrite, 5, %CLAVEaini%, STKG,16
IniWrite, 1, %CLAVEaini%, STKG,17

;colores personalizados
;Color por defecto
colsant_Def:=[16777215,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

Loop % colsant_Def.Length()
colsant_Def_W .= colsant_Def[A_Index] . "|"

IniWrite, % colsant_Def_W, %CLAVEaini%, STKG,18
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
IniRead, vpddlssex, %CLAVEaini%, Go, a
IniRead, gui_position, %CLAVEaini%, window position, gui_position

IniRead, gui_position2, %CLAVEaini%, window position, gui_position2
IniRead, alwaontofseex, %CLAVEaini%, Go, b
IniRead, dejecacc, %CLAVEaini%, Go, c

IniRead, appsapp1, %CLAVEaini%, Apps, a
IniRead, appsapp2, %CLAVEaini%, Apps, b
;positionn of gui if is new use in new pc
IniRead, pcnewres, %CLAVEaini%, pcnewres, a

IniRead, hotknomprogexe1, %CLAVEaini%, HK, a
IniRead, hokact, %CLAVEaini%, HK, b
IniRead, dlsexeval, %CLAVEaini%, DLs, a

IniRead, cajxit, %CLAVEaini%, Exit, a

IniRead, vaactimerselezex, %CLAVEaini%, Timer, a
IniRead, catiadistim, %CLAVEaini%, Timer, b
IniRead, tiemposavedata, %CLAVEaini%, Timer, c

IniRead, Startwoapps, %CLAVEaini%, NotApps, a





;**********************************************************


;Comandos por medio de Hotkey
varnumbcomhk=0
Loop
{
	varnumbcomhk++
	
	concomhoke:="comhoke"varnumbcomhk
IniRead, %concomhoke%, %CLAVEaini%, ComandosHotkey, %varnumbcomhk%

}until varnumbcomhk=60







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










;Stk Custom
IniRead, stkcg1, %CLAVEaini%, STKG,1
IniRead, stkcg2, %CLAVEaini%, STKG,2
IniRead, stkcg3, %CLAVEaini%, STKG,3
IniRead, stkcg4, %CLAVEaini%, STKG,4
IniRead, stkcg5, %CLAVEaini%, STKG,5
IniRead, stkcg6, %CLAVEaini%, STKG,6
IniRead, activaracrap, %CLAVEaini%, STKG,7
IniRead, guidimenc, %CLAVEaini%, STKG,8
IniRead, notdls, %CLAVEaini%, STKG,9

IniRead, ttesactiv, %CLAVEaini%, STKG,10
IniRead, zzletrattesp, %CLAVEaini%, STKG,11
IniRead, ttesguicolorfont, %CLAVEaini%, STKG,12
IniRead, ttesguifontstylepre, %CLAVEaini%, STKG,13
IniRead, ttesguifont, %CLAVEaini%, STKG,14
IniRead, ttesguicolor, %CLAVEaini%, STKG,15

IniRead, elementsperniv, %CLAVEaini%, STKG,16
IniRead, nivelesv1, %CLAVEaini%, STKG,17

;colores personalizados
IniRead, colsant_R, %CLAVEaini%, STKG,18
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





;NEWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW




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
	winzmodif_conf=0
		 ; Ventana sin registro de cierre anterior 
    winzmodif_gec=0
	winzmodif_guinam=0
	 winzmodif_copygui=0
}
else
{
	winzmodif_1=1
	winzmodif_conf=1
		 ; Ventana sin registro de cierre anterior 
    winzmodif_gec=0
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







;nvegador y explorador
	if !FileExist(appsapp2)
		LinkNaveg_univers=0
	else
	LinkNaveg_univers=%appsapp2%


	if !FileExist(appsapp1)
		FoldExpl_univers=0
	else
	FoldExpl_univers=%appsapp1%







    If alwaontofseex = 1
    {
        Gui, +AlwaysOnTop
    }
    else
    {
        Gui, -AlwaysOnTop
    }


;Not APPS
if Startwoapps=1
{
IniWrite, 0, %CLAVEaini%, NotApps, a
Startwoapps=0
goto notapps1
}
;**********************************************************
;para lanzar set inicio





;**********************************************************
;para lanzar set inicio


if StartStartApps=1
{


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











notapps1:
;timer---------------------------------------------------------------------------------------------




    


;derterminar nombre del Executable

SplitPath, A_ScriptFullPath, , , , titleofgui,

;derterminar nombre del Executable

;NAMENAMENAME
;___________________________________________
nameofthisscript1:=titleofgui
;___________________________________________
; for functions
global nameofthisscript1


if activaracrap=0
cantidadofelemets=0
else
{
	cantidadofelemets:=elementsperniv*nivelesv1
}


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


IniDLs:=CLAVEDLs "\DLsr.ini"
if !FileExist(IniDLs)
	CreateListDLs("r")











	
	counletrasdls=0
	loop 2
	{
		EnvAdd, counletrasdls, 1
	
	if counletrasdls=1
	{
		LetraofDLs:="a"
		
		
		if  notdls=0
			continue
			
	}
	else
			if counletrasdls=2
	{
LetraofDLs:="r"
		
;Acceso rapido
if  cantidadofelemets=0
continue

	}
	
	

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


;#################################################################################
;#################################################################################



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








Menu, nottapps1, Add, Reiniciar, reloadcomplex
Menu, nottapps1, Add, Exit, reloadcomplex2




















;Elemento principal normal
Menu, menusele1, Add, Abrir carpeta,controlpickfolder
Menu, menusele1, Add, Copiar comando ,controlpickold
Menu, menusele1, Add, Mostrar comando,ShowComDLsaa
Menu, menusele1, Add, Borrar comando ,EraseComDLsaa
Menu, menusele1, Add, Abrir lista, vendiini


;Elemento principal no se puede abrir carpeta

Menu, menuseles, Add, Copiar comando,controlpickold
Menu, menuseles, Add, Mostrar comando,ShowComDLsaa
Menu, menuseles, Add, Borrar comando ,EraseComDLsaa
Menu, menuseles, Add, Abrir lista, vendiini





;menucontextual acceso rapido2
Menu, menusele2, Add,Abrir carpeta,menupictop1
Menu, menusele2, Add, Copiar comando ,menupictop2
Menu, menusele2, Add, Mostrar comando ,ShowComDLsrr
Menu, menusele2, Add, Borrar comando ,EraseComDLsrr
Menu, menusele2, Add, Abrir lista, vendiini2
Menu, menusele2, Add, Mostrar serial, iniforbaux1

;menucontextual acceso rapido3
Menu, menusele3, Add, Copiar comando ,menupictop2
Menu, menusele3, Add, Mostrar comando ,ShowComDLsrr
Menu, menusele3, Add, Borrar comando ,EraseComDLsrr
Menu, menusele3, Add, Abrir lista, vendiini2
Menu, menusele3, Add, Mostrar serial, iniforbaux1

;Agregar to menus aux
vanumbmenu=0
Loop
{
	vanumbmenu++
	
	if vanumbmenu=1
		namexmenu:="menusele1"
	else
	if vanumbmenu=2
		namexmenu:="menuseles"
		else
	if vanumbmenu=3
		namexmenu:="menusele2"
		else
	if vanumbmenu=4
		namexmenu:="menusele3"


	
	
	;No hay Elemento principal 
Menu, %namexmenu%, Add
Menu,  %namexmenu%, Add, Directorio de %nameofthisscript1%, imageab4
Menu, %namexmenu%, Add,  Configuración, conset
Menu, %namexmenu%, Add
Menu, %namexmenu%, Add, No Start-Close, :nottapps1
Menu, %namexmenu%, Add, Reiniciar, reloadcomplex
Menu, %namexmenu%, Add, Exit, exitopc
	

	
}until vanumbmenu=4































;Tray---------------------------------------
Menu, Tray, NoStandard
Menu, Tray, Add, Mostrar ventana, nretor 
Menu, Tray, Add,  Configuración, conset
Menu, Tray, Add, Reparar configuración, repairini
Menu, Tray, Add,
Menu, Tray, Add, No Start-Close, :nottapps1
Menu, Tray, Add, Reiniciar, reloadcomplex
Menu, Tray, Add, Exit, exitopc
Menu, Tray, Default, Mostrar ventana



;Tray---------------------------------------










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
;otros menus de otras ventanas-;otros menus de otras ventanas




Menu, guistkcmenunorm, Add, Muestra previa, Probarguiexp









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

if hokact=1
{
Hotkey, %hotknomprogexe1% ,accionhotke
}

























if guidimenc=1
{
	
	;GUI
;zise de accesos rapidos
Cuadropicar:=20
Cuadropicarspace:=5

;font of serie
fontzisetextserie=9

;zise of files show
accrappictzz:={SMALL: 0x01}

;correccion y Dls
coreccdlsy:=2
}
else
if guidimenc=2
{
	
		;GUI
;zise de accesos rapidos
Cuadropicar:=30
Cuadropicarspace:=7

;font of serie
fontzisetextserie=13

;zise of files show
accrappictzz:={LARGE: 0x00}

;correccion y Dls
coreccdlsy:=2
}
else
if guidimenc=3
{
	
	;GUI
;zise de accesos rapidos
Cuadropicar:=40
Cuadropicarspace:=10

;font of serie
fontzisetextserie=16

;zise of files show
accrappictzz:={EXTRALARGE: 0x02}

;correccion y Dls
coreccdlsy:=0
}
else
if guidimenc=4
{
	
	;GUI
;zise de accesos rapidos
Cuadropicar:=80
Cuadropicarspace:=20

;font of serie
fontzisetextserie=30

;zise of files show
accrappictzz:={EXTRALARGE: 0x02}

;correccion y Dls
coreccdlsy:=0
}






;-0--------------------------------------------------

if notdls=0
	hBaseofgui:=Cuadropicarspace
	else
hBaseofgui:=Cuadropicar+Cuadropicarspace+Cuadropicarspace


niveluph:=Cuadropicar+Cuadropicarspace



;Guih;

preguih:=nivelesv1*niveluph


if  notdls=0
sizguiH:=preguih+Cuadropicarspace
else
sizguiH:=preguih+hBaseofgui

;accesos rapidos desactivados
if  cantidadofelemets=0
sizguiH:=hBaseofgui

;GuiW;
sizguiW:=elementsperniv*niveluph+Cuadropicarspace




;pendiente dls
wBaseofgui:=Cuadropicarspace+Cuadropicarspace
nivelupw:=Cuadropicar+Cuadropicarspace
wmedidagui:=wBaseofgui+(elementsperniv*nivelupw)







;zise de accesos rapidos
wmedidacontrolpictext:=Cuadropicar
hmedidacontrolpictext:=Cuadropicar


xmedidaaumentcontrolpictext:=nivelupw
ymedidaaumentcontrolpictext:=niveluph
;-0--------------------------------------------------
;-0--------------------------------------------------



;-0--------------------------------------------------







Gui, +Hwndgui_id -MinimizeBox


Gui, Color ,,%stkcg5%
Gui, Font, S%stkcg3% c0x%stkcg4% %stkcgfin2%, %stkcg1%
Gui, Color ,%stkcg6%




;********************************************************************************


if  notdls=1
{
	
	
	dlsezzx:=Cuadropicar+Cuadropicarspace+Cuadropicarspace
dlsezzw:=wmedidagui-dlsezzx-(Cuadropicarspace*2)

dlsezzy:=Cuadropicarspace-coreccdlsy


spcepicprincx:=Cuadropicarspace
spcepicprincy:=Cuadropicarspace

	
Gui, Add, Picture,  x%spcepicprincx% y%spcepicprincy%     w%Cuadropicar%  h%Cuadropicar%   gcontrolpick  vcontrolpick  0x03 hwndHSTATIC ,


Gui, Add, DropDownList, x%dlsezzx% y%dlsezzy% w%dlsezzw% h20 R20 altsubmit vDLsaDLs gDLsaDLs hwndCBBID1, %DLsDLsa%
CtlColors.Attach(CBBID1, stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, DLsaDLs, %vpddlssex%


}








;********************************************************************************
;ventanaactiva
ventanaprincact=1
;********************************************************************************




if  cantidadofelemets>=1
{
    


    


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


;tooltips botones auxiliares- Serie
conbotaux6:="textsolnum" varconbotaux1 "_TT"


%conbotaux6%=%conbotaux2%

%conbotaux3%=%conbotaux2%
;fin del loop principal
if varconbotaux1> %cantidadofelemets%
break
}

}



;origen   Gui, Add, Picture ,xm  vimagliar1 gbotauxb1 %Positix1% y27 w20 h20  hwndpicbotesp1  0x3 0x200, 


	;valor de Y
continforguiprinacra1:=hBaseofgui
	;valor de x
continforguiprinacra2:=Cuadropicarspace

;valor para la variable independiente

;niveles
elementspernivinterl=%elementsperniv%
levelintern=1

numeguiprinacra=0
Loop
{
	EnvAdd, numeguiprinacra,1
	



	continforguiprinacra3:="imagliar"numeguiprinacra

	 continforguiprinacra5:="picbotesp"numeguiprinacra
   continforguiprinacra6:="textsolnum"numeguiprinacra
	
	
	Gui, Add, Picture ,xm  v%continforguiprinacra3%  gbotauxb1   x%continforguiprinacra2% y%continforguiprinacra1% w%wmedidacontrolpictext% h%hmedidacontrolpictext%  hwnd%continforguiprinacra5%  0x3 0x200, 
	
	
	Gui, Font, norm
Gui, Font, S%fontzisetextserie% c0x%stkcg4%
	Gui, Add, Text ,  v%continforguiprinacra6%  gbotauxb1         x%continforguiprinacra2%  y%continforguiprinacra1% w%wmedidacontrolpictext% h%hmedidacontrolpictext%  Center ,%numeguiprinacra%
	

	;valor de Y
	EnvAdd, continforguiprinacra2,%xmedidaaumentcontrolpictext%
	
    		if numeguiprinacra=%cantidadofelemets%
			break
	
	

	;valor de x reinicia
	if numeguiprinacra=%elementspernivinterl%
{

	
	
	EnvAdd, elementspernivinterl, %elementsperniv%
			goto nextlevelgui
	
}


	continue 
	
	
	
    nextlevelgui:
	
	   continforguiprinacra2:=Cuadropicarspace
	  EnvAdd, continforguiprinacra1,%ymedidaaumentcontrolpictext%
	  


	if levelintern=%nivelesv1%
		break

		EnvAdd, levelintern, 1	

}until numeguiprinacra=100




;Esconder numeros guia

varresnum=0
Loop
{
   Envadd, varresnum,1
   concontacaname:="textsolnum"varresnum
   
   guicontrol, 1:Hide,%concontacaname%
   
      
   
   if  varresnum> %cantidadofelemets%
      break
}


}

;numeros no visibles
numshow=0




;********************************************************************************
;positionn of gui if is new use in new pc





;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(sizguiH,sizguiW,gui_position,"1")
gui_position=%guipositionmod%


        Gui, Show, %gui_position% h%sizguiH% w%sizguiW%, %titleofgui%
 ;Gui, Show, %gui_position% h%hvaprimegui% w%wmedidagui%, %titleofgui%
;********************************************************************************





if vaactimerselezex=1
{ 
Settimer, te1, %catiadistim%
} 

;********************************************************************************
;para los TT
global ventanaprincact
;para los TT

;para los tooltip 
OnMessage(0x200, "WM_MOUSEMOVE")



startvar=1
goto DLsaDLs
Return





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
if ventanaprincact=0
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
EnvAdd,gui_xcheck2,%sizguiW%
EnvAdd,gui_ycheck2,%sizguiH%
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









if ElemCom_aa1=
goto normalmenu2





if ElemCom_aa2=Clipboard
goto normalmenu2
if ElemCom_aa2=Clipboardtxt
goto normalmenu2

if ElemCom_aa2=Config
goto normalmenu2
if ElemCom_aa2=Link
goto normalmenu2



Menu, menusele1, Show, %A_GuiX%, %A_GuiY%
return



normalmenu2:
Menu, menuseles, Show, %A_GuiX%, %A_GuiY%
return











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


if ElemCom_rr1=
goto menumenusele2es





if ElemCom_rr1=Clipboard
goto menumenusele2es
if ElemCom_rr1=Clipboardtxt
goto menumenusele2es

if ElemCom_rr1=Config
goto menumenusele2es
if ElemCom_rr1=Link
goto menumenusele2es


Menu, menusele2, Show, %A_GuiX%, %A_GuiY%
return



menumenusele2es:
Menu, menusele3, Show, %A_GuiX%, %A_GuiY%
return








menupictop2:
ToTheClipboardDLs(Comtotal_rr,0)
Return







menupictop1:
OpenFolderDLs(ElemCom_rr1,UtiFolder_rr,1,FoldExpl_univers)
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

;menucontextual
repairini:

MsgBox 0x40024, %nameofthisscript1% - Verificación, Se restablecerán las hotkeys, la posición de la ventana y los estilos.  ¿Se desea proceder?
IfMsgBox No, {
Return
}

gui, 1:+Disabled



IniWrite, Center, %CLAVEaini%, window position, gui_position

IniWrite, Center, %CLAVEaini%, window position, gui_position2
;positionn of gui if is new use in new pc
IniWrite, 700/200, %CLAVEaini%, pcnewres, a

IniWrite, ^!}, %CLAVEaini%, HK, a






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





















;SKM Custom
IniWrite, Verdana, %CLAVEaini%, STKG,1
IniWrite, 2, %CLAVEaini%, STKG,2
IniWrite, 8, %CLAVEaini%, STKG,3
IniWrite, ffffff, %CLAVEaini%, STKG,4
IniWrite, 23222B, %CLAVEaini%, STKG,5
IniWrite, 1C1B22, %CLAVEaini%, STKG,6
IniWrite, 0, %CLAVEaini%, STKG,7
IniWrite, 1, %CLAVEaini%, STKG,8
IniWrite, 1, %CLAVEaini%, STKG,9

IniWrite, 1, %CLAVEaini%, STKG,10
IniWrite, 12, %CLAVEaini%, STKG,11
IniWrite, ffffff, %CLAVEaini%, STKG,12
IniWrite, 1, %CLAVEaini%, STKG,13
IniWrite, Verdana, %CLAVEaini%, STKG,14
IniWrite, 1C1B22, %CLAVEaini%, STKG,15











reload
return















































;menucontextual
imageab4:
OpenFolderDLs(0,A_ScriptDir,0,FoldExpl_univers)
return








DLsaDLs:



Gui, 1:Submit, NoHide
;var a modificar
letrainsignia:="a"
fuenteNumber:=DLsaDLs
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






;ShowMyImageDLs(Elemento,Parametro,icoimadll,index,SizFile,guiname,control,hwndID,h,w)
ShowMyImageDLs(ElemCom_aa1,ElemCom_aa2,ElemCom_aa3,ElemCom_aa4,accrappictzz,"1","controlpick","HSTATIC",Cuadropicar,Cuadropicar)

;acciones de inicio
if startvar=1
goto guibotonaux




if dejecacc=0
    return
controlpick:




;ejecutar los comandos
;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)



if ElemCom_aa2=Lista
{
	StartCommandDLs_Lista(ElemCom_aa1,FoldExpl_univers,LinkNaveg_univers)
	Efecto_Start("1","controlpick")
	return
}




StartCommandDLs(ElemCom_aa1,ElemCom_aa2,FoldExpl_univers,LinkNaveg_univers)
	Efecto_Start("1","controlpick")
Return




controlpickold:
ToTheClipboardDLs(Comtotal_aa,0)
Return


controlpickfolder:

OpenFolderDLs(ElemCom_aa1,UtiFolder_aa,1,FoldExpl_univers)

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
if varliar1> %cantidadofelemets%
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

ShowMyImageDLs(ElemCom_rr1,ElemCom_rr2,ElemCom_rr3,ElemCom_rr4,accrappictzz,"1",controlidv,controlhwnd,Cuadropicar,Cuadropicar)

}

;final de inicio
if startvar=1
{
    startvar=0
Return
}

return





botauxb1:

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


;ejecutar los comandos
;StartCommandDLs(Elemento,Parametro,FoldExpl,LinkNaveg)



if ElemCom_rr2=Lista
{
	StartCommandDLs_Lista(ElemCom_rr1,FoldExpl_univers,LinkNaveg_univers)
		Efecto_Start("1",A_GUICONTROL)
	return
}


StartCommandDLs(ElemCom_rr1,ElemCom_rr2,FoldExpl_univers,LinkNaveg_univers)
	Efecto_Start("1",A_GUICONTROL)
return




























































































conset:

if vatoflooconfig=1
{
	Gui, conf:Show
	
WinGetPos, gui_x, gui_y,,, ahk_id %seconf%
gui_position2=x%gui_x% y%gui_y%

;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(278,222,gui_position2,"conf")
gui_position2=%guipositionmod%
Gui, conf:Show, %gui_position2%
	return
}
	



;Romperloop
vatoflooconfig=1


If vaactimerselezex= 1
{
  Settimer, te1, off  
    }

catiadistim2:=catiadistim/1000
             setformvar1:=Format("{:d}",catiadistim2)
catiadistim2=%setformvar1%








Gui, conf:Font, Norm
Gui, conf:Color ,,%stkcg5%
Gui, conf:Font, c0x%stkcg4%
Gui, conf:Color ,%stkcg6%



Gui, conf:Add, CheckBox, x12 y9 w90 h20  vcaja6 Checked%alwaontofseex%, Primer plano
Gui, conf:Add, CheckBox, x112 y9 w100 h20  vvaactimer Checked%cajxit%, Preguntar al salir

Gui, conf:Add, CheckBox, x12 y39 w150 h20  vselecandejecacc Checked%dejecacc%, Seleccionar y ejecutar



Gui, conf:Add, Checkbox, vsettt2 Checked%vaactimerselezex% x12 y59 w80 h30, Ocultar en:

Gui, conf:Add, Edit , x92 y64 w40 h20 R1 gedivarsetex vedivarsetex number, %catiadistim2%
CtlColors.Attach(CBBID1, "202020", "White")
Gui, conf:Add, Text , x142 y66 w130 h20 R1 vtiempotextoexp ,%tiemposavedata%
;para recuperar datos de las DropDownList






Gui, conf:Add, Button, x12 y99 w95 h20 vnameraxti1 gwindow1, Start-Start Apps
Gui, conf:Add, Button, x117 y99 w95 h20 vnameraxti2 gwindow2, Close-Close Apps

Gui, conf:Add, Button, x12 y129 w95 h20  vaplichk gaplichk, Com. Hotkey

Gui, conf:Add, Button, x12  y159 w60 h20 vstkust gstkust, Estilo
Gui, conf:Add, Button, x82  y159 w60 h20 vwindwutgui gwindwutgui , Avisos
Gui, conf:Add, Button, x150  y159 w60 h20 vappsse gappsse, Apps





Gui, conf:Add, Text, x12 y193 w20 h20 center, DLs
Gui, conf:Add, Edit, x32 y189 w180 h20 vdlsexe, %dlsexeval%












Gui, conf:Add, Checkbox, vsettthotkey Checked%hokact%  x12 y219 w60 h20 , Hotkey
Gui, conf:Add, Hotkey, x72 y219 w140 h20 vhotk1, %hotknomprogexe1%





Gui, conf:Add, Button, x172 y249 w40 h20 gok1, OK
Gui, conf:Add, Button, x12 y249 w40 h20 gokdef, Default


Gui, conf:Add, Button, x91 y249 w40 h20 gwinabout1, About

; Generated using SmartGUI Creator 4.0


;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(278,222,gui_position2,"conf")
gui_position2=%guipositionmod%

Gui, conf:Show, %gui_position2% h278 w222, %nameofthisscript1% - Configuración

Gui, conf:+Hwndseconf



Loop
{
	
	Gui, conf:Submit, NoHide
	
	if settthotkey=0
	{
		guicontrol, conf:Disable, hotk1
		
	}
	else
	{
			guicontrol, conf:Enable, hotk1
		
	}
	
	
	
	if vatoflooconfig=0
		break
	
	sleep 1500
	
}







Return




confGuiClose:
confGuiEscape:


WinGetPos, gui_x, gui_y,,, ahk_id %seconf%
gui_position2=x%gui_x% y%gui_y%
IniWrite, %gui_position2%, %CLAVEaini%, window position, gui_position2

Gui, conf:Submit, NoHide
 ; Destroy the about box.




GuiControlGet, fre ,1:, DLsaDLs
IniWrite, %fre%, %CLAVEaini%, Go, a




vatoflooconfig=0

Gui conf:Destroy 



if vaactimerselezex=1
{ 
Settimer, te1, %catiadistim%
} 



Return


edivarsetex:

Loop 30 {
guicontrolget, vfrrrr44,conf:,edivarsetex
    
    
guicontrol, conf:,tiempotextoexp, Segundos
    

    
    if  vfrrrr44>60
{
    minutoscard33:=vfrrrr44/60
    
    
                 setformvar1:=Format("{:.2f}",minutoscard33)
minutoscard33=%setformvar1%
    

    
guicontrol, conf:,tiempotextoexp, %minutoscard33% Minutos
}


if  vfrrrr44>3600
{
    
  
    minutoscard23:=vfrrrr44/3600
    
    
                 setformvar1:=Format("{:.2f}",minutoscard23)
minutoscard23=%setformvar1%
    

    
    
guicontrol, conf:,tiempotextoexp, %minutoscard23% Horas
}

sleep 500

    If vatoflooconfig=0
        break

}
Return











iniforbaux1:



;Acceso rapido
if  cantidadofelemets=0
{
    MsgBox 0x40040, %nameofthisscript1%, Sin accesos rápidos, 
  return  
}

if numshow=1
goto timeretorn


varresnum=0
Loop
{
   Envadd, varresnum,1
   concontacaname:="imagliar"varresnum
   
   guicontrol, 1:Hide,%concontacaname%
   
      
   
   if varresnum> %cantidadofelemets%
      break
}



varresnum=0
Loop
{
   Envadd, varresnum,1
   concontacaname:="textsolnum"varresnum
   
   guicontrol, 1:Show,%concontacaname%
   
      
   
   if varresnum> %cantidadofelemets%
      break
}

Menu, utilminiacc, Rename, Mostrar serial, Ocultar serial


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
   
      
   
   if varresnum> %cantidadofelemets%
      break
}





varresnum=0
Loop
{
   Envadd, varresnum,1
   concontacaname:="imagliar"varresnum
   
   guicontrol, 1:Show,%concontacaname%
   
      
   
   if varresnum> %cantidadofelemets%
      break
}


Menu, utilminiacc, Rename, Ocultar serial, Mostrar serial

;numeros no visibles
numshow=0
return











appsse:



Gui, appsse:Font, Norm
Gui, appsse:Color ,,%stkcg5%
Gui, appsse:Font, c0x%stkcg4%
Gui, appsse:Color ,%stkcg6%


Gui, appsse:-MinimizeBox

Gui, appsse:+ownerconf  ; Make the main window (Gui #1) the owner of the "about box".
Gui conf:+Disabled  ; Disable main window.



Gui, appsse:Add, Text, x10 y13 w60 h20 , Explorador
Gui, appsse:Add, Edit, x70 y10 w220 h20 vappssecont1, %appsapp1%

Gui, appsse:Add, Text, x10 y43 w60 h20 , Navegador
Gui, appsse:Add, Edit, x70 y40 w220 h20 vappssecont2, %appsapp2%


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
IniWrite, %appssecont2%, %CLAVEaini%, Apps, b


appsapp1=%appssecont1%
appsapp2=%appssecont2%




if appsapp2=No establecido
LinkNaveg_univers=0
else
	LinkNaveg_univers=%appsapp2%


if appsapp1=No establecido
FoldExpl_univers=0
else
	FoldExpl_univers=%appsapp1%






setwindowok()


appsseGuiclose:
Gui, appsse:Destroy
Gui conf:-Disabled 

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






contenumb:=1
varcontnumser=1
Loop 20
{
		varcontnumser++
	contenumb.= "|" varcontnumser
}




;lista de los nombres de archivos
GetFonts()



Gui, guistkc:Menu, guistkcmenuth

sty =
(Join|
Norm|
Bold|
Italic|
Strike|
Underline|
)


guistyleon=1




contedls3:=1

varcontnumser=1

Loop 99
{
	
		EnvAdd, varcontnumser, 1
	
	contedls3.= "|" varcontnumser
	
}


contedls4:=1

varcontnumser=1

Loop 39
{
	
		EnvAdd, varcontnumser, 1
	
	contedls4.= "|" varcontnumser
	
}






accdirec2=
(Join|
Diminutos|
Normal|
Grandes|
Muy grandes|
)









Gui, guistkc:Font, Norm
Gui, guistkc:Color ,,%stkcg5%
Gui, guistkc:Font, c0x%stkcg4%
Gui, guistkc:Color ,%stkcg6%


Gui, guistkc:-MinimizeBox  +Hwndguistkc

Gui, guistkc:+ownerconf  ; Make the main window (Gui #1) the owner of the "about box".
Gui conf:+Disabled  ; Disable main window.





Gui, guistkc:Add, CheckBox, x12 y22 w120 h20  vnolistdls Checked%notdls%, Activar lista principal






Gui, guistkc:Add, Text, x3 y52 w67 h20 vstkgv1 center, Letra
Gui, guistkc:Add, ComboBox, x72 y49 w230 h20 hwndguistkccb1 vstkgv2 r30, %Fontlist%
CtlColors.Attach(guistkccb1,stkcg5,stkcg4)
GuiControl, guistkc:Choose, stkgv2, %stkcg1%




Gui, guistkc:Add, Text, x3 y82 w67 h20 vstkgv3 center, Tamaño
Gui, guistkc:Add, DropDownList, x72 y79 w60 h20 vstkgv4  hwndguistkccb10 r30, %contenumb%
CtlColors.Attach(guistkccb10,stkcg5,stkcg4)
GuiControl, guistkc:Choose, stkgv4, %stkcg3%

Gui, guistkc:Add, Text, x170 y82 w60 h20 vstkgv5  , Formato

Gui, guistkc:Add, DropDownList, x222 y79 w80 h20 R30 altsubmit  vstkgv6  hwndguistkccb2 , %sty%
CtlColors.Attach(guistkccb2,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, guistkc:Choose, stkgv6, %stkcg2%
;*************************



Gui, guistkc:Add, Text, x5 y112 w60 h20 vstkgv7 center, Color letra
Gui, guistkc:Add, Edit, x72 y109 w60 h20 vstkgv8  center, %stkcg4%


Gui, guistkc:Add, Text, x142 y112 w90 h20 vstkgv9 center,  Color trasfondo
Gui, guistkc:Add, Edit, x242 y109 w60 h20 vstkgv10  center,%stkcg5%


Gui, guistkc:Add, Text, x3 y142 w69 h20 vstkgv13  , Color ventana
Gui, guistkc:Add, Edit, x72 y139 w60 h20 vstkgv11  center,%stkcg6%










Gui, guistkc:Add, CheckBox, x12 y169 w120 h20  vselleccaccrapid Checked%activaracrap%, Accesos rápidos




Gui, guistkc:Add, Text, x142 y172 w80 h20 center, Tamaño
Gui, guistkc:Add, DropDownList, x222 y169 w80 h20 R20 altsubmit vselleccaccrapid2  hwndguistkccb3 , %accdirec2%
CtlColors.Attach(guistkccb3,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, guistkc:Choose, selleccaccrapid2, %guidimenc%




Gui, guistkc:Add, Text, x12 y202 w110 h20 center, Elementos por fila
Gui, guistkc:Add, DropDownList, x122 y199 w60 h20 R20 altsubmit vselleccaccrapid21  hwndguistkccb4, %contedls3%
CtlColors.Attach(guistkccb4,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, guistkc:Choose, selleccaccrapid21, %elementsperniv%



Gui, guistkc:Add, Text, x182 y203 w60 h20 center ,Filas
Gui, guistkc:Add, DropDownList, x242 y199 w60 h20 R20 altsubmit vselleccaccrapid22  hwndguistkccb5, %contedls4%
CtlColors.Attach(guistkccb5,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, guistkc:Choose, selleccaccrapid22, %nivelesv1%








Gui, guistkc:Add, CheckBox, x12 y230 w120 h20  vttesconguist1 Checked%ttesactiv%, Activar nombres


Gui, guistkc:Add, Text, x3 y263 w67 h20 vttesconguist12  center  , Letra
Gui, guistkc:Add, ComboBox, x72 y260 w230 h20 vttesconguist3 r30 hwndguistkccb6 , %Fontlist%
CtlColors.Attach(guistkccb6,stkcg5,stkcg4)
GuiControl, guistkc:Choose, ttesconguist3, %ttesguifont%




Gui, guistkc:Add, Text, x3 y293 w67 h20 vttesconguist4 center, Tamaño
Gui, guistkc:Add, DropDownList, x72 y290 w60 h20 vttesconguist5   hwndguistkccb11 r30, %contenumb%
CtlColors.Attach(guistkccb11,stkcg5,stkcg4)
GuiControl, guistkc:Choose, ttesconguist5, %zzletrattesp%

Gui, guistkc:Add, Text, x175 y293 w50 h20 vttesconguist6, Formato

Gui, guistkc:Add, DropDownList, x222 y290 w80 h20 R30 altsubmit  vttesconguist7  hwndguistkccb7 r30 , %sty%
CtlColors.Attach(guistkccb7,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, guistkc:Choose, ttesconguist7, %ttesguifontstylepre%
;*************************



Gui, guistkc:Add, Text, x13 y323 w60 h20 vttesconguist8 , Color letra
Gui, guistkc:Add, Edit, x72 y320 w60 h20 vttesconguist9   center, %ttesguicolorfont%


Gui, guistkc:Add, Text, x162 y323 w100 h20 vttesconguist10, Color ventana
Gui, guistkc:Add, Edit, x242 y320 w60 h20 vttesconguist11   center,%ttesguicolor%




















Gui, guistkc:Add, Button, x12 y369 w60 h20 vstkgv21 gstkgv21, Cargar
Gui, guistkc:Add, Button, x82 y369 w60 h20 vstkgv22 gstkgv22, Guardar

Gui, guistkc:Add, Button, x272 y369 w30 h20 vstkgv12 gstkgv12, Ok
; Generated using SmartGUI Creator 4.0
Gui, guistkc:Show, Center h400 w307, %nameofthisscript1% - Estilo





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
	
	
	
	if selleccaccrapid=0
		{
		guicontrol, guistkc:Disable, selleccaccrapid22

	}
	else
	{

			guicontrol, guistkc:Enable, selleccaccrapid22
	}
	
	
	
	
		if nolistdls=0
	{
			guicontrol, guistkc:Disable, stkgv2
		guicontrol, guistkc:Disable, stkgv4
		guicontrol, guistkc:Disable, stkgv6

		
		
	}
	else
	{

			guicontrol, guistkc:Enable, stkgv2
		guicontrol, guistkc:Enable, stkgv4
		guicontrol, guistkc:Enable, stkgv6

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
Gui, 	guistkc:-Disabled
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




	vgrabdat=0
loop 6
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
Gui conf:-Disabled  ; Disable main window.
Gui guistkc:Destroy  ; Disable main window.
guistyleon=0

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





if nolistdls=0
{
if selleccaccrapid=0
	selleccaccrapid=1

}




if selleccaccrapid2=1
{
	if selleccaccrapid21<3
{
selleccaccrapid21=3
nolistdls=0
}

}

;ttttttttttttttttttttttttttt
if selleccaccrapid2=2
{
	if selleccaccrapid21<2
{
selleccaccrapid21=2
nolistdls=0
}
}


if selleccaccrapid2=2
{
	if selleccaccrapid21<3
{
nolistdls=0
}
}
;ttttttttttttttttttttttttttt




if selleccaccrapid2=3
{
	if selleccaccrapid21<2
{

nolistdls=0
}
}

if selleccaccrapid2=3
{
	if selleccaccrapid21<3
{
nolistdls=0
}
}
;ttttttttttttttttttttttttttt






if selleccaccrapid2=4
{
	if selleccaccrapid21<2
{
nolistdls=0

}
}







IniWrite, %stkgv2%, %CLAVEaini%, STKG,1
IniWrite, %stkgv6%, %CLAVEaini%, STKG,2

IniWrite, %stkgv4%, %CLAVEaini%, STKG,3
IniWrite, %stkgv8%, %CLAVEaini%, STKG,4
IniWrite, %stkgv10%, %CLAVEaini%, STKG,5

IniWrite, %stkgv11%, %CLAVEaini%, STKG,6


IniWrite, %selleccaccrapid%, %CLAVEaini%, STKG,7
IniWrite, %selleccaccrapid2%, %CLAVEaini%, STKG,8
IniWrite, %nolistdls%, %CLAVEaini%, STKG,9


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

IniWrite, %selleccaccrapid21%, %CLAVEaini%, STKG,16
IniWrite, %selleccaccrapid22%, %CLAVEaini%, STKG,17

goto reloadcomplex

return




vendiini:
    run,  %dlsexeval% "%CLAVEDLs%\DLsa.ini", , Max UseErrorLevel
if (ErrorLevel = "ERROR")
 MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return


vendiini2:

    run,  %dlsexeval% "%CLAVEDLs%\DLsr.ini", , Max UseErrorLevel
if (ErrorLevel = "ERROR")
 MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return






okdef:
MsgBox 0x40024, %nameofthisscript1% - Verificación,¿Desea continuar?
IfMsgBox Yes, {

FileDelete, %CLAVEaini%
Reload


          } 
              Else IfMsgBox No, {
              Return
              }


Return



ok1:

Gui, conf:Submit, NoHide



GuiControlGet,  confofselex2,conf:, edivarsetex

GuiControlGet,  confofselex7,1:, DLsaDLs

GuiControlGet,  confofselex8,conf:,tiempotextoexp

valorsavestkm6:=confofselex2*1000

if valorsavestkm6 <=9000
   {
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El valor es demasiado bajo., 2
return
}






IniWrite, %confofselex7%, %CLAVEaini%, Go, a
IniWrite, %caja6%, %CLAVEaini%, Go, b
IniWrite, %selecandejecacc%, %CLAVEaini%, Go, c





IniWrite, %usonuev3%, %CLAVEaini%, pcnewres, a
IniWrite, %vaactimer%, %CLAVEaini%, Exit, a

IniWrite, %settt2%, %CLAVEaini%, Timer,a
IniWrite, %valorsavestkm6%, %CLAVEaini%, Timer,b
IniWrite, %confofselex8%, %CLAVEaini%, Timer,c

if hotk1=
    hotk1=^!}

IniWrite,%hotk1%, %CLAVEaini%, HK, a
IniWrite,%settthotkey%, %CLAVEaini%, HK, b

IniWrite,%dlsexe%, %CLAVEaini%, DLs, a



Gui, 1:-Disabled
Gui conf:Destroy  ; Destroy the about box.

goto reloadcomplex
return








windwutgui:

windwutguiactive=1

Gui, windwutgui:+ownerconf  ; Make the main window (Gui #1) the owner of the "about box".
Gui conf:+Disabled  ; Disable main window.


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












































;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey---Comandos  Hotkey--Comandos  Hotkey
;Comandos por medio de Hotkey
aplichk:
;la ventana esta activa
varguiaplichkgui=1



Gui conf:+Disabled  ; Disable main window.
Gui, aplichkgui:+ownerconf
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
Gui conf:-Disabled  ; Disable main window.

goto ok1
return






aplichkguiGuiclose:
;la ventana esta activa
varguiaplichkgui=0

Gui, aplichkgui:Destroy
Gui conf:-Disabled  ; Disable main window.
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






















































































































;********************************************************************************
window1:


startguissapp=1


Gui, p3:+ownerconf ; Make the main window (Gui #1) the owner of the "about box".
Gui conf:+Disabled  ; Disable main window.
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
	
	
	Gui, p3:Add, CheckBox, x%convalprimguiautm5%    y%convalprimguiautm1%   w80 h20   v%convalprimguiautm2%    Checked%convalprimguiautm4%,    Close-Satrt
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
Gui, conf:-Disabled
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
Gui, conf:-Disabled
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
Gui, conf:-Disabled
Gui p3:Destroy  ; Destroy the about box.
   
   goto window1
Return


} 

Else IfMsgBox No, {
   
Gui, p3:-Disabled
} 
Return











;********************************************************************************
window2:


startguissapp=1


Gui, proaac:+ownerconf ; Make the main window (Gui #1) the owner of the "about box".
Gui conf:+Disabled  ; Disable main window.
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
Gui, conf:-Disabled
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
Gui, conf:-Disabled
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
Gui, conf:-Disabled
Gui proaac:Destroy 
   
   goto window2
Return


} 

Else IfMsgBox No, {
   
Gui, proaac:-Disabled
} 
Return













copiax1:

Gui, p3:Submit, NoHide
acopiavalo := "Seaa"copiax1



acopiavalo2=% %acopiavalo%


;limpiar variables
coexcopi1=
coexcopi12=

numevar=0
Loop, Parse, acopiavalo2, |,
{
EnvAdd, numevar,1

listvarieax:="coexcopi"numevar

%listvarieax%=%A_LoopField%
}


clipboard= %coexcopi1%
setwindowcopy()
return




copiax2:

Gui, win2:Submit, NoHide
acopiavalo := "Seaa"copiax2



acopiavalo2=% %acopiavalo%


;limpiar variables
coexcopi1=
coexcopi12=

numevar=0
Loop, Parse, acopiavalo2, |,
{
EnvAdd, numevar,1

listvarieax:="coexcopi"numevar

%listvarieax%=%A_LoopField%
}


clipboard= %coexcopi1%
setwindowcopy()
return







































































































;Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********
;Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********Functions-INICIO********

























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
goto reloadcomplex
return
;Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Modifica-Indivd********Nucle




;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********
;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS*****



















;Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********
;Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********




















































































































reloadcomplex:


IniWrite, 1, %CLAVEaini%, NotApps, a


;No APPS
varsaltmencont=1

goto  exinum1

return




reloadcomplex2:


IniWrite, 1, %CLAVEaini%, NotApps, a


;No APPS
varsaltmencont=2

goto  exinum1

return







exitopc:
Gui, 1:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%

;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(sizguiH,sizguiW,gui_position,"1")
gui_position=%guipositionmod%

Gui, 1:Show, %gui_position%


if cajxit=1
goto, gclq1
else
goto, exinum1

gclq1:

{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Se desea proceder?
IfMsgBox Yes, {
goto, exinum1
} 
Else IfMsgBox No, {
Return
}
}

Return






















GuiClose:
te1:


;detener TT especiales
SetTimer, stopguinam2, Off
Gui, guinam:Destroy
laguiaparec=0
;detener TT especiales


if  ventanaprincact=0
goto nretor







if vaactimerselezex=1
{ 
Settimer, te1, off
} 



;si la gui esta minimizada
Gui, 1:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%


Gui, 1:Hide





;ventanaactiva
ventanaprincact=0


return






accionhotke:
nretor:




if  ventanaprincact=1
goto GuiClose





if vaactimerselezex=1
{ 
Settimer, te1, %catiadistim%
} 

Gui, 1:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%

;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(sizguiH,sizguiW,gui_position,"1")
gui_position=%guipositionmod%

Gui, 1:Show, %gui_position%

;ventanaactiva
ventanaprincact=1


return

















exinum1:

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

IniWrite, % arrcolors_W, %CLAVEaini%, STKG,18
;colores personalizados



}







Gui, 1:Show


 WinGetPos, gui_x, gui_y, , , ahk_id %gui_id%
 

 
IniWrite, x%gui_x% y%gui_y%, %CLAVEaini%, window position, gui_position
IniWrite, %usonuev3%, %CLAVEaini%, pcnewres, a
Gui, 1:Submit, NoHide
IniWrite, %DLsaDLs%, %CLAVEaini%, Go, a


if vatoflooconfig=1
{
	
WinGetPos, gui_x, gui_y,,, ahk_id %seconf%
gui_position2=x%gui_x% y%gui_y%
IniWrite, %gui_position2%, %CLAVEaini%, window position, gui_position2

	
}






;No APPS
if varsaltmencont=1
{
reload
return
}

;No APPS
if varsaltmencont=2
{
ExitApp
return
}


;**********************************************************


;StartStartApps


if StartStartApps=1
{


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















ExitApp

return












winabout1:


Gui, winabout:+ownerconf
Gui conf:+Disabled  



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


Gui, winabout:Add, Text, gaccchtpps8 vaccchtpps8  x5 y355 w416 h20 center, GetSysImgLstIcon retrieve the associated icon by Just me

Gui, winabout:Add, Text, gaccchtpps9 vaccchtpps9 x5 y375 w416 h20 center, ChooseColor display the standard Windows color picker dialog by rbrtryn 


Gui, winabout:Add, Text, gaccchtpps11 vaccchtpps11 x5 y395 w416 h20 center, Colorette - Simple Color Picker (v 1.01) by sumon





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


















































