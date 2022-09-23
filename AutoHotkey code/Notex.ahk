



;Changes a property in the compiled executable's version information.




;@Ahk2Exe-SetFileVersion 0.3@
;@Ahk2Exe-SetProductVersion 0.3@
;@Ahk2Exe-SetVersion 0.3@


;@Ahk2Exe-SetInternalName Notex
;@Ahk2Exe-SetName Notex
;@Ahk2Exe-SetOrigFilename Notex
;@Ahk2Exe-SetProductName Notex

;@Ahk2Exe-SetDescription Notas simples.


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

CoordMode,Mouse,Screen


;********************************************************************************
;para los colores en diferentes controles de la gui
#Include %A_ScriptDir%\Data\Class_CtlColors.ahk
;colores personalizados
#Include %A_ScriptDir%\Data\ChooseColor.ahk
;NAMENAMENAME
;___________________________________________
nameofthisscript1:="Notex"
;___________________________________________
;VVVVVVVVVVversión
Veract1:="0.3@"
;VVVVVVVVVVV

; para las notas puesto que UTF-8 es mas moderno
FileEncoding, UTF-8



;Guardar y reiniciar
Henaccrein=0



;********************************************************************************
;para recuperar datos de las DropDownList

CLAVEaini=%A_ScriptDir%\Notex.ini
;**********************************************************
;si no existe el archivo se crea
if !FileExist(CLAVEaini)
{

MsgBox 0x40041, RGUriel - %nameofthisscript1%, `*Spanish`: `n`nEste programa no tiene garantía`, úselo bajo su propio riesgo. No me responsabilizo ante la perdida de datos o el mal uso del mismo. `n`nLicencia del script escrito por RGUriel`, exceptuando el código de terceros especificado en el mismo: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007`n`n`*English`:`n`nThis program has no guarantee`, use it at your own risk. I do not take responsibility for the loss of data or the misuse of it.`n`nScript license written by RGUriel`, except for the third-party code specified in the same: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007
IfMsgBox Cancel, {
exitapp
}



IniWrite, 0, %CLAVEaini%, otros, a
IniWrite, Segundos, %CLAVEaini%, otros, b
IniWrite, 30000, %CLAVEaini%, otros, c

IniWrite, 1, %CLAVEaini%, RunB, a
IniWrite, 1, %CLAVEaini%, Go, n


IniWrite, ^!}, %CLAVEaini%, HK, a
IniWrite, 0, %CLAVEaini%, HK, b

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


IniWrite, Ruta no establecida, %CLAVEaini%, Programas, 13

IniWrite, Center, %CLAVEaini%, window position, gui_position
;positionn of gui if is new use in new pc
IniWrite, 700/200, %CLAVEaini%, pcnewres, a
;programas predeterminados


;*********************************************************
;copias de seguridad

IniWrite, 0, %CLAVEaini%, CS, a



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


;Avisos

IniWrite, 1, %CLAVEaini%, Avisos, b
IniWrite, 1, %CLAVEaini%, Avisos, c
IniWrite, 0, %CLAVEaini%, Avisos, d
IniWrite, 1, %CLAVEaini%, Avisos, e
IniWrite, 0, %CLAVEaini%, Avisos, f




}
;*********************************************************

IniRead, guco11, %CLAVEaini%, otros, a
IniRead, guco13, %CLAVEaini%, otros, b
IniRead, tiemenhid1, %CLAVEaini%, otros, c
IniRead, notaseleccion, %CLAVEaini%, Go, n

IniRead, notaseleccion, %CLAVEaini%, Go, n
IniRead, guco12, %CLAVEaini%, RunB, a


IniRead, hotknomprogexe1, %CLAVEaini%, HK, a
IniRead, hotkact, %CLAVEaini%, HK, b



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

Iniread, progest13, %CLAVEaini%, Programas, 13







IniRead, gui_position, %CLAVEaini%, window position, gui_position


;positionn of gui if is new use in new pc
IniRead, pcnewres, %CLAVEaini%, pcnewres, a
;*********************************************************
;copias de seguridad
IniRead, gucoval1, %CLAVEaini%, CS, a

;#################################################################################



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
			winzmodif_guinam=0
}
else
{
	winzmodif_1=1
	
			winzmodif_guinam=0
}


Global usonuev1
Global usonuev2
Global usonuev3
Global pcnewres
Global cambscreenvvpcn1
Global cambscreenvvpcn2
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease




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







    If guco12 = 1
    {
        Gui, +AlwaysOnTop
    }
    else
    {
        Gui, -AlwaysOnTop
    }







;_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos

global gmensaviso2
global gmensaviso3
global gmensaviso4
global gmensaviso5
global gmensaviso6
;Gui lista
Gui, gec:+AlwaysOnTop -Caption +ToolWindow
Gui, gec:Add, Picture, x0 y0 w100 h50 , %A_ScriptDir%\Data\Gui\window1.png


