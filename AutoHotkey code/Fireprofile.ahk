
;Changes a property in the compiled executable's version information.





;@Ahk2Exe-SetFileVersion 0.3L
;@Ahk2Exe-SetProductVersion 0.3L
;@Ahk2Exe-SetVersion 0.3L


;@Ahk2Exe-SetInternalName Fireprofile
;@Ahk2Exe-SetName Fireprofile
;@Ahk2Exe-SetOrigFilename Fireprofile
;@Ahk2Exe-SetProductName Fireprofile

;@Ahk2Exe-SetDescription Organizador de perfiles para Mozilla Firefox.


;____Not CHANGE
;@Ahk2Exe-SetLanguage 0x0409
;@Ahk2Exe-SetCopyright Copyright © 2022 RGUriel


;Changes a property in the compiled executable's version information.




#NoEnv
#NoTrayIcon
;sin 10mlseg entre linea de codigo
SetBatchLines -1 
#SingleInstance off
SetWorkingDir %A_ScriptDir%
#Include %A_ScriptDir%\Data\Class_CtlColors.ahk
;colores personalizados
#Include %A_ScriptDir%\Data\ChooseColor.ahk
CoordMode,Mouse,Screen
;NAMENAMENAME
;___________________________________________
nameofthisscript1:="Fireprofile"
;___________________________________________
;VVVVVVVVVVversión
Veract1:="0.3L"
;VVVVVVVVVVV



;Guardar y reiniciar
Henaccrein=0

CLAVEaini=%A_ScriptDir%\%nameofthisscript1%.ini
;**********************************************************
;si no existe el archivo se crea
if !FileExist(CLAVEaini)
{
	
	
	MsgBox 0x40041, RGUriel - %nameofthisscript1%, `*Spanish`: `n`nEste programa no tiene garantía`, úselo bajo su propio riesgo. No me responsabilizo ante la perdida de datos o el mal uso del mismo. `n`nLicencia del script escrito por RGUriel`, exceptuando el código de terceros especificado en el mismo: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007`n`n`*English`:`n`nThis program has no guarantee`, use it at your own risk. I do not take responsibility for the loss of data or the misuse of it.`n`nScript license written by RGUriel`, except for the third-party code specified in the same: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007
IfMsgBox Cancel, {
exitapp
}

	
	
	

IniWrite, Center, %CLAVEaini%, window position, gui_position
;positionn of gui if is new use in new pc
IniWrite, 700/200, %CLAVEaini%, pcnewres, a


IniWrite, Nulo, %CLAVEaini%, Sys, 1
IniWrite, %A_AppData%\UST, %CLAVEaini%, Sys, 2
IniWrite, 1, %CLAVEaini%, Sys, 3
IniWrite, %A_Desktop%, %CLAVEaini%, Sys, 4
IniWrite, %A_Desktop%, %CLAVEaini%, Sys, 5
IniWrite, 1, %CLAVEaini%, Sys, 6

IniWrite, C:\Software\Navegadores\FirefoxClase, %CLAVEaini%, FirefoxR, 1
IniWrite, Firefox 2, %CLAVEaini%, FirefoxR, 2
IniWrite, Firefox 3, %CLAVEaini%, FirefoxR, 3
IniWrite, Firefox 4, %CLAVEaini%, FirefoxR, 4
IniWrite, Firefox 5, %CLAVEaini%, FirefoxR, 5
IniWrite, Firefox 6, %CLAVEaini%, FirefoxR, 6
IniWrite, Firefox 7, %CLAVEaini%, FirefoxR, 7
IniWrite, Firefox 8, %CLAVEaini%, FirefoxR, 8
IniWrite, Firefox 9, %CLAVEaini%, FirefoxR, 9
IniWrite, Firefox 10, %CLAVEaini%, FirefoxR, 10


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



}

IniRead, gui_position, %CLAVEaini%, window position, gui_position
;positionn of gui if is new use in new pc
IniRead, pcnewres, %CLAVEaini%, pcnewres, a

iniRead, Firefoxceroval, %CLAVEaini%, Sys, 1
iniRead, FolderUSTval, %CLAVEaini%, Sys, 2
iniRead, Rutasparacopval, %CLAVEaini%, Sys, 3
iniRead, rutaseguridadval, %CLAVEaini%, Sys, 4
iniRead, Rutacentralval, %CLAVEaini%, Sys, 5
iniRead, ddldataposit, %CLAVEaini%, Sys, 6

iniRead, rutafirefval1, %CLAVEaini%, FirefoxR, 1
iniRead, rutafirefval2, %CLAVEaini%, FirefoxR, 2
iniRead, rutafirefval3, %CLAVEaini%, FirefoxR, 3
iniRead, rutafirefval4, %CLAVEaini%, FirefoxR, 4
iniRead, rutafirefval5, %CLAVEaini%, FirefoxR, 5
iniRead, rutafirefval6, %CLAVEaini%, FirefoxR, 6
iniRead, rutafirefval7, %CLAVEaini%, FirefoxR, 7
iniRead, rutafirefval8, %CLAVEaini%, FirefoxR, 8
iniRead, rutafirefval9, %CLAVEaini%, FirefoxR, 9
iniRead, rutafirefval10, %CLAVEaini%, FirefoxR, 10




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


 ;;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
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
    
    
    
     ; Ventana sin registro de cierre anterior 
    winzmodif_gec=0
		winzmodif_guinam=0
}
else
{
	winzmodif_1=1
    
    
    
     ; Ventana sin registro de cierre anterior 
    winzmodif_gec=0
		winzmodif_guinam=0
}


Global usonuev1
Global usonuev2
Global usonuev3
Global pcnewres
Global cambscreenvvpcn1
Global cambscreenvvpcn2
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease


;*********************************************************






;-----------Firefox a mover
if Firefoxceroval=Nulo
  {
  guco11=0
nombre1= Establecer configuración
goto, conaccg2
               }
;;;________________________________________________________

;;;________________________________________________________

if  !FileExist(FolderUSTval)
    {
MsgBox 0x40024, %nameofthisscript1% - Verificación,El folder UST no existe ¿Desea iniciar la copia?
IfMsgBox Yes, {
            
FileCreateDir, %FolderUSTval%

goto, conaccg
          } 
              Else IfMsgBox No, {
                
                guco11=0
                nombre1=No UST
              goto, conaccg2
              }
}
conaccg:

CLAVEapp=%FolderUSTval%\App
if !FileExist(CLAVEapp)
      { 
FileCopyDir, %Firefoxceroval%\App, %CLAVEapp%,1
}	

CLAVEOther=%FolderUSTval%\Other

if !FileExist(CLAVEOther)
	      { 
FileCopyDir, %Firefoxceroval%\Other, %CLAVEOther%,1
}	

CLAVEFP=%FolderUSTval%\FirefoxPortable.exe

if !FileExist(CLAVEFP)
	      { 
FileCopy, %Firefoxceroval%\FirefoxPortable.exe, %CLAVEFP%,1
}	


CLAVEhp=%FolderUSTval%\help.html

if !FileExist(CLAVEhp)
		      { 
FileCopy, %Firefoxceroval%\help.html, %CLAVEhp%,1
}	

CLAVEainif2=%FolderUSTval%\Firefox Get.ini


ClaveDataUST:=FolderUSTval  "\Data"






;------------------------------------------------------------------------------------MMMMMMMMMMMMMMMMMMMMMMMMM
if !FileExist(CLAVEainif2)
{
Gui, 1:Submit, NoHide
IniWrite, 1, %CLAVEainif2%, F, a
guco11=1
}
else
{
IniRead, guco11, %CLAVEainif2%, F, a
}

If guco11=1
    {
nombre1=Ninguno
}


If guco11=2
    {
SetFirefox2=%rutafirefval1%
SplitPath, SetFirefox2, nombre1
}

If guco11=3
    {
SetFirefox2=%rutafirefval2%
SplitPath, SetFirefox2, nombre1
}

If guco11=4
    {
SetFirefox2=%rutafirefval3%
SplitPath, SetFirefox2, nombre1
}

If guco11=5
    {
SetFirefox2=%rutafirefval4%
SplitPath, SetFirefox2, nombre1
}
If guco11=6
    {
SetFirefox2=%rutafirefval5%
SplitPath, SetFirefox2, nombre1
}
If guco11=7
    {
SetFirefox2=%rutafirefval6%
SplitPath, SetFirefox2, nombre1
}
If guco11=8
    {
SetFirefox2=%rutafirefval7%
SplitPath, SetFirefox2, nombre1
}
If guco11=9
    {
SetFirefox2=%rutafirefval8%
SplitPath, SetFirefox2, nombre1
}
If guco11=10
    {
SetFirefox2=%rutafirefval9%
SplitPath, SetFirefox2, nombre1
}
If guco11=11
    {
SetFirefox2=%rutafirefval10%
SplitPath, SetFirefox2, nombre1
}

conaccg2:






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