;_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos_____Avisos














;#################################################################################
;Copia de seguridad de nw

ClaveCose=%A_ScriptDir%\Data\CS
if !FileExist(ClaveCose)
FileCreateDir, %ClaveCose%


If gucoval1=20
   gucoval1=0


;*********************************************************Timer

if guco11=1
{ 
SetTimer, tdpta1, %tiemenhid1%
} 




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




;programas
if !FileExist(progest13)
{
   

   notepad:="Ruta no establecida"
}
else
   {
notepad:=progest13
}

;#################################################################################
;Cambio de seccion "GUI"
;#################################################################################




poboauc8=x162 y359 w20 h20

poboauc9=x182 y359 w20 h20

poboauc10=x202 y359 w20 h20

poboauc11=x222 y359 w20 h20

poboauc12=x242 y359 w20 h20

poboauc13=x262 y359 w20 h20


;Tray---------------------------------------



Menu, Tray, NoStandard
Menu, Tray, Add, Mostrar ventana, nretor 
Menu, Tray, Add, Reiniciar, contexreinic
Menu, Tray, Add, Exit, exitestand1
Menu, Tray, Default, Mostrar ventana

;Tray---------------------------------------


Menu,  direct1, Add, Directorio de %nameofthisscript1%, imageab4
Menu, direct1, Add, Reiniciar, contexreinic
Menu,  direct1, Add, Exit, exitestand1




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

Menu, guistkcmenunorm, Add, Muestra previa, Probarguiexp


;otros menus de otras ventanas-;otros menus de otras ventanas

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




if hotkact=1
{
Hotkey, %hotknomprogexe1% ,accionhotke
}
Gui, +Hwndgui_id -MinimizeBox

Gui, Color ,,%stkcg5%
Gui, Font, S%stkcg3% c0x%stkcg4% %stkcgfin2%, %stkcg1%
Gui, Color ,%stkcg6%


;#################################################################################
;seccion GUI
;#################################################################################


;#ttttt-ttttttttttttttt-tttttttttttttttttt-ttttttttttttttt-tttttttttttttttt-tttttttttttttt-ttttttttt-tttttttttttt




Gui, Add, Edit, x5 y5 w285 h345  gditmwacsett vMyEdit1
noyasegseleccac=%CLAVENots%\Note%notaseleccion%.txt
FileRead, settext, %noyasegseleccac% 
GuiControl,1:, MyEdit1, %settext%



;**************************************************************************************************************************************************************
;seccion de botones auxiliares
;********************************************************************************



Gui, Add, DropDownList, x5 y359 w147 h20 R30 altsubmit  vnotss1 gnotss1  hwndCBBID1, %NOTs%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;para recuperar datos de las DropDownList
GuiControl, Choose, notss1, %notaseleccion%




Gui, Add, Picture, %poboauc9% 0x200 vreloadefal greloadefal2 , %A_ScriptDir%\Data\Gui\notxt1.png
reloadefal_TT := "Borrar archivo."


;********************************************************************************
Gui, Add, Picture, %poboauc10% 0x200 vidbonu9 gxux14, %A_ScriptDir%\Data\Gui\gettxt1.png
idbonu9_TT := "Recargar directamente del archivo."

;********************************************************************************
Gui, Add, Picture, %poboauc11% 0x200 vidbonu6 gxux9, %A_ScriptDir%\Data\Gui\search1.png
idbonu6_TT := "Abrir en Notepad"
;********************************************************************************
Gui, Add, Picture, %poboauc12% 0x200  vidbonu7  gxux6, %A_ScriptDir%\Data\Gui\loadedit1.png
idbonu7_TT := "Recargar datos en memoria"

;********************************************************************************
Gui, Add, Picture, %poboauc13% 0x200  vidbonu8 gxux5, %A_ScriptDir%\Data\Gui\saveedit1.png
idbonu8_TT := "Guardar"




Gui, Add, Picture, x158 y359 w20 h20 0x200  vsett1 gsett1, %A_ScriptDir%\Data\Gui\Congf1.png




















;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(385,295,gui_position,"1")
gui_position=%guipositionmod%
Gui, 1:Show, %gui_position%  h385 w295, %nameofthisscript1%



;******
;la ventana activa o desactivada
ventaprinact=1

; Generated using SmartGUI Creator 4.0

;seccion acciones o variables nesesarias paa la gui
;********************************************************************************

;********************************************************************************
;positionn of gui if is new use in new pc



;para los tooltip 
OnMessage(0x200, "WM_MOUSEMOVE")

;para lo de guardar posicion de la ventana



;*********************************************************Timer



;"fin del tiempo se oculta SKM"