SplitPath, rutafirefval1, vanidls1
SplitPath, rutafirefval2, vanidls2
SplitPath, rutafirefval3, vanidls3
SplitPath, rutafirefval4, vanidls4
SplitPath, rutafirefval5, vanidls5
SplitPath, rutafirefval6, vanidls6
SplitPath, rutafirefval7, vanidls7
SplitPath, rutafirefval8, vanidls8
SplitPath, rutafirefval9, vanidls9
SplitPath, rutafirefval10, vanidls10


Menu, menufix1, Add, Iniciar Firefox,Cacc2
Menu, menufix1, Add, Guardar como nuevo perfil, Cacc14
Menu, menufix1, Add,
Menu, menufix1, Add, Directorio temporal, Cacc3
Menu, menufix1, Add, Directorio origen, Cacc6
Menu, menufix1, Add,
Menu, menufix1, Add, Actualizar Firefox 0, Cacc13
Menu, menufix1, Add, Eliminar directorio temporal y Salir, Cacc4
Menu, menufix1, Add,
Menu, menufix1, Add, Cerrar Firefox, Cacc11
Menu, menufix1, Add, Terminar procesos de Firefox, Cacc9
Menu, menufix1, Add,
Menu, menufix1, Add,Configuración, Cacc12
Menu, menufix1, Add, Reiniciar, contexreinic
Menu, menufix1, Add, Exit, GuiClose








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




Firefox=
(Join|
Ninguno|
%vanidls1%|
%vanidls2%|
%vanidls3%|
%vanidls4%|
%vanidls5%|
%vanidls6%|
%vanidls7%|
%vanidls8%|
%vanidls9%|
%vanidls10%|
)






;gui utilitarias
;#################################################################################
;Gui lista
Gui, gec:+AlwaysOnTop -Caption -MinimizeBox -SysMenu
Gui, gec:Add, Picture, x0 y0 w100 h50 , %A_ScriptDir%\Data\window1.png



Gui, Font, S9 c0x%stkcg4% %stkcgfin2%, %stkcg1%
Gui, Add, Button, vtollee2 gCacc1 x227 y9 w150 h20,  Establecer perfil

Gui, Add, Button, vtollee3 gCacc5 x227 y59 w150 h20 , Recuperar perfil





Gui, Color ,,%stkcg5%
Gui, Font, S%stkcg3% c0x%stkcg4% %stkcgfin2%, %stkcg1%
Gui, Color ,%stkcg6%



Gui, Add, DropDownList, x12 y9 w210 h20 R30 altsubmit vidl1 hwndCBBID1, %Firefox%
GuiControl, Choose, idl1, %ddldataposit%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
;tooltip
Gui, Add, Text, x12 y59 w210 h30 r1 vMyEdit1 center,




GuiControl,, MyEdit1, %nombre1%










if nombre1=No UST
{
    GuiControl, 1:disable, idl1
    GuiControl, 1:disable, tollee2
     GuiControl, 1:disable, tollee3
    
contves1:=nombre1
}
else
if Firefoxceroval=Nulo
{
 GuiControl, 1:disable, idl1
        GuiControl, 1:disable, tollee2
     GuiControl, 1:disable, tollee3
    
    
contves1:=nombre1
}
else
    contves1:="Listo"



    Gui, Add, Text, x10 y103 w365 h30 center vguiinfouser, %contves1%


; Generated using SmartGUI Creator 4.0



;********************************************************************************
;positionn of gui if is new use in new pc

;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(133,385,gui_position,"1")
gui_position=%guipositionmod%
				
Gui, Show, %gui_position% h143 w385, %nameofthisscript1%


;***************























Gui, +Hwndgui_id

Return












;menucontextual

GuiContextMenu:
;desactivar cualquier ToolTip que este actualmente desplegado
ToolTip
Menu, menufix1, Show, %A_GuiX%, %A_GuiY%

return































































GuiClose:

Gui, 1:Show
Gui, 1:+Disabled

Datafoldust:=FolderUSTval "\Data"

if  FileExist(Datafoldust)
    {
MsgBox 0x40024, %nameofthisscript1% - Verificación,Existe una carpeta Data en UST ¿Se desea proceder?
 IfMsgBox No, {
Gui, 1:-Disabled
Return
}

}



comsecx:






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

IniWrite, % arrcolors_W, %CLAVEaini%, STKG,7
;colores personalizados



}













WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
IniWrite, x%gui_x% y%gui_y%, %CLAVEaini%, window position, gui_position
Gui, 1:Submit, NoHide
IniWrite, %idl1%, %CLAVEaini%, Sys, 6
;positionn of gui if is new use in new pc
IniWrite, %usonuev3%, %CLAVEaini%, pcnewres, a


if Henaccrein=0
ExitApp
else
	reload
return













Cacc1:



if  !FileExist(Firefoxceroval)
    {
MsgBox 0x40040, %nameofthisscript1% - Información,  El Firefox que sirve como base no existe., 3
return
}

GuiControl, 1:,  guiinfouser, Establecer Data
    
    
Gui, 1:Submit, NoHide

sefdaff=%FolderUSTval%\Data

Gui, 1:+Disabled








;desactivar cualquier ToolTip que este actualmente desplegado
ToolTip


if (idl1=1)
      { 
        
        
        
    
        
        if FileExist(sefdaff)
           {
            
            
            
       MsgBox 0x40024, %nameofthisscript1% - Verificación,¿Se desea eliminar el folder Data?
          IfMsgBox Yes, {
                 FileRemoveDir, %sefdaff%,1
                 if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Operación errónea eliminar el Data de la carpeta UST elemento en cuestión: %FolderUSTval%\Data

Gui, 1:-Disabled
	    GuiControl, 1:,  guiinfouser, Listo
Return
 }
                 
                 
                 Gui, 1:-Disabled
                 
                   nombre1= Ninguno
                   IniWrite, 1, %CLAVEainif2%, F, a
GuiControl, Choose, idl1, 1
GuiControl,, MyEdit1, %nombre1%

	    GuiControl, 1:,  guiinfouser, Listo

setwindowok()
                      } 
                   Else IfMsgBox No, {
                    
                    	    GuiControl, 1:,  guiinfouser, Listo
                             Gui, 1:-Disabled
                  Return
}






}  
else
     { 
        
        
    nombre1= Ninguno
MsgBox 0x40040, %nameofthisscript1% - Información,  Ningun elemento seleccionado., 1

	    GuiControl, 1:,  guiinfouser, Listo
        Gui, 1:-Disabled
        return
        
        
        
        
}  
























}  
else
If idl1=2
    {
SetFirefox2=%rutafirefval1%
SplitPath, SetFirefox2, nombre1
Goto, Cacc10
}
else
If idl1=3
    {
SetFirefox2=%rutafirefval2%
SplitPath, SetFirefox2, nombre1
Goto, Cacc10
}
else
If idl1=4
    {
SetFirefox2=%rutafirefval3%
SplitPath, SetFirefox2, nombre1
Goto, Cacc10
}
else
If idl1=5
    {
SetFirefox2=%rutafirefval4%
SplitPath, SetFirefox2, nombre1
Goto, Cacc10
}
else
If idl1=6
    {
SetFirefox2=%rutafirefval5%
SplitPath, SetFirefox2, nombre1
Goto, Cacc10
}
else
If idl1=7
    {
SetFirefox2=%rutafirefval6%
SplitPath, SetFirefox2, nombre1
Goto, Cacc10
}
else
If idl1=8
    {
SetFirefox2=%rutafirefval7%
SplitPath, SetFirefox2, nombre1
Goto, Cacc10
}
else
If idl1=9
    {
SetFirefox2=%rutafirefval8%
SplitPath, SetFirefox2, nombre1
Goto, Cacc10
}
else
If idl1=10
    {
SetFirefox2=%rutafirefval9%
SplitPath, SetFirefox2, nombre1
Goto, Cacc10
}
else
If idl1=11
    {
SetFirefox2=%rutafirefval10%
SplitPath, SetFirefox2, nombre1
Goto, Cacc10
}


return


Cacc2:

;desactivar cualquier ToolTip que este actualmente desplegado
ToolTip

if  !FileExist(CLAVEFP)
    {
MsgBox 0x40040, %nameofthisscript1% - Información,  El elemento %CLAVEFP% no existe., 3
return
}



Run, %CLAVEFP%  , ,  Min UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

return


Cacc3:
if  !FileExist(FolderUSTval)
    {
MsgBox 0x40040, %nameofthisscript1% - Información,  El folder UST no existe., 3
return
}
Run, explorer.exe %FolderUSTval%
Return


Cacc4:


if  !FileExist(FolderUSTval)
    {
MsgBox 0x40040, %nameofthisscript1% - Información,  El folder UST no existe., 3
return
}


Gui, 1:+Disabled 

{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación,¿Se desea proceder?
IfMsgBox Yes, {
    
    	    GuiControl, 1:,  guiinfouser, Borrar carpeta UST
    
FileRemoveDir, %FolderUSTval% ,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea eliminar la carpeta UST elemento en cuestión: %FolderUSTval% 

Gui, 1:-Disabled 
	    GuiControl, 1:,  guiinfouser, Listo
return
 }




Run, explorer.exe %FolderUSTval%


goto guiclose
} 

Else IfMsgBox No, {
    Gui, 1:-Disabled 
Return
}
}