Return

;para los tooltip 
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
    SetTimer, DisplayToolTip, Off
    ToolTip % %CurrControl%_TT  ; The leading percent sign tell it to use an expression.
    SetTimer, RemoveToolTip, 5000 ;duracion del  despliege
    return

    RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip
    return
}








editsearch:
ditmwacsett:
if guco11=1
{
SetTimer, tdpta1, off
SetTimer, extimmdeditmw, 150000
}
return


extimmdeditmw:
goto, tdpta1
return









reloadefal2:


MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Se desea proceder?
IfMsgBox Yes, {
	Gui, 1:+Disabled  
FileDelete, %noyasegseleccac%
if ErrorLevel
{ 
    
MsgBox 0x40030, %nameofthisscript1% - Advertencia, Error al borrar: %noyasegseleccac%,

}





FileCopy, %A_ScriptDir%\docs\0.3, %noyasegseleccac%, [, 1]
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






;menucontextual
;#################################################################################
;#################################################################################
GuiContextMenu:

Menu, direct1, Show, %A_GuiX%, %A_GuiY%

return

;menucontextual
imageab4:
Run, explorer.exe %A_ScriptDir%, ,  UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

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


















accionhotke:
nretor:

if ventaprinact=0
{
Gui, 1:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(393,295,gui_position,"1")
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

return



;#################################################################################
;Cambio de seccion "Acciones correspondientes a los botones comunes"
;#################################################################################



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










;#################################################################################
;seccion de botones auxiliares
;#################################################################################


sett1:

;gui activa
guizctivAb=1


if guco11=1
   { 
SetTimer, tdpta1, Off
} 



If guco12 = 1
    {
        Gui, 1:-AlwaysOnTop
    }


tiemenhid2:=tiemenhid1/1000
SetFormat, float, 0
tiemenhid2 += 0

Gui, Ab:+owner1  ; Make the main window (Gui #1) the owner of the "about box".
Gui +Disabled  ; Disable main window.
Gui, Ab:-MinimizeBox


Gui, Ab:Font, Norm
Gui, Ab:Color ,,%stkcg5%
Gui, Ab:Font, c0x%stkcg4%
Gui, Ab:Color ,%stkcg6%

Gui, Ab:Add, Button, x8 y9 w95 h20 vrecnotes grecnotes, Nombres de notas




Gui, Ab:Add, Button, x115  y9 w95 h20 vstkust gstkust, Estilo

Gui, Ab:Add, Button, x220  y9 w95 h20 vwindwutgui gwindwutgui , Avisos


Gui, Ab: Add, CheckBox, x12 y39 w60 h30 vcaja6 Checked%guco12%, OnTop



Gui, Ab:Add, CheckBox, x82 y39 w60 h30 vcaja5  Checked%guco11%, Ocultar

Gui, Ab:Add, Edit, x152 y44 w70 h20 gsegundosasttstk vlortimeedit r1 number center, %tiemenhid2%

Gui, Ab:Add, Text, x230 y47  w150 h20 vcaja7 , %guco13%


Gui, Ab:Add, Text, x12 y82 w60 h20 , Notepad
Gui, Ab:Add, Edit, x72 y79 w240 h20 vprogns13, Notepad
GuiControl,Ab:, progns13, %progest13%




Gui, Ab:Add, CheckBox, x12 y180 w100 h20 vhotkactcont  Checked%hotkact%, Activar Hotkey
Gui, Ab:Add, Hotkey, x112 y180 w150 h20 vhotk1, %hotknomprogexe1%






Gui, Ab:Add, Button, x12 y210 w50 h20 gsetdd, Default

Gui, Ab:Add, Button, x140 y210 w50 h20 gabout, About


Gui, Ab:Add, Button, x268 y210 w50 h20 gacc1, Aceptar

Gui, Ab:Show, Center h240 w326, %nameofthisscript1% -  Configuración


Loop
{
	
	Gui, Ab:Submit, NoHide
	if hotkactcont=1
		GuiControl,Ab:Enable,hotk1
	else
				GuiControl,Ab:Disable,hotk1
	
	if guizctivAb=0
		break
	
	sleep 1500
}



return





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






Gui, guistkc:Menu, guistkcmenuth


contenumb:=1
varcontnumser=1
Loop 20
{
		varcontnumser++
	contenumb.= "|" varcontnumser
}





sty =
(Join|
Norm|
Bold|
Italic|
Strike|
Underline|
)

vsendconfg=0


Gui, guistkc:Font, Norm
Gui, guistkc:Color ,,%stkcg5%
Gui, guistkc:Font, c0x%stkcg4%
Gui, guistkc:Color ,%stkcg6%


Gui, guistkc:-MinimizeBox  +Hwndguistkc

Gui, guistkc:+ownerAb  ; Make the main window (Gui #1) the owner of the "about box".
Gui Ab:+Disabled  ; Disable main window.


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



;Guardar y reiniciar
Henaccrein=1
goto exitestand1
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


IniWrite, %avisocontr2%, %CLAVEaini%, Avisos, b
IniWrite, %avisocontr3%, %CLAVEaini%, Avisos, c
IniWrite, %avisocontr4%, %CLAVEaini%, Avisos, d
IniWrite, %avisocontr5%, %CLAVEaini%, Avisos, e
IniWrite, %avisocontr6%, %CLAVEaini%, Avisos, f


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














































AbGuiClose:
AbGuiEscape:

If guco12 = 1
    {
        Gui, 1:+AlwaysOnTop
    }


if guco11=1
   { 
SetTimer, tdpta1, %tiemenhid1%  
} 

vsendconfg=1

;gui activa
guizctivAb=0

Gui, 1:-Disabled  ; Re-enable the main window (must be done prior to the next step).
Gui Ab:Destroy  ; Destroy the about box.



return



segundosasttstk:

Loop 30 {
guicontrolget, certv,Ab:,lortimeedit
    
    
guicontrol, Ab:,caja7, Segundos
    
    if  certv>59
{
    minutoscard3:=certv/60
    
              SetFormat, float, 0.2
minutoscard3 += 0

guicontrol, Ab:,caja7, %minutoscard3% Minutos
}


if  certv>3599
{
    minutoscard2:=certv/3600
    
SetFormat, float, 0.2
minutoscard2 += 0
    
guicontrol, Ab:,caja7, %minutoscard2% Horas
}

sleep 500

if  vsendconfg=1
        break

}
Return












acc1: 





GuiControlGet, valorsavestkm1 ,Ab:,caja6
GuiControlGet, valorsavestkm5 ,Ab:,caja5
GuiControlGet, valorsavestkm6 ,Ab:, caja7
GuiControlGet, valorsavestkm7 ,Ab:,lortimeedit



valorsavestkm8:=valorsavestkm7*1000


if valorsavestkm8 <=13000
   {
MsgBox 0x40030, %nameofthisscript1% - Advertencia,  El valor es demasiado bajo., 2
return
}

Gui, Ab:Submit, NoHide


IniWrite, %valorsavestkm1%, %CLAVEaini%, RunB, a
IniWrite, %valorsavestkm5%, %CLAVEaini%, otros, a
IniWrite, %valorsavestkm6%, %CLAVEaini%, otros, b
IniWrite, %valorsavestkm8%, %CLAVEaini%, otros, c
IniWrite, %progns13%, %CLAVEaini%, Programas, 13


if hotk1=
    hotk1=^!}

IniWrite,%hotk1%, %CLAVEaini%, HK, a


contexreinic:

;Guardar y reiniciar
Henaccrein=1
goto exitestand1

return



;




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




;Guardar y reiniciar
Henaccrein=1
goto exitestand1

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



;Guardar y reiniciar
Henaccrein=1
goto exitestand1



} 
Else IfMsgBox No, {
Return
}
}




return








































































































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














;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********N

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





;NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********NucleoDLS********N
























































































about:



Gui, winabout:+ownerAb  
Gui Ab:+Disabled  



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



Gui, winabout:Add, Text, gaccchtpps9 vaccchtpps9 x5 y355 w416 h20 center, ChooseColor display the standard Windows color picker dialog by rbrtryn 


Gui, winabout:Add, Text, gaccchtpps11 vaccchtpps11  x5 y375 w416 h20 center, Colorette - Simple Color Picker (v 1.01) by sumon





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
MsgBox 0x40040, %nameofthisscript1% - Información, Clipboard!, 1
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

;si la gui esta minimizada
Gui, 1:Show


;la ventana activa o desactivada
ventaprinact=0


Gui, 1:Submit, NoHide
if guco11=1
   { 
SetTimer, tdpta1, Off  ; Desactivar el contador
} 

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








SetTimer, extimmdeditmw, off


WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%

Gui, 1:hide

return





































exitestand1:
Gui, 1:Show

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
gui_position=x%gui_x% y%gui_y%
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(393,295,gui_position,"1")
gui_position=%guipositionmod%
Gui, 1:Show, %gui_position%








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



















Gui, 1:+Disabled


Gui, 1:Submit, NoHide

WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
IniWrite, x%gui_x% y%gui_y%, %CLAVEaini%, window position, gui_position

;positionn of gui if is new use in new pc
IniWrite, %usonuev3%, %CLAVEaini%, pcnewres, a

IniWrite, %notss1%, %CLAVEaini%, Go, n







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



;Guardar y reiniciar
if  Henaccrein=0
ExitApp
else
	Reload
return

