Return







Cacc5:

;desactivar cualquier ToolTip que este actualmente desplegado
ToolTip



if  !FileExist(ClaveDataUST)
    {
MsgBox 0x40040, %nameofthisscript1% - Información,  El folder Data en UST no existe., 3
return
}




Process, Exist, firefox.exe
	If (!ErrorLevel= 0) {
        
MsgBox 0x40024, %nameofthisscript1% - Verificación, Existe una instancia de Firefox activa ¿Se desea proceder?
IfMsgBox No, {
Return
}

	}





Gui, 1:+Disabled 



SplitPath, rutaseguridadval, nombre77, dir77, ext77, name_no_ext77, drive77

oldfirdata=%rutaseguridadval%\%nombre1%-Data


Settdataact=%SetFirefox2%\Data




if Rutasparacopval=0        
      goto,  sincopseg 

	    GuiControl, 1:,  guiinfouser,  Copia de seguridad
;desactivar cualquier ToolTip que este actualmente desplegado
ToolTip

if FileExist(oldfirdata)
{
FileRemoveDir,%oldfirdata%,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea eliminar el Data antiguo de las copias de seguridad elemento en cuestión: %oldfirdata%
   GuiControl, 1:,  guiinfouser, Listo
        Gui, 1:-Disabled 
        return
 }
}


if  FileExist(Settdataact)
{
FileMoveDir, %Settdataact%, %oldfirdata%, 0
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error, Operación errónea mover el Data antiguo a su nueva ubicación elemento en cuestión: %Settdataact%
	    GuiControl, 1:,  guiinfouser, Listo
        Gui, 1:-Disabled 
        return
 }
}



sincopseg:
 GuiControl, 1:,  guiinfouser,  Mover la carpeta Data
 ;desactivar cualquier ToolTip que este actualmente desplegado
ToolTip



if  FileExist(Settdataact)
{
FileRemoveDir, %Settdataact%,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea eliminar el Data antiguo elemento en cuestión: %oldfirdata%

   GuiControl, 1:,  guiinfouser, Listo
        Gui, 1:-Disabled 
        return


 }
}



FileCopyDir, %ClaveDataUST%, %Settdataact%,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea copiar el Data nuevo a su ubicación predeterminada elemento en cuestión: %ClaveDataUST%
   GuiControl, 1:,  guiinfouser, Listo
        Gui, 1:-Disabled 
        return
 }


FileRemoveDir, %ClaveDataUST%,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea eliminar el Data de la carpeta UST elemento en cuestión: %ClaveDataUST%

   GuiControl, 1:,  guiinfouser, Listo
        Gui, 1:-Disabled 
        return
 }




Gui, 1:Submit, NoHide
IniWrite, 1, %CLAVEainif2%, F, a

Gui, 1:-Disabled



GuiControl, Choose, idl1, 1
GuiControl,, MyEdit1, Ninguno

	    GuiControl, 1:,  guiinfouser, Listo

setwindowok()
    
return


Cacc6:

if  !FileExist(Rutacentralval)
    {
MsgBox 0x40040, %nameofthisscript1% - Información,  El folder no existe., 3
return
}
Run, explorer.exe %Rutacentralval%
return



Cacc9:
Gui, 1:+Disabled 

{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación,¿Se desea proceder?
IfMsgBox Yes, {
    
    
    
    GuiControl, 1:,  guiinfouser,Terminar procesos
    loop, 4
    {
Process, Close, FirefoxPortable.exe
Process, Close, FirefoxPortable.exe
Process, Close, firefox.exe
Process, Close, firefox.exe
Process, Close, firefox.exe
Process, Close, firefox.exe
Process, Close, firefox.exe
Process, Close, firefox.exe
Process, Close, firefox.exe
Process, Close, firefox.exe
Sleep 2000
Process, Close, firefox.exe
Process, Close, firefox.exe
Process, Close, firefox.exe
Sleep 2000
Process, Close, firefox.exe
Process, Close, firefox.exe
Process, Close, firefox.exe

Sleep 3000


Process, Exist, FirefoxPortable.exe
if (Errorlevel = 0)
{
    
    Process, Exist, firefox.exe
if (Errorlevel = 0)
{
    break
}

    
}

}


    GuiControl, 1:,  guiinfouser, Listo
MsgBox 0x40040, %nameofthisscript1% - Información, Firefox se ha cerrado.,7
Gui, 1:-Disabled 
Return
} 
Else IfMsgBox No, {
Return
}
}
return







Cacc10:


sefdaff=%FolderUSTval%\Data

if FileExist(sefdaff)
    {
MsgBox 0x40024, %nameofthisscript1% - Verificación,Se borrará el folder Data existente ¿Se desea proceder?
IfMsgBox Yes, {
    FileRemoveDir, %FolderUSTval%\Data,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea eliminar el Data de la carpeta UST elemento en cuestión: %FolderUSTval%\Data 
Gui, 1:-Disabled 
return
 }




}

Else IfMsgBox No, {
Return
}
}



	    GuiControl, 1:,  guiinfouser, Copiar Data a UST



FileCopyDir, %SetFirefox2%\Data, %FolderUSTval%\Data,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea copiar el Data nuevo al folder UST  elemento en cuestión: %SetFirefox2%\Data
	    GuiControl, 1:,  guiinfouser, Listo
        Gui, 1:-Disabled 
        return
 }



Gui, 1:Submit, NoHide
IniWrite, %idl1%, %CLAVEainif2%, F, a
Run, %CLAVEFP% , ,  Min UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2

GuiControl,, MyEdit1, %nombre1%

	    GuiControl, 1:,  guiinfouser, Listo

sleep 1500

    GuiControl, 1:,  guiinfouser, Revisar la ruta del 
    sleep 2000

    GuiControl, 1:,  guiinfouser, folder de descargas.
    sleep 2000

	    GuiControl, 1:,  guiinfouser, Listo
        
Gui, 1:-Disabled 
return
 





Cacc11:


 GuiControl, 1:,  guiinfouser, Cerrar Firefox

Gui, 1:+Disabled 

Process, Exist, firefox.exe
	If (!ErrorLevel= 0) {
        
	}
else
{
    goto notmore1
}

WinClose, ahk_exe firefox.exe
WinClose, ahk_exe firefox.exe
WinClose, ahk_exe firefox.exe
WinClose, ahk_exe firefox.exe
WinClose, ahk_exe firefox.exe
sleep 2000
WinClose, ahk_exe firefox.exe
WinClose, ahk_exe firefox.exe
WinClose, ahk_exe firefox.exe
WinClose, ahk_exe firefox.exe


Process, Exist, firefox.exe
	If (!ErrorLevel= 0) {
         Sleep, 2000
         Goto, Cacc11    
	}
    
    
    
notmore1:

MsgBox 0x40040, %nameofthisscript1% - Información, Firefox se ha cerrado.,7

	    GuiControl, 1:,  guiinfouser, Listo

Gui, fcerr:Destroy
Gui, 1:-Disabled 
Gui, 1:Show 

Return













Cacc13:

;desactivar cualquier ToolTip que este actualmente desplegado
ToolTip


if  !FileExist(FolderUSTval)
    {
MsgBox 0x40040, %nameofthisscript1% - Información,  El folder UST no existe., 3
return
}

	    GuiControl, 1:,  guiinfouser,  Update Firefox
oldfirfiref=%rutaseguridadval%\Firefrox 0 old

if Rutasparacopval=0        
      goto,  sincopseg2
      
if FileExist(oldfirfiref)
{
FileRemoveDir,%oldfirfiref%,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea eliminar el Firefox antiguo de las copias de seguridad elemento en cuestión: %oldfirfiref%

	    GuiControl, 1:,  guiinfouser, Listo
Return
 }
}

FileMoveDir, %Firefoxceroval%, %oldfirfiref%, 1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea mover el Firefox antiguo a su nueva ubicación elemento en cuestión: %Firefoxceroval% 


	    GuiControl, 1:,  guiinfouser, Listo
Return
 }


sincopseg2:

if FileExist(Firefoxceroval)
{
FileRemoveDir,%Firefoxceroval%,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea eliminar el Firefox antiguo elemento en cuestión %Firefoxceroval%


	    GuiControl, 1:,  guiinfouser, Listo
Return
 }
}


FileCopyDir, %FolderUSTval%, %Firefoxceroval%,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea copiar el Firefox nuevo a su ubicación predeterminada elemento en cuestión: %FolderUSTval%


	    GuiControl, 1:,  guiinfouser, Listo
Return
 }



FileDelete, %Firefoxceroval%\Firefox Get.ini
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea eliminar el ini de la carpeta de Firefox 0 elemento en cuestión: %Firefoxceroval%\Firefox Get.ini 

	    GuiControl, 1:,  guiinfouser, Listo
Return
 }

	    GuiControl, 1:,  guiinfouser, Listo
setwindowok()
return




Cacc14:

;desactivar cualquier ToolTip que este actualmente desplegado
ToolTip


datfolder1:=FolderUSTval . "\Data"
if  !FileExist(datfolder1)
    {
MsgBox 0x40040, %nameofthisscript1% - Información,  El folder %datfolder1% no existe., 3
return
}


    
Gui,1:+Disabled  ; Disable main window.

vccardemov1:=Rutacentralval

if  !FileExist(Rutacentralval)
    {
vccardemov1=
}



FileSelectFolder, Rutasave33, %vccardemov1% , 3
if Rutasave33 =
    {  

Gui,1:-Disabled 
return

}
    
    

GuiControl, 1:,  guiinfouser, Nuevo Firefox




FileMoveDir, %datfolder1%, %Rutasave33%\Data,1
if ErrorLevel
{ 
MsgBox 0x40010, %nameofthisscript1% - Error,Operación errónea al copiar los datos de Firefox en la carpeta UST.
	    GuiControl, 1:,  guiinfouser, Listo
 }
 

Gui, 1:-Disabled
Gui vaa1:Destroy
	    GuiControl, 1:,  guiinfouser, Listo
setwindowok()

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






;gui utilitaria de OK
setwindowok()
{
	
MouseGetPos ,stkposix,stkposiy

EnvSub, stkposix,105
EnvSub, stkposiy,55
SoundPlay, *64


gui_positionwin1=x%stkposix% y%stkposiy%
guipositionmod:=ShowGuiPlease(50,100,gui_positionwin1,"gec")
gui_positionwin1=%guipositionmod%



Gui, gec:Show, %gui_positionwin1% w100 h50, ......
Sleep, 1000

Gui gec:Hide
Return
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










;Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********
;Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********Functions-FIN********















































Cacc12:
Gui, 1:+Disabled
Gui, config:+owner1  

Gui, config:Font, Norm
Gui, config:Color ,,%stkcg5%
Gui, config:Font, c0x%stkcg4%
Gui, config:Color ,%stkcg6%


Gui, config:-MinimizeBox


Gui, config:Add, Text, x12 y9 w430 h20 , Firefox 0 



Gui, config:Add, Edit, x12 y29 w430 h20 vFirefoxcero, %Firefoxceroval%
Firefoxcero_TT:="Firefox portable para copiar los datos del programa a la carpeta UST."



Gui, config:Add, Text, x452 y9 w430 h20 , Folder UST 
Gui, config:Add, Edit, x452 y29 w430 h20 vFolderUST, %FolderUSTval%
FolderUST_TT:="Carpeta en el disco local."

Gui, config:Add, CheckBox, x12 y60 w350 h20 vRutasparacop Checked%Rutasparacopval%, Copias de seguridad
Rutasparacop_TT:="Conserva la carpeta Data antigua como un respaldo ante cualquier error."


Gui, config:Add, Edit, x12 y80 w430 h20 vrutaseguridad,  %rutaseguridadval%


Gui, config:Add, Text, x452 y60 w230 h20 , Ruta central de los datos


Gui, config:Add, Edit, x452 y80 w430 h20 vRutacentral, %Rutacentralval%
Rutacentral_TT:="Ubicacion central de los datos de los Firefox, (solo como acceso rapido)."


Gui, config:Add, Text, x12 y105 w870 h20 center, Rutas de las carpetas que contienen la carpeta Data de cada Firefox


Gui, config:Add, Edit, x12 y120 w430 h20 vrutafiref1, %rutafirefval1%
Gui, config:Add, Edit, x12 y139 w430 h20 vrutafiref2, %rutafirefval2%
Gui, config:Add, Edit, x12 y159 w430 h20 vrutafiref3, %rutafirefval3%
Gui, config:Add, Edit, x12 y179 w430 h20 vrutafiref4, %rutafirefval4%
Gui, config:Add, Edit, x12 y199 w430 h20 vrutafiref5, %rutafirefval5%




Gui, config:Add, Edit, x452 y120 w430 h20 vrutafiref6, %rutafirefval6%
Gui, config:Add, Edit, x452 y139 w430 h20 vrutafiref7, %rutafirefval7%
Gui, config:Add, Edit, x452 y159 w430 h20 vrutafiref8, %rutafirefval8%
Gui, config:Add, Edit, x452 y179 w430 h20 vrutafiref9, %rutafirefval9%
Gui, config:Add, Edit, x452 y199 w430 h20 vrutafiref10, %rutafirefval10%




Gui, config:Add, Button, x398 y233 w100 h20 vstkust gstkust, % nameofthisscript1 " Estilo" 







Gui, config:Add, Button, x842 y260 w40 h20 gaccggfire, Save
Gui, config:Add, Button, x12 y260 w40 h20 gaccdefault, Default

Gui, config:Add, Button, x428 y260 w40 h20 gwinabout1 vwinabout1, About


; Generated using SmartGUI Creator 4.0
Gui, config:Show, Center h290 w896,%nameofthisscript1% - Configuración



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




Gui, guistkc:Font, Norm
Gui, guistkc:Color ,,%stkcg5%
Gui, guistkc:Font, c0x%stkcg4%
Gui, guistkc:Color ,%stkcg6%


Gui, guistkc:-MinimizeBox  +Hwndguistkc

Gui, guistkc:+ownerconfig  ; Make the main window (Gui #1) the owner of the "about box".
Gui config:+Disabled  ; Disable main window.



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
Gui, guistkc:Show, Center h169 w317, %nameofthisscript1% - Estilo
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
Gui config:-Disabled  ; Disable main window.
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





goto accggfire


return





































accdefault:
MsgBox 0x40024, %nameofthisscript1% - Verificación,¿Realmente desea proceder?
IfMsgBox Yes, {
    
filedelete, %CLAVEaini%
Reload    

          } 
              Else IfMsgBox No, {
					
				
              Return
              }

return




accggfire:

Gui, config:Submit, NoHide
IniWrite, %Firefoxcero%, %CLAVEaini%, Sys, 1
IniWrite, %FolderUST%, %CLAVEaini%, Sys, 2
IniWrite, %Rutasparacop%, %CLAVEaini%, Sys, 3
IniWrite, %rutaseguridad%, %CLAVEaini%, Sys, 4
IniWrite, %Rutacentral%, %CLAVEaini%, Sys, 5



if rutafiref1=
rutafiref1=Firefox 1

if rutafiref2=
rutafiref2=Firefox 2

if rutafiref3=
rutafiref3=Firefox 3


if rutafiref4=
rutafiref4=Firefox 4

if rutafiref5=
rutafiref5=Firefox 5


if rutafiref6=
rutafiref6=Firefox 6


if rutafiref7=
rutafiref7=Firefox 7



if rutafiref8=
rutafiref8=Firefox 8

if rutafiref9=
rutafiref9=Firefox 9


if rutafiref10=
rutafiref10=Firefox 10


IniWrite, %rutafiref1%, %CLAVEaini%, FirefoxR, 1
IniWrite, %rutafiref2%, %CLAVEaini%, FirefoxR, 2
IniWrite, %rutafiref3%, %CLAVEaini%, FirefoxR, 3
IniWrite, %rutafiref4%, %CLAVEaini%, FirefoxR, 4
IniWrite, %rutafiref5%, %CLAVEaini%, FirefoxR, 5
IniWrite, %rutafiref6%, %CLAVEaini%, FirefoxR, 6
IniWrite, %rutafiref7%, %CLAVEaini%, FirefoxR, 7
IniWrite, %rutafiref8%, %CLAVEaini%, FirefoxR, 8
IniWrite, %rutafiref9%, %CLAVEaini%, FirefoxR, 9
IniWrite, %rutafiref10%, %CLAVEaini%, FirefoxR, 10



contexreinic:
;Guardar y reiniciar
Henaccrein=1
goto GuiClose


return



configGuiClose:
Gui, 1:-Disabled

Gui config:Destroy 
return













winabout1:


Gui, winabout:+ownerconfig
Gui config:+Disabled  



Gui, winabout:-MinimizeBox

Gui, winabout:Font, Norm
Gui, winabout:Color ,,%stkcg5%
Gui, winabout:Font, c0x%stkcg4%
Gui, winabout:Color ,%stkcg6%





Gui, winabout:Add, Picture, vaccchtpps17 gaccchtpps17 x138 y15 w150 h150 ,%A_ScriptDir%\Data\Guiabout.png
Gui, winabout:Add, Picture, vaccchtpps16 gaccchtpps16 x305 y15 w100 h120 ,%A_ScriptDir%\Data\Dona.png


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


Gui, winabout:Add, Text, gaccchtpps11 vaccchtpps11 x5 y375 w416 h20 center, Colorette - Simple Color Picker (v 1.01) by sumon





Gui, winabout:Add, Text, x5 y520 w416 h70  vacciespinfeng2 gacciespinfeng2 center, Este programa no tiene garantía`, úselo bajo su propio riesgo. No me responsabilizo ante la perdida de datos o el mal uso del mismo.`nLicencia del script escrito por RGUriel`, exceptuando el código de terceros especificado en el mismo: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007






Gui, winabout:Add, Button, x188 y620 w50 h20 gAboutptk, Aceptar



Gui, winabout:Show, Center h650 w426, %nameofthisscript1% - About



return

Aboutptk:
winaboutguiclose:
Gui config:-Disabled  
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














