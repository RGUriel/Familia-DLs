

;Changes a property in the compiled executable's version information.





;@Ahk2Exe-SetFileVersion 1.4R
;@Ahk2Exe-SetProductVersion 1.4R
;@Ahk2Exe-SetVersion 1.4R


;@Ahk2Exe-SetInternalName DLs
;@Ahk2Exe-SetName DLs
;@Ahk2Exe-SetOrigFilename DLs
;@Ahk2Exe-SetProductName DLs

;@Ahk2Exe-SetDescription Creación de listas con diferentes rutas texto direcciones web o cualquier otra cosa útil como los comandos Shell.


;____Not CHANGE
;@Ahk2Exe-SetLanguage 0x0409
;@Ahk2Exe-SetCopyright Copyright © 2022 RGUriel


;Changes a property in the compiled executable's version information.


;evita conflictos entre variables
#NoEnv
#Include %A_ScriptDir%\Data\Class_CtlColors.ahk
#Include %A_ScriptDir%\Data\AutoXYWH.ahk
;colores personalizados
#Include %A_ScriptDir%\Data\ChooseColor.ahk

#NoTrayIcon
#SingleInstance off
SetWorkingDir %A_ScriptDir% 
;sin 10mlseg entre linea de codigo
SetBatchLines -1 
; para las notas puesto que UTF-8 es mas moderno
;DLs
FileEncoding, UTF-8

CoordMode,Mouse,Screen
;NAMENAMENAME
;___________________________________________
nameofthisscript1:="DLs"
;___________________________________________
;VVVVVVVVVVversión
Veract1:="1.4R"
;VVVVVVVVVVV

;Cantidad de elementos por lista actualmente
Numelemlist=100



;variable para el numero de elemento en el Menu
vnuelemenu=

;variable Editar Barra acticvo
activeEditarBarra=0

;variable ruta acive
rutaon=0

;variable ruta acive
activeestilo=0
 ;Guardar y reiniciar
Henaccrein=0

;variable comand acticvo
activeconfig=0

CLAVEaini=%A_ScriptDir%\Dls.ini
;**********************************************************
;si no existe el archivo se crea
if !FileExist(CLAVEaini)
{


MsgBox 0x40041, RGUriel - %nameofthisscript1%, `*Spanish`: `n`nEste programa no tiene garantía`, úselo bajo su propio riesgo. No me responsabilizo ante la perdida de datos o el mal uso del mismo. `n`nLicencia del script escrito por RGUriel`, exceptuando el código de terceros especificado en el mismo: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007`n`n`*English`:`n`nThis program has no guarantee`, use it at your own risk. I do not take responsibility for the loss of data or the misuse of it.`n`nScript license written by RGUriel`, except for the third-party code specified in the same: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007
IfMsgBox Cancel, {
exitapp
}


IniWrite,-, %CLAVEaini%, ini, a
IniWrite, C:\Windows\system32\notepad.exe, %CLAVEaini%, Editor, a
IniWrite, Center, %CLAVEaini%, window position, gui_position
IniWrite, 570|915, %CLAVEaini%, window position, size
IniWrite, Center, %CLAVEaini%, window position2, gui_position
IniWrite, 90|431, %CLAVEaini%, window position2, size
;positionn of gui if is new use in new pc
IniWrite, 700/200, %CLAVEaini%, pcnewres, a


IniWrite, -------{, %CLAVEaini%, barra, a
IniWrite, }-------, %CLAVEaini%, barra, b

;SKM Custom
IniWrite, Verdana, %CLAVEaini%, STKG,1
IniWrite, 1, %CLAVEaini%, STKG,2
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
;*********************************************************
IniRead, Stc2, %CLAVEaini%, Editor, a
IniRead, gui_position, %CLAVEaini%, window position, gui_position
IniRead, gui_positionhw1, %CLAVEaini%, window position, size

IniRead, file1a, %CLAVEaini%, ini, a

;positionn of gui if is new use in new pc
IniRead, pcnewres, %CLAVEaini%, pcnewres, a
IniRead, gui_position2, %CLAVEaini%, window position2, gui_position
IniRead, gui_positionhw2, %CLAVEaini%, window position2, size
IniRead, codoper12save, %CLAVEaini%, DlsComand, a


IniRead, defaulbarri, %CLAVEaini%, barra, a
IniRead, defaulbarrc, %CLAVEaini%, barra, b

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
	winzmodif_aomd1=0
	
		 ; Ventana sin registro de cierre anterior 
	winzmodif_guinam=0
	 winzmodif_gec=0
	 winzmodif_copygui=0
}
else
{
	winzmodif_1=1
	winzmodif_aomd1=1
	
		 ; Ventana sin registro de cierre anterior 
	winzmodif_guinam=0
	 winzmodif_gec=0
	 winzmodif_copygui=0
}


Global usonuev1
Global usonuev2
Global usonuev3
Global pcnewres
Global cambscreenvvpcn1
Global cambscreenvvpcn2
;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease


;definewhgui-definewhgui-definewhgui-definewhgui
;Zizes predeterminadas
Global Htampredet_1:=570
Global Wtampredet_1:=915

Global Htampredetmin_1:=570
Global Wtampredetmin_1:=628

Global Htampredet_aomd1:=90
Global Wtampredet_aomd1:=431

Global Htampredetmin_aomd1:=90
Global Wtampredetmin_aomd1:=250



separarwh1:=StrSplit(gui_positionhw1, "|")
guihposit=% separarwh1[1]
guiwposit=% separarwh1[2]

separarwh2:=StrSplit(gui_positionhw2, "|")
guihposit2=% separarwh2[1]
guiwposit2=% separarwh2[2]

;valor para cerrar despues de ok
cardaccexit=0
;para abris despues de nuevo ini
 setvaaperturaddARC=0

;para la funcion de drop files
entradaotroelement=0




contedls:=1

varcontnumser=1

Loop 99
{
	
		EnvAdd, varcontnumser, 1
	
	contedls.= "|" varcontnumser
	
}

	contedls.= "| --"





;winok
Gui, gec:+AlwaysOnTop -Caption +ToolWindow
Gui, gec:Add, Picture, x0 y0 w100 h50 , %A_ScriptDir%\Data\Gui\window1.png

;Gui lista
Gui, copygui:+AlwaysOnTop -Caption +ToolWindow
Gui, copygui:Add, Picture, x0 y0 w100 h50 , %A_ScriptDir%\Data\Gui\windowcopy.png




Ca=
(Join|
a|
b|
c|
d|
e|
f|
g|
h|
i|
j|
k|
l|
m|
n|
ñ|
o|
p|
q|
r|
s|
t|
u|
v|
w|
x|
y|
z|
)




Menu, FileMenu, Add, Abrir, acc1
Menu, FileMenu, Add, Abrir archivo ini con el editor, acc6
Menu, FileMenu, Add, Abrir carpeta del archivo ini, acc20
Menu, FileMenu, Add,
Menu, FileMenu, Add, Nuevo archivo ini,newfile
Menu, FileMenu, Add, Guardar, save2
Menu, FileMenu, Add, Guardar como...,acc8
Menu, FileMenu, Add
Menu, FileMenu, Add, Restaurar, acc100
Menu, FileMenu, Add
Menu, FileMenu, Add, Reiniciar, acc13
Menu, FileMenu, Add, Guardar y cerrar %nameofthisscript1% (GyC), accok
Menu, FileMenu, Add, Reiniciar, contexreinic
Menu, FileMenu, Add, Exit, simpleexit

Menu, pginas, Add, Estilo, stkust
Menu, pginas, Add, Barra del archivo ini,  editsejhal
Menu, pginas, Add,
Menu, pginas, Add, Borrar pestaña, Dismencontexborrtab
Menu, pginas, Add, Borrar todo, acc5a


Menu, HelpMenu, Add, Guia basica, gbgui
Menu, HelpMenu, Add, Comando, aomd1
Menu, HelpMenu, Add, Ruta, rutax
Menu, HelpMenu, Add, 
Menu, HelpMenu, Add, DLs example.ahk,acc14
Menu, HelpMenu, Add, 
Menu, HelpMenu, Add,Configuración por defecto,setdd
Menu, HelpMenu, Add, About, winabout1





Menu, MyMenuBar, Add, &Archivo, :FileMenu
Menu, MyMenuBar, Add, &Pestañas, :pginas
Menu, MyMenuBar, Add, &Ayuda, :HelpMenu
;menucontextual
Menu, menu1, Add, Abrir, acc1
Menu, menu1, Add, Guardar, save2
Menu, menu1, Add
Menu, menu1, Add, Comando, aomd1
Menu, menu1, Add, Ruta, rutax
Menu, menu1, Add, Abrir archivo ini con el editor, acc6
Menu, menu1, Add, Abrir carpeta del archivo ini, acc20
Menu, menu1, Add
Menu, menu1, Add, Guardar y cerrar %nameofthisscript1% (GyC), accok
Menu, menu1, Add, Reiniciar, contexreinic
Menu, menu1, Add, Exit, simpleexit
;:reiniciar da problemas con doble instancia 

Menu, comanlist, Add, General, simpleadd1
Menu, comanlist, Add, Barra, simpleadd2
Menu, comanlist, Add, Icono, simpleadd3
Menu, comanlist, Add
Menu, comanlist, Add, Clipboardtxt, simpleadd4
Menu, comanlist, Add, Clipboard, simpleadd5
Menu, comanlist, Add, Config, simpleadd6
Menu, comanlist, Add, Link, simpleadd7
Menu, comanlist, Add, Lista, simpleadd8

Menu, menucomando, Add, Elemento 1, retacc1
Menu, menucomando, Add, Abrir, acc1
Menu, menucomando, Add, Guardar, save2
Menu, menucomando, Add
Menu, menucomando, Add,Cortar, cutcontexmenu
Menu, menucomando, Add,Copiar, copcontexmenu
Menu, menucomando, Add,Pegar, Pasttertt
Menu, menucomando, Add,Borrar, borrarcontext
Menu, menucomando, Add
Menu, menucomando, Add,+1 elemento, estbx2
Menu, menucomando, Add,+X elementos, estbxxx1
Menu, menucomando, Add,-1 elemento, estbx
Menu, menucomando, Add,-X elementos, estbxxx2
Menu, menucomando, Add
Menu, menucomando, Add,Plantillas, :comanlist
Menu, menucomando, Add
Menu, menucomando, Add, Cortar/Copiar sección,  secccort
Menu, menucomando, Add, Pegar sección, seccpegar
Menu, menucomando, Add, Ordenar, Xorder
Menu, menucomando, Add, Fin de la lista, endlist
Menu, menucomando, Add
Menu, menucomando, Add, Guardar y cerrar %nameofthisscript1% (GyC), accok
Menu, menucomando, Add, Reiniciar, contexreinic
Menu, menucomando, Add, Exit, simpleexit


Menu, menucomando, Disable, Elemento 1
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










;menu de guia basica
Menu, menucomandoex, Add,Cortar, noexamp
Menu, menucomandoex, Add,Copiar, noexamp
Menu, menucomandoex, Add,Pegar, noexamp
Menu, menucomandoex, Add,Borrar, noexamp
Menu, menucomandoex, Add
Menu, menucomandoex, Add,+1 elemento, noexamp
Menu, menucomandoex, Add,-1 elemento, noexamp
Menu, menucomandoex, Add,Fin de la lista, noexamp









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

Gui, +Resize +Hwndgui_id



Gui, Color ,,%stkcg5%
Gui, Font, S9 c0x%stkcg4% %stkcgfin2%, %stkcg1%
Gui, Color ,%stkcg6%



Gui, Menu, MyMenuBar
Gui, Add, Tab,x2 y2 w910 h565 vBasica1 AltSubmit -wrap,`DLs|1-10|11-20|21-30|31-40|41-50|51-60|61-70|71-80|81-90|91-100

Gui, Add, Text, x12 y29 w90 h20 videntificaunic1 center, Archivo Ini



Gui, Add, Button, x800 y29 w100 h20 videntificaunic2   gsetstar , Establecer




Gui, Add, Edit, x102 y29 w690 h20 vfile1,



GuiControl,1:, file1, %file1a%

Gui, Add, Text, x12 y59 w90 h20 videntificaunic6   center, Información
Gui, Add, Edit, x102 y59 w800 h20 vfileinfo,



Gui, Add, Text, x10 y89 w100 h20 videntificaunic7   center, # Lista
Gui, Add, DropDownList, x110 y89 w100 h20  r10 altsubmit vidl1 gacc21 hwndCBBID1, %contedls%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)


Gui, Add, DropDownList, x410 y89 w60 h20  r30  vidl2  hwndCBBID1, %Ca%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
GuiControl, Choose, idl2, 1



Gui, Add, Text, x300 y89 w100 h20 videntificaunic8  center , Letra insignia


Gui, Add, Text, x480 y89 w280 h20 vdecxvabarr1 center,




 Gui, Add, Button, x780 y89 w120 h20 vacc100 gacc100, Restaurar










Gui, Add, Text, x12 y203 w70 h20 videntificaunic10 center   , Editor

Gui, Add, Edit, x82 y200 w620 h20 vfile2,
GuiControl,1:, file2, %Stc2%
Gui, Add, Button, x710 y200 w100 h20 videntificaunic11   gacc10 , Establecer
Gui, Add, Button, x820 y200 w80 h20 videntificaunic12   gacc11 , Abrir











 


 
Gui, Add, Button, x862 y539 w40 h20 videntificaunic13    gaccok, GyC


GuiControl, 1:Disabled, acc100
Menu, FileMenu, Disable, Restaurar



Gui, Font, S%stkcg3% c0x%stkcg4% %stkcgfin2%, %stkcg1%

;aumento del numero con referencia al otro texto
Ziseoftextnumb=2







;Gui, Add, Edit, x92 y29 w620 h20 vNom1, 
;Gui, Add, Edit, x92 y49 w620 h20 vCom1, 
	;valor de Y
convalprimguiautm1:=29
	;valor de x
convalprimguiautm5:=62

;valor para la variable independiente

;control show number of com & nom
;Gui, 1:Add, GroupBox, x7 y20 w51 h48 vpaposgrup1,
;Gui, Add, text, x12 y35 w40 h30  center vpapos1  ,
ypositcontronumbercomnom1=20



;tamaño de letra
letrartmpstkcg3:=stkcg3
Envadd, letrartmpstkcg3, %Ziseoftextnumb%


;control ruta y GyS
numcontrugys=0


valprimguiautm2=0
valprimguiautm=0
Loop
{
	EnvAdd, valprimguiautm,1
		EnvAdd, valprimguiautm2,1


    if valprimguiautm<=10
     Gui, Tab, 1-10
    else
         if valprimguiautm<=20
Gui, Tab, 11-20
else
             if valprimguiautm<=30
    Gui, Tab, 21-30
    else
             if valprimguiautm<=40
Gui, Tab, 31-40
else
             if valprimguiautm<=50
              Gui, Tab, 41-50
             else
                          if valprimguiautm<=60
                           Gui, Tab, 51-60
                          else
                                       if valprimguiautm<=70
                                        Gui, Tab, 61-70
                                       else
                                                    if valprimguiautm<=80
                                                     Gui, Tab, 71-80
                                                    else
                                                                 if valprimguiautm<=90
Gui, Tab, 81-90
else
          if valprimguiautm<=100
Gui, Tab, 91-100


Gui, Font, S%stkcg3%



	convalprimguiautm2:="Nom"valprimguiautm
	convalprimguiautm3:="Com"valprimguiautm

	
	
	Gui, 1:Add, Edit, x%convalprimguiautm5%    y%convalprimguiautm1%   w840 h20   v%convalprimguiautm2%  ,
	;valor de Y
	EnvAdd, convalprimguiautm1,20
	
		Gui, 1:Add, Edit, x%convalprimguiautm5%    y%convalprimguiautm1%   w840 h20   v%convalprimguiautm3%  ,
	
	EnvAdd, convalprimguiautm1,30
	
	
	
	
	
	

Gui, Font, S%letrartmpstkcg3%
		convarnc1:="paposgrup"valprimguiautm
		convarnc2:="papos"valprimguiautm


	Gui, 1:Add, GroupBox, x7 y%ypositcontronumbercomnom1% w51 h48 v%convarnc1%,
EnvAdd, ypositcontronumbercomnom1,18


Gui, 1:Add, text, x12 y%ypositcontronumbercomnom1% w40 h25  center v%convarnc2%  ,
	EnvAdd, ypositcontronumbercomnom1,32
	








if valprimguiautm2=10
{
valprimguiautm2=0
convalprimguiautm5:=62
ypositcontronumbercomnom1=20
	convalprimguiautm1:=29
    
    
    	EnvAdd, numcontrugys,1
        
        concontname1:="name"numcontrugys
        concontname2:="finistgys"numcontrugys
        
    Gui, Add, Text, x12 y527 w840 h30 v%concontname1%,
    
    Gui, Font, S9
    Gui, Add, Button, x860 y539 w40 h20 v%concontname2%   gaccok, GyC
    
   }
    
    
}until valprimguiautm=100





























; Generated using SmartGUI Creator 4.0


;********************************************************************************
;positionn of gui if is new use in new pc


;definewhgui-definewhgui-definewhgui-definewhgui
correcthw:=definewhgui(gui_position,guihposit,guiwposit,"1")
correcthwcont:=StrSplit(correcthw, "|")
correcthh=% correcthwcont[1]
correctww=% correcthwcont[2]



;Maximizar despues de abrir
coerxMaximiz=0

correcthh1:=usonuev2-100
correctww1:=usonuev1-100

if correcthh>%correcthh1%
	coerxMaximiz=1

if correctww>%correctww1%
	coerxMaximiz=1



		;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(correcthh,correctww,gui_position,"1")
gui_position=%guipositionmod%
				


Gui, Show, %gui_position% h%Htampredet_1% w%Wtampredet_1%, %nameofthisscript1%


WinMove,ahk_id %gui_id%,,,,%correctww%,%correcthh%


if coerxMaximiz=1
WinMaximize, ahk_id %gui_id%





entrada=%1%

if entrada=
 {
DLsfile= %file1a%
Goto, acc9
}
else
{
DLsfile=%entrada%
Goto, acccsegui
}


return


retacc1:
;menu Numero del elemento
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

if activeestilo=1
{
	Gui, guistkc:Show
	return
}


if activeEditarBarra=1
return



activeestilo=1




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

Gui, guistkc:+owner1  ; Make the main window (Gui #1) the owner of the "about box".
Gui 1:+Disabled  ; Disable main window.

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
activeestilo=0
Gui 1:-Disabled  ; Disable main window.
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



contexreinic:

 ;Guardar y reiniciar
Henaccrein=1
goto simpleexit

return





Resize:
;Edit
movemycontroval1=0
Loop
{
 EnvAdd, movemycontroval1,1
 
 contmover1:="Nom"movemycontroval1
  contmover2:="Com"movemycontroval1
  
	GuiControl, 1:Move, %contmover1%, h50
    	GuiControl, 1:Move, %contmover2%, h50
        
if movemycontroval1>=100
 break
}

;TAbs
 GuiControl, 1:Move, Basica1, h50
 
 
 
 ;botones y texto de los edit principales
 movemycontroval1=0
Loop
{
 EnvAdd, movemycontroval1,1
 
 contmover1:="papos"movemycontroval1


  
  
  
	GuiControl, 1:Move, %contmover1%, h50


        
       
        
if movemycontroval1>=100
 break
}
 
 ;otros
 
 movemycontroval1=0
Loop
{
 EnvAdd, movemycontroval1,1
 
 contmover1:="name"movemycontroval1
 contmover2:="finistgys"movemycontroval1



	GuiControl, 1:MoveDraw, %contmover1%, h50
	GuiControl, 1:Move, %contmover2%, h50
        
if movemycontroval1>=10
 break
}
 
 
 
  movemycontroval1=0
Loop
{
 EnvAdd, movemycontroval1,1
 
 contmover1:="identificaunic"movemycontroval1
 

	GuiControl, 1:Move, %contmover1%, h50

        
if movemycontroval1>=13 ;Numero actual de identificador unico
 break
}
 
 


 	GuiControl, 1:Move, file1, h50
    	GuiControl, 1:Move, fileinfo, h50
        	GuiControl, 1:Move, idl1, h50
    	GuiControl, 1:Move, decxvabarr1, h50
        	GuiControl, 1:Move, idl2, h50
    	GuiControl, 1:Move, acc100, h50
  	GuiControl, 1:Move, file2, h50
    	GuiControl, 1:Move, vcoloerde1, h50
        	GuiControl, 1:Move, vcoloerde2, h50
    	GuiControl, 1:Move, vcoloerde3, h50
        	GuiControl, 1:Move, winabout1, h50

         	GuiControl, 1:Move, setdd, h50

 
 
 
 
	AutoXYWH("reset") ; Needs to reset if you changed the Control size manually.
return
 
GuiSize:
	If (A_EventInfo = 1) ; The window has been minimized.
		Return
        







AutoXYWH("wh", "Basica1")

aumentnesefun:=0.05

;Numeros de comandos
aumentnesefuntext1:=0.10


numegener1=0
numegener2=0
numegener3=0
Loop
{
 

 
 EnvAdd, numegener1,1
  EnvAdd, numegener2,1
    EnvAdd, numegener3,1
  





  




  
 if numegener3=1
 {
    EnvSub, numegener2,1
conteensubcNom:="w h "aumentnesefun



aumenpost10:="h "aumentnesefuntext1

aumenpost11:="h "aumentnesefuntext1
}
else
{
    aumentnesefun2:=aumentnesefun*numegener2
              aumentnesefun4:=Format("{:.2f}",aumentnesefun2)
 conteensubcNom:="w h "aumentnesefun "y " aumentnesefun4




aumenpost10:="h "aumentnesefuntext1 "y "aumentnesefun4



aumenpost11:="h "aumentnesefuntext1 "y "aumentnesefun4
}

conteensubc2:="Nom"numegener1
	AutoXYWH(conteensubcNom, conteensubc2)
    
    

    conteensubc6:="papos"numegener1
	AutoXYWH(aumenpost10, conteensubc6)

    conteensubc7:="paposgrup"numegener1
	AutoXYWH(aumenpost11, conteensubc7)





  EnvAdd, numegener2,1
   aumentnesefun4:=aumentnesefun*numegener2
      aumentnesefun8:=Format("{:.2f}",aumentnesefun4)
conteensubcCom:="w h "aumentnesefun "y " aumentnesefun8

conteensubc3:="Com"numegener1
 
    
    AutoXYWH(conteensubcCom, conteensubc3)
    
    



if numegener3>=10
{
numegener3:=0
numegener2:=0
}


   }until numegener1=100
    
    
    
    
    
    
















	AutoXYWH("xy", "finistgys1")
	AutoXYWH("xy", "finistgys2")
	AutoXYWH("xy", "finistgys3")
	AutoXYWH("xy", "finistgys4")
		AutoXYWH("xy", "finistgys5")
		AutoXYWH("xy", "finistgys6")
		AutoXYWH("xy", "finistgys7")
		AutoXYWH("xy", "finistgys8")
	AutoXYWH("xy", "finistgys9")
AutoXYWH("xy", "finistgys10")







	;AutoXYWH("x", "identificaunic1")
	AutoXYWH("yw", "name1")
    	AutoXYWH("x", "identificaunic2")
	AutoXYWH("yw", "name2")

	AutoXYWH("yw", "name3")

	AutoXYWH("yw", "name4")

	AutoXYWH("yw", "name5")
    	;AutoXYWH("x", "identificaunic6")
	AutoXYWH("yw", "name6")
    	;AutoXYWH("x", "identificaunic7")
	AutoXYWH("yw", "name7")
    	;AutoXYWH("x", "identificaunic8")
	AutoXYWH("yw", "name8")

	AutoXYWH("yw", "name9")

	;AutoXYWH("x", "identificaunic10")
AutoXYWH("yw", "name10")
	AutoXYWH("x", "identificaunic11")

    	AutoXYWH("x", "identificaunic12")

    	AutoXYWH("xy", "identificaunic13")




	AutoXYWH("w", "file1")
	AutoXYWH("w", "fileinfo")
    	;AutoXYWH("x", "idl1")
	AutoXYWH("w", "decxvabarr1")
    	;AutoXYWH("x", "idl2")
	AutoXYWH("x", "acc100")
    	AutoXYWH("w", "file2")
   ; 	AutoXYWH("x", "vcoloerde1")
	;AutoXYWH("x", "vcoloerde2")
  ;  	AutoXYWH("x", "vcoloerde3")



    
    
    
    ;evitar errores de visualizacion de las letras
  movemycontroval1=0
Loop
{
 EnvAdd, movemycontroval1,1
 
 contmover1:="name"movemycontroval1
 
 

	GuiControl, 1:Hide, %contmover1%
	GuiControl, 1:Show, %contmover1%
        
		
		
		
		
if movemycontroval1>=10 
 break
}
    
      movemycontroval1=0
Loop
{
 EnvAdd, movemycontroval1,1
 
convalprimguiautm2:="Nom"valprimguiautm
	convalprimguiautm3:="Com"valprimguiautm

	GuiControl, 1:Hide, %convalprimguiautm2%
	GuiControl, 1:Show, %convalprimguiautm2%
        
		
			GuiControl, 1:Hide, %convalprimguiautm3%
	GuiControl, 1:Show, %convalprimguiautm3%
		
		
if movemycontroval1>=100 
 break
}
    




	GuiControl, 1:Hide, file1
	GuiControl, 1:Show, file1


	GuiControl, 1:Hide, fileinfo
	GuiControl, 1:Show, fileinfo
	
		GuiControl, 1:Hide, decxvabarr1
	GuiControl, 1:Show, decxvabarr1
	
		GuiControl, 1:Hide, file2
	GuiControl, 1:Show, file2
	



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



















GuiDropFiles:
{

  ;funciones para establecer un nuev valor al sistema
DLsfile=%A_GuiEvent%

if DLsfile =
  {  
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
    return
    }


SplitPath, DLsfile, , , aprobdesaext

if aprobdesaext=ini
Goto,  acccsegui

if aprobdesaext=1
Goto,  acccsegui

if aprobdesaext=2
Goto,  acccsegui

if aprobdesaext=3
Goto,  acccsegui

if aprobdesaext=4
Goto,  acccsegui


if aprobdesaext=5
Goto,  acccsegui






  }

return






















acc1:

Gui 1:+Disabled 
FileSelectFile, DLsfile, 3, , DLs, Ini Files (*.ini; *.1; *.2; *.3; *.4; *.5)
if DLsfile =
  {  

Gui 1:-Disabled 
    return
    }


goto, acccsegui
return



acc5a:
Gui 1:+Disabled 
MsgBox 0x40024, %nameofthisscript1% - Verificación,Todos los campos seran limpiados ¿Realmente desea proceder?
IfMsgBox No, {
					
				Gui 1:-Disabled 
              Return
              }
setwindowok()

acc5:



Gui, 1:Submit, NoHide
Gui 1:+Disabled 




vagwrit=0

loop 
 
{
EnvAdd, vagwrit, 1

if vagwrit=101
break

certas := "Nom"vagwrit
pertas := "Com"vagwrit


GuiControl, 1:,  %certas%, 
GuiControl,1: ,%pertas%,



}

Gui 1:-Disabled 






return



acc6:
if DLsa =
  {  
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
    return
    }
run, %Stc2% "%DLsa%", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return












;-----------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------




;-----------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------






























accok:

if DLsfile =
 {   
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
goto Guiclose
     return
}


cardaccexit=1
goto save2
return


acc8:

FileSelectFolder, save4, , 3
if save4 =
  {  

    return
    }
	


	
Gui, 1:Submit, NoHide
	
savec3=%save4%\DLs%idl2%.ini

infofinal=%savec3%

if FileExist(savec3)
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación, El archivo ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
goto, accionguardar
return
		  Return
          } 
              Else IfMsgBox No, {
               
              Return
              }
}



setvaaperturaddARC=1
goto, accionguardar
return


save2:


if DLsfile =
 {   
	
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
     return
}






if cadgencs=5
cadgencs=0

Envadd, cadgencs,1


Gui, 1:Submit, NoHide


savec3=%dir1%\DLs%idl2%.ini
infofinal=%savec3%

FileCopy, %savec3%, %savec3%.%cadgencs%, 1
FileDelete, %savec3%



Sleep, 100

goto, accionguardar


return




accionguardar:






Gui, 1:Submit, NoHide


if idl1>100
  {  
MsgBox 0x40040, %nameofthisscript1% - Información,  Seleccione un rango., 1
    return
    }

if idl1=
  {  
MsgBox 0x40040, %nameofthisscript1% - Información,  Seleccione un rango., 1
    return
    }
Gui 1:+Disabled 


IniWrite, %idl1%, %savec3%, DLWT, a
IniWrite, %fileinfo%, %savec3%, DLWT, b




if barri=
 barri=%defaulbarri%

 if barrc=
  barrc=%defaulbarrc%
 
iniwrite, %barri%, %savec3%, DLWT, c
iniwrite, %barrc%, %savec3%, DLWT, d


iniwrite, %cadgencs%, %savec3%, DLWT, e





vagwrit=0

Loop
{
EnvAdd, vagwrit, 1



certas := "Nom"vagwrit
pertas := "Com"vagwrit


if  %certas%=
%certas%=.
 
if  %pertas%=
%pertas%=

IniWrite, % %certas% , %savec3%, %vagwrit%, a
IniWrite, % %pertas% , %savec3%, %vagwrit%, b


}until vagwrit=100









Gui 1:-Disabled 

if setvaaperturaddARC=1
{
 setvaaperturaddARC=0
DLsfile=%savec3%
goto acccsegui
}


setwindowok()


if cardaccexit=1
goto guiclose
return








;menucontextual

GuiContextMenu:





If InStr(A_GUICONTROL, "papos")
{
	numberselecccontrol:= StrReplace(A_GUICONTROL, "papos", "")
	goto secondmenu
}


Menu, menu1, Show, %A_GuiX%, %A_GuiY%

return




secondmenu:
;numero de elemento en el Menu
if vnuelemenu=
{
	vnuelemenu:=numberselecccontrol
	Menu, menucomando, Rename,  Elemento 1 ,  Elemento %vnuelemenu%
}
else
{
	Menu, menucomando, Rename,  Elemento %vnuelemenu% ,  Elemento %numberselecccontrol%
	vnuelemenu:=numberselecccontrol
}

Menu, menucomando, Show, %A_GuiX%, %A_GuiY%
return



;menucontextual
Xorder:

Gui, AXselorde:+owner1  ; Make the main window (Gui #1) the owner of the "about box".

Gui, AXselorde:Font, Norm
Gui, AXselorde:Color ,,%stkcg5%
Gui, AXselorde:Font, c0x%stkcg4%
Gui, AXselorde:Color ,%stkcg6%





Gui, AXselorde:-MinimizeBox



Gui, AXselorde:Add, Edit, x9 y9 w40 h20 vPositionmovelist1 number, %numberselecccontrol%
Gui, AXselorde:Add, Text, x56 y12 w30 h20 , Hasta
Gui, AXselorde:Add, Edit, x89 y9 w40 h20 vPositionmovelist2 number, 100
Gui, AXselorde:Add, Button, x49 y39 w40 h20 gContinXorder, Ok
; Generated using SmartGUI Creator 4.0
Gui, AXselorde:Show, Center h70 w140, %nameofthisscript1% - Rango a ordenar
Return



AXselordeGuiClose:
Gui AXselorde:Destroy
Gui 1:-Disabled
Return






newfile:


FileSelectFolder, newfile, , 3
if newfile =
  {  

    return
    }
	



Gui, 1:Submit, NoHide


if idl1>100
  {  
MsgBox 0x40040, %nameofthisscript1% - Información,  Seleccione un rango., 1
    return
    }

if idl1=
  {  
MsgBox 0x40040, %nameofthisscript1% - Información,  Seleccione un rango., 1
    return
    }
Gui 1:+Disabled 


filenew:=newfile "\DLs" idl2 ".ini"


IniWrite, %idl1%, %filenew%, DLWT, a

IniWrite, Nueva lista DLs, %filenew%, DLWT, b


iniwrite, %defaulbarri%, %filenew%, DLWT, c
iniwrite, %defaulbarrc%, %filenew%, DLWT, d


iniwrite, 0, %filenew%, DLWT, e



iex=

vagwrit=0

Loop
{
EnvAdd, vagwrit, 1




IniWrite, . , %filenew%, %vagwrit%, a
IniWrite, %iex% , %filenew%, %vagwrit%, b


}until vagwrit=100









Gui 1:-Disabled 


DLsfile=%filenew%
goto acccsegui

return












ContinXorder:




Gui, AXselorde:Submit, NoHide

Gui 1:+Disabled
Gui AXselorde:Destroy


;octener valores a modificar
oresam:=Positionmovelist1-1
Loop 100
{
 EnvAdd, oresam,1
 
 oresamexA:="Nom"oresam
 oresamexB:="Com"oresam
 oresamexC:="TMPNOM"oresam
 oresamexD:="TMPCOM"oresam
 
GuiControlGet, %oresamexC%,1:, %oresamexA%
GuiControlGet, %oresamexD%,1:, %oresamexB%


if oresam>=%Positionmovelist2%
 break
}




;quitar . de nombres
valimpesp1:=Positionmovelist1-1
Loop 100
{
 EnvAdd, valimpesp1,1
 
imersevarA:="TMPNOM"valimpesp1
 If %imersevarA%=.
%imersevarA%=
 
 
 if valimpesp1>=%Positionmovelist2%
 break
}



xnamesorder=
(
%TMPNOM1%
%TMPNOM2%
%TMPNOM3%
%TMPNOM4%
%TMPNOM5%
%TMPNOM6%
%TMPNOM7%
%TMPNOM8%
%TMPNOM9%
%TMPNOM10%
%TMPNOM11%
%TMPNOM12%
%TMPNOM13%
%TMPNOM14%
%TMPNOM15%
%TMPNOM16%
%TMPNOM17%
%TMPNOM18%
%TMPNOM19%
%TMPNOM20%
%TMPNOM21%
%TMPNOM22%
%TMPNOM23%
%TMPNOM24%
%TMPNOM25%
%TMPNOM26%
%TMPNOM27%
%TMPNOM28%
%TMPNOM29%
%TMPNOM30%
%TMPNOM31%
%TMPNOM32%
%TMPNOM33%
%TMPNOM34%
%TMPNOM35%
%TMPNOM36%
%TMPNOM37%
%TMPNOM38%
%TMPNOM39%
%TMPNOM40%
%TMPNOM41%
%TMPNOM42%
%TMPNOM43%
%TMPNOM44%
%TMPNOM45%
%TMPNOM46%
%TMPNOM47%
%TMPNOM48%
%TMPNOM49%
%TMPNOM50%
%TMPNOM51%
%TMPNOM52%
%TMPNOM53%
%TMPNOM54%
%TMPNOM55%
%TMPNOM56%
%TMPNOM57%
%TMPNOM58%
%TMPNOM59%
%TMPNOM60%
%TMPNOM61%
%TMPNOM62%
%TMPNOM63%
%TMPNOM64%
%TMPNOM65%
%TMPNOM66%
%TMPNOM67%
%TMPNOM68%
%TMPNOM69%
%TMPNOM70%
%TMPNOM71%
%TMPNOM72%
%TMPNOM73%
%TMPNOM74%
%TMPNOM75%
%TMPNOM76%
%TMPNOM77%
%TMPNOM78%
%TMPNOM79%
%TMPNOM80%
%TMPNOM81%
%TMPNOM82%
%TMPNOM83%
%TMPNOM84%
%TMPNOM85%
%TMPNOM86%
%TMPNOM87%
%TMPNOM88%
%TMPNOM89%
%TMPNOM90%
%TMPNOM91%
%TMPNOM92%
%TMPNOM93%
%TMPNOM94%
%TMPNOM95%
%TMPNOM96%
%TMPNOM97%
%TMPNOM98%
%TMPNOM99%
%TMPNOM100%
)


;ordenar la lista que sera la base para el nuevo orden
Sort, xnamesorder,F SortStrCmpLogical

;Partir lista en valores "ID"
texer1:=Positionmovelist1-1
Loop, Parse, xnamesorder, `n, `r     
{
 ;si la variable es nada se ignora
if A_LoopField=
continue
 
 
 
EnvAdd, texer1, 1


texerA=contenex%texer1%


%texerA%=%A_LoopField%




;Encontrar los valores comforme al valor "ID" en este caso el nombre
texer2:=Positionmovelist1-1
Loop 100
{
 EnvAdd, texer2, 1
 texerB:="TMPNOM"texer2
 
 


 If %texerA%=% %texerB%
{
 
 texerC:="TMPNOM"texer2
 texerD:="TMPCOM"texer2
 
 texerE:="Nombx"texer1
 texerF:="Comax"texer1
 
%texerE%=% %texerC%
 %texerF%= % %texerD%
 



 
 break
}
 
 
 
  if texer1>=%Positionmovelist2%
 break
 
}




}

;Nuevo orden para los datos
canumdeccontr1:=Positionmovelist1-1
Loop 100
{
EnvAdd, canumdeccontr1,1


 texerG:="Nombx"canumdeccontr1
 texerH:="Comax"canumdeccontr1

GuiControl,1:, Nom%canumdeccontr1%, % %texerG%
GuiControl,1:, Com%canumdeccontr1%, % %texerH%

  if canumdeccontr1>=%Positionmovelist2%
 break
}




;limpieza de variables
limvartcc:=Positionmovelist1-1
Loop 100
{
EnvAdd, limvartcc  , 1


 texerC:="TMPNOM"limvartcc
 texerD:="TMPCOM"limvartcc
 texerE:="Nombx"limvartcc
 texerF:="Comax"limvartcc
texerA:="contenex"limvartcc


 %texerC%=
%texerD%=
 %texerE%=
 %texerF%=
%texerA%=

  if limvartcc>=%Positionmovelist2%
 break
}













Gui 1:-Disabled

Gui 1:Show 








return



setstar:

Gui, 1:Submit, NoHide

GuiControlGet, getsff,1:, file1

DLsfile=%getsff%



goto, acccsegui
return


acc100:

FileCopy, %DLsfile%, %dir1%\%name_no_ext1%,0
if ErrorLevel
{ 
MsgBox 0x40024, %nameofthisscript1% - Verificación,El elemento: %dir1%\%name_no_ext1% ya existe ¿Desea sobrescribir?
IfMsgBox Yes, {
FileCopy, %DLsfile%, %dir1%\%name_no_ext1%,1
goto contuc1

		  Return
          } 
              Else IfMsgBox No, {
               
              Return
              }
}

contuc1:
DLsfile=%dir1%\%name_no_ext1%
goto acccsegui
return

acc9:


if  !FileExist(DLsfile)
{ 
 GuiControl,1:, file1,
DLsfile=
Gui, 1:Show,  ,   %nameofthisscript1%
Goto, acc5
    }



acccsegui:

SplitPath, DLsfile, nombre1, dir1, ext1, name_no_ext1, drive1


StringReplace, varinaes, name_no_ext1, DLs,,



Gui, 1:Submit, NoHide
if DLsfile =
  {  
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
 GuiControl,1:, file1,
file1a=
Goto, acc5



    return
    }

if ext1 =ini
{
GuiControl, 1:Disabled, acc100
Menu, FileMenu, Disable, Restaurar
GuiControl, 1:Enabled, save2
 goto csc1 
}


if ext1 =1
{
GuiControl, 1:Enabled, acc100
Menu, FileMenu, Enable, Restaurar
GuiControl, 1:Disabled, save2
 goto csc1 
}

if ext1 =2
{
GuiControl, 1:Enabled, acc100
Menu, FileMenu, Enable, Restaurar
GuiControl, 1:Disabled, save2
 goto csc1 
}

if ext1 =3
{
GuiControl, 1:Enabled, acc100
Menu, FileMenu, Enable, Restaurar
GuiControl, 1:Disabled, save2
 goto csc1 
}


if ext1 =4
{
GuiControl, 1:Enabled, acc100
Menu, FileMenu, Enable, Restaurar
GuiControl, 1:Disabled, save2
 goto csc1 
}

if ext1 =5
{
GuiControl, 1:Enabled, acc100
Menu, FileMenu, Enable, Restaurar
GuiControl, 1:Disabled, save2
 goto csc1 
}







if ext1 !=ini
  {  
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1

 GuiControl,1:, file1,
file1a=
Goto, acc5

    return
    }

csc1:

Gui 1:+Disabled



DLsa=%DLsfile%
GuiControl, Choose, idl2, %varinaes%



IniRead, DLWT, %DLsa%, DLWT, a
IniRead, dateinfo, %DLsa%, DLWT, b

;Sin informacion
If dateinfo=ERROR
 dateinfo=Ini from DLs

If dateinfo=
 dateinfo=Ini from DLs



IniRead, barri, %DLsa%, DLWT, c
IniRead, barrc, %DLsa%, DLWT, d
if dateinfo=
 dateinfo=No info
 
 
if barri=
 barri=
 if barrc=
  barrc=

if barri=ERROR
 barri=
 if barrc=ERROR
  barrc=

IniRead, cadgencs, %DLsa%, DLWT, e
if cadgencs=
	cadgencs=0

if cadgencs>5
	cadgencs=0

if cadgencs=ERROR
 cadgencs=0
 
 

vagwrit=0
loop 
{

EnvAdd, vagwrit, 1


ContNom1:="DLsa"vagwrit
ContCom1:="Seaa"vagwrit


IniRead, %ContNom1% , %DLsa%, %vagwrit%, a
IniRead, %ContCom1% , %DLsa%, %vagwrit%, b



if  %ContNom1%=
%ContNom1%=.

if  %ContCom1%=
%ContCom1%=

if  %ContNom1%=ERROR
%ContNom1%=.
 
if  %ContCom1%=ERROR
%ContCom1%=



}until vagwrit=100



finalsav2:


GuiControl,1:, file1, %DLsfile%
GuiControl,1:, filas, %DLWT%
GuiControl, Choose, idl1, %DLWT%
GuiControl, Choose, idl2, %varinaes%
GuiControl,1:, fileinfo, %dateinfo%
GuiControl, 1:, decxvabarr1, %barri%%nameofthisscript1%%barrc%

vagwrit=0
Loop
{

EnvAdd, vagwrit, 1

certas := "DLsa"vagwrit
certas1=% %certas%
pertas := "Seaa"vagwrit
pertas1=% %pertas%

ContNom1:="Nom"vagwrit
ContCom1:="Com"vagwrit


GuiControl,1:, %ContNom1%, %certas1%
GuiControl,1:, %ContCom1%, %pertas1%



}until vagwrit=100


finalsav3:





GuiControl,1:, file1,%DLsa%
GuiControl,1:, name1, %DLsa%
GuiControl,1:, name2, %DLsa%
GuiControl,1:, name3, %DLsa%
GuiControl,1:, name4, %DLsa%
GuiControl,1:, name5, %DLsa%
GuiControl,1:, name6, %DLsa%
GuiControl,1:, name7, %DLsa%
GuiControl,1:, name8, %DLsa%
GuiControl,1:, name9, %DLsa%
GuiControl,1:, name10, %DLsa%


Gui, 1:Show,  ,   %nameofthisscript1% - %nombre1%



Gui 1:-Disabled

goto,acc21
return








acc10:
Gui, 1:Submit, NoHide
GuiControlGet, Stc2,1:, file2
GuiControl,1:, file2, %Stc2%

if Stc2 =
  {  
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
    return
    }

setwindowok()



return

acc11:
FileSelectFile, Stc2, 3, , Open a file, Programas (*.exe)
if Stc2 =
  {  

    return
    }
	
GuiControl,1:, file2, %Stc2%


setwindowok()


return


acc14:
run, %Stc2% "%A_ScriptDir%\Data\DLs example.ahk", ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return











acc20:
run, explorer.exe %dir1%, ,  UseErrorLevel
if (ErrorLevel = "ERROR")
MsgBox 0x40030, %nameofthisscript1% - Advertencia, El comando se ejecutó de manera incorrecta., 2
return



acc21:




Gui, 1:Submit, NoHide


if idl1>100
  {  
MsgBox 0x40040, %nameofthisscript1% - Información,  Seleccione un rango., 1
    return
    }

Gui 1:+Disabled 




finofconte:=idl1

     nocontes=0



positidlsa=0
  loop 100
  {
   
     EnvAdd, positidlsa, 1
   connamecontropo:="papos"positidlsa
   
   
   
   
   if nocontes=0
    contedisplay:=positidlsa
   else
    contedisplay:="*"positidlsa
   
   GuiControl,1:, %connamecontropo%, %contedisplay%




if positidlsa=%finofconte%
   nocontes=1
   
  }
  
  

setwindowok()


Gui 1:-Disabled 
return





endlist:


GuiControl, Choose, idl1, %numberselecccontrol%
goto acc21
return






estbxxx2:

Gui 1:+Disabled
Gui, getdatgui2:+owner1  ; Make the main window (Gui #1) the owner of the "about box".

Gui, getdatgui2:Font, Norm
Gui, getdatgui2:Color ,,%stkcg5%
Gui, getdatgui2:Font, c0x%stkcg4%
Gui, getdatgui2:Color ,%stkcg6%

Gui, getdatgui2:-MinimizeBox


Gui, getdatgui2:Add, Text, x5 y13 w60 h20 center, X=
Gui, getdatgui2:Add, Edit, x65 y9 w40 h20 vgetdatgui2Data number, 1
Gui, getdatgui2:Add, Button, x35 y39 w40 h20 ggetdatgui2acc1, Ok
; Generated using SmartGUI Creator 4.0
Gui, getdatgui2:Show, Center h65 w110, %nameofthisscript1% - -X elementos

Return



getdatgui2GuiClose:
Gui getdatgui2:Destroy
Gui 1:-Disabled
Return




getdatgui2acc1:
Gui, getdatgui2:Submit, NoHide
Gui getdatgui2:Destroy
Gui 1:-Disabled

if  getdatgui2Data=
	return

xartqq:=numberselecccontrol

Gui, 1:Submit, NoHide
Gui 1:+Disabled 

vagwrit:=xartqq
vagwrit--
Loop
{
EnvAdd, vagwrit, 1


certas := "Nom"vagwrit
pertas := "Com"vagwrit


certasget1:="guarnom"vagwrit
certasget2:="guarcom"vagwrit

GuiControlGet, %certasget1%,1:,%certas%
GuiControlGet, %certasget2%,1:,%pertas%

}until vagwrit>=100






nunmasmennumb1=%xartqq%
	nunmasmennumb1--
	
nunmasmennumb2=%xartqq%
nunmasmennumb2+=%getdatgui2Data%
nunmasmennumb2--
Loop
{
	EnvAdd, nunmasmennumb1,1
		EnvAdd, nunmasmennumb2,1
	
	connom1:="Nom" nunmasmennumb1
	concom1:="Com" nunmasmennumb1
	
	guarconnom1:="guarnom"nunmasmennumb2
	guarconcom1:="guarcom"nunmasmennumb2
	guarconnom2=% %guarconnom1%
	guarconcom2=% %guarconcom1%
	
	GuiControl,1:, %connom1%, %guarconnom2%
GuiControl,1:, %concom1%, %guarconcom2%
	
}until nunmasmennumb1>=100


;limpieza de variables
limpieva1:=xartqq
limpieva1--
Loop 
{
 EnvAdd,  limpieva1, 1
 
texes1=guarnom%limpieva1%
texes2=guarcom%limpieva1%

%texes1%=
%texes2%=

}until limpieva1>=100



vesldl:=Numelemlist-getdatgui2Data
loop , %getdatgui2Data%
{
conNomborr:="Nom"vesldl
conComborr:="Com"vesldl
GuiControl,1:, %conNomborr%,
GuiControl,1:, %conComborr%, 
vesldl++
}


Gui 1:-Disabled 
return






estbx:
xartqq:=numberselecccontrol

Gui, 1:Submit, NoHide
Gui 1:+Disabled 
vagwrit=0

Loop
{
EnvAdd, vagwrit, 1



certas := "Nom"vagwrit
pertas := "Com"vagwrit

certasmenos := "guarnom"vagwrit
pertasmenos := "guarcom"vagwrit



GuiControlGet, %certasmenos%,1:, %certas%
GuiControlGet, %pertasmenos%,1:, %pertas%


}until vagwrit>=100









nunmasmennumb1=%xartqq%
	Envsub, nunmasmennumb1,1
	
nunmasmennumb2=%xartqq%

Loop
{
	EnvAdd, nunmasmennumb1,1
		EnvAdd, nunmasmennumb2,1
	
	connom1:="Nom" nunmasmennumb1
	concom1:="Com" nunmasmennumb1
	
	guarconnom1:="guarnom"nunmasmennumb2
	guarconcom1:="guarcom"nunmasmennumb2
	guarconnom2=% %guarconnom1%
	guarconcom2=% %guarconcom1%
	
	GuiControl,1:, %connom1%, %guarconnom2%
GuiControl,1:, %concom1%, %guarconcom2%
	
}until nunmasmennumb1>=100


;limpieza de variables
limpieva1=0

Loop 100
{
 EnvAdd,  limpieva1, 1
 
texes1=guarnom%limpieva1%
texes2=guarcom%limpieva1%

%texes1%=
%texes2%=

}

Gui 1:-Disabled 

conNomborr:="Nom"100
conComborr:="Com"100



GuiControl,1:, %conNomborr% 
GuiControl,1:, %conComborr%, 

return





estbxxx1:

Gui 1:+Disabled
Gui, getdatgui1:+owner1  ; Make the main window (Gui #1) the owner of the "about box".

Gui, getdatgui1:Font, Norm
Gui, getdatgui1:Color ,,%stkcg5%
Gui, getdatgui1:Font, c0x%stkcg4%
Gui, getdatgui1:Color ,%stkcg6%

Gui, getdatgui1:-MinimizeBox


Gui, getdatgui1:Add, Text, x5 y13 w60 h20 center, X=
Gui, getdatgui1:Add, Edit, x65 y9 w40 h20 vgetdatgui1Data number, 1
Gui, getdatgui1:Add, Button, x35 y39 w40 h20 ggetdatgui1acc1, Ok
; Generated using SmartGUI Creator 4.0
Gui, getdatgui1:Show, Center h65 w110, %nameofthisscript1% - +X elementos
Return



getdatgui1GuiClose:
Gui getdatgui1:Destroy
Gui 1:-Disabled
Return


getdatgui1acc1:
Gui, getdatgui1:Submit, NoHide
Gui getdatgui1:Destroy
Gui 1:-Disabled
if getdatgui1Data=
	return



xartqq2:=numberselecccontrol

Gui, 1:Submit, NoHide
Gui 1:+Disabled 
vagwrit:=xartqq2
vagwrit--
Loop
{
EnvAdd, vagwrit, 1


certas := "Nom"vagwrit
pertas := "Com"vagwrit


certasget1:="agreespguarNOM"vagwrit
certasget2:="agreespguarCOM"vagwrit

GuiControlGet, %certasget1%,1:,%certas%
GuiControlGet, %certasget2%,1:,%pertas%

}until vagwrit>=100




nunmasmennumb1=%xartqq2%
nunmasmennumb1+=%getdatgui1Data%
nunmasmennumb1--

nunmasmennumb2=%xartqq2%
nunmasmennumb2--
Loop
{
	EnvAdd, nunmasmennumb1,1
		EnvAdd, nunmasmennumb2,1
	
	connom1:="Nom" nunmasmennumb1
	concom1:="Com" nunmasmennumb1

	guarconnom1:="agreespguarNOM"nunmasmennumb2
	guarconcom1:="agreespguarCOM"nunmasmennumb2
	guarconnom2=% %guarconnom1%
	guarconcom2=% %guarconcom1%
	
	GuiControl,1:, %connom1%, %guarconnom2%
GuiControl,1:, %concom1%, %guarconcom2%
	
}until nunmasmennumb1>=100



;limpieza de variables
limpieva2:=xartqq2
limpieva2--
Loop 100
{
 EnvAdd,  limpieva2, 1
 
texes3=agreespguarNOM%limpieva2%
texes4=agreespguarCOM%limpieva2%

%texes3%=
%texes4%=

}


vesldl:=xartqq2
loop , %getdatgui1Data%
{
conNomborr:="Nom"vesldl
conComborr:="Com"vesldl
GuiControl,1:, %conNomborr%,
GuiControl,1:, %conComborr%, 
vesldl++
}


Gui 1:-Disabled 
return



estbx2:


xartqq2:=numberselecccontrol

Gui, 1:Submit, NoHide
Gui 1:+Disabled 
vagwrit:=xartqq2
vagwrit--
Loop
{
EnvAdd, vagwrit, 1


certas := "Nom"vagwrit
pertas := "Com"vagwrit


certasget1:="agreespguarNOM"vagwrit
certasget2:="agreespguarCOM"vagwrit

GuiControlGet, %certasget1%,1:,%certas%
GuiControlGet, %certasget2%,1:,%pertas%

}until vagwrit>=100







nunmasmennumb1=%xartqq2%

	
nunmasmennumb2=%xartqq2%
	Envsub, nunmasmennumb2,1
Loop
{
	EnvAdd, nunmasmennumb1,1
		EnvAdd, nunmasmennumb2,1
	
	connom1:="Nom" nunmasmennumb1
	concom1:="Com" nunmasmennumb1
	
	guarconnom1:="agreespguarNOM"nunmasmennumb2
	guarconcom1:="agreespguarCOM"nunmasmennumb2
	guarconnom2=% %guarconnom1%
	guarconcom2=% %guarconcom1%
	
	GuiControl,1:, %connom1%, %guarconnom2%
GuiControl,1:, %concom1%, %guarconcom2%
	
}until nunmasmennumb1>=100










;limpieza de variables
limpieva2:=xartqq2
limpieva2--
Loop
{
 EnvAdd,  limpieva2, 1
 
texes3=agreespguarNOM%limpieva2%
texes4=agreespguarCOM%limpieva2%

%texes3%=
%texes4%=

}until nunmasmennumb1>=100





conNomborr:="Nom"xartqq2
conComborr:="Com"xartqq2

Gui 1:-Disabled 


GuiControl,1:, %conNomborr%,
GuiControl,1:, %conComborr%, 


return





borrarcontext:

conNomborr:="Nom"numberselecccontrol
conComborr:="Com"numberselecccontrol


GuiControl,1:, %conNomborr%,
GuiControl,1:, %conComborr%, 


return








simpleadd1:
certas := "Nom"numberselecccontrol
pertas := "Com"numberselecccontrol
GuiControl, 1:, %certas%,Name
GuiControl, 1:, %pertas%, 1Elemento  |2Parametros  |3Icono  |4Index Icono dll
return





simpleadd2:
Gui, 1:Submit, NoHide
certas := "Nom"numberselecccontrol
pertas := "Com"numberselecccontrol
GuiControlGet, Extracc1,1:, %certas%

if (Extracc1="" or Extracc1=".")
	Extracc1=Name
	

GuiControl, 1:, %certas%,%barri%%Extracc1%%barrc%
GuiControl, 1:, %pertas%, Barra

return


simpleadd3:
conteespccom:="  |  |  X:\carp1\File2.ico"
goto simpleaddagrup
return




simpleadd4:
conteespccom:="  |  Clipboardtxt"
goto simpleaddagrup
return

simpleadd5:
conteespccom:="  |  Clipboard"
goto simpleaddagrup
return

simpleadd6:
conteespccom:="  |  Config"
goto simpleaddagrup
return

simpleadd7:
conteespccom:="  |  Link"
goto simpleaddagrup
return


simpleadd8:
conteespccom:="  |  Lista"
goto simpleaddagrup
return



simpleaddagrup:
Gui, 1:Submit, NoHide
pertas := "Com"numberselecccontrol
GuiControlGet, Extracc2,1:, %pertas%
if (Extracc2="" or Extracc2=".")
	Extracc2=1Elemento
	
GuiControl, 1:, %pertas%, %Extracc2%%conteespccom%
return
















cutcontexmenu:

Gui, 1:Submit, NoHide


certas := "Nom"numberselecccontrol
pertas := "Com"numberselecccontrol

GuiControlGet, Extracc1,1:, %certas%
GuiControlGet, Extracc2,1:, %pertas%

Clipboard:=Extracc1 "`n" Extracc2


goto borrarcontext

return


copcontexmenu:

Gui, 1:Submit, NoHide


certas := "Nom"numberselecccontrol
pertas := "Com"numberselecccontrol

GuiControlGet, Extracc1,1:, %certas%
GuiControlGet, Extracc2,1:, %pertas%

Clipboard:=Extracc1 "`n" Extracc2
setwindowcopy()
return




Pasttertt:

Gui, 1:Submit, NoHide


conclipb:=Clipboard

pastedata1=
pastedata2=

varconnum1=0
Loop, Parse, conclipb, `n, `r     
{
    
   EnvAdd, varconnum1,1

varconnum3:="pastedata"varconnum1

%varconnum3%=%A_LoopField%
}

certas := "Nom"numberselecccontrol
pertas := "Com"numberselecccontrol


GuiControl, 1:, %certas%, %pastedata1%
GuiControl, 1:, %pertas%, %pastedata2%


return




Dismencontexborrtab:
GuiControlGet, tyux,1:, Basica1,,
EnvSub, tyux, 1


if tyux=0
return



MsgBox 0x40024, %nameofthisscript1% - Verificación,¿Desea continuar?
IfMsgBox Yes, {


tyux2:=tyux*10

varborrar:=tyux2-10

loop 10
{
	
	EnvAdd, varborrar,1
	
	namcontrNom:="Nom"varborrar
	namcontrCom:="Com"varborrar
	
	GuiControl,1:, %namcontrNom%, 
GuiControl,1:, %namcontrCom%, 
	
	
}






          } 
              Else IfMsgBox No, {
              Return
              }


return



secccort:

Gui, cortar1:+owner1  ; Make the main window (Gui #1) the owner of the "about box".


Gui, cortar1:Font, Norm
Gui, cortar1:Color ,,%stkcg5%
Gui, cortar1:Font, c0x%stkcg4%
Gui, cortar1:Color ,%stkcg6%




Gui, cortar1:-MinimizeBox



Gui, cortar1:Add, Edit, x9 y9 w40 h20 vdesdecortar1 number, %numberselecccontrol%
Gui, cortar1:Add, Text, x56 y12 w30 h20 , Hasta
Gui, cortar1:Add, Edit, x89 y9 w40 h20 vdesdecortar2 number, 100
Gui, cortar1:Add, Button, x90 y39 w40 h20 gContinsecccort, Ok
Gui, cortar1:Add, Checkbox, x9 y39 w60 h20 vdolocopvar,  Copiar 
; Generated using SmartGUI Creator 4.0
Gui, cortar1:Show, Center h70 w140, %nameofthisscript1% - Rango a cortar
Return



cortar1GuiClose:
Gui cortar1:Destroy
Gui 1:-Disabled
Return




Continsecccort:




Gui, cortar1:Submit, NoHide


iniciodeloopcortar1:=desdecortar1

iniciodeloopcortar2:=desdecortar2


Contedorcortefinal :=


Gui 1:+Disabled
Gui cortar1:Destroy

;indica el primer loop el cual es diferente
variableinici=1

EnvSub, iniciodeloopcortar1,1
iniciodeloopcortar3:=iniciodeloopcortar1
iniciodeloopcortar4:=iniciodeloopcortar2
loop 
{
EnvAdd, iniciodeloopcortar1,1


 nonactual1:="Nom"iniciodeloopcortar1
 conactual1:="Com"iniciodeloopcortar1


 
GuiControlGet, nonactual2,1:, %nonactual1%
GuiControlGet, conactual2,1:, %conactual1%



If variableinici=1
{
Contedorcortefinal.= nonactual2 "`n" conactual2 
variableinici=0
}
else
 {
Contedorcortefinal.= "`n" nonactual2  "`n" conactual2 
}


if iniciodeloopcortar1>=%iniciodeloopcortar2%
 break
}


Clipboard:=Contedorcortefinal


if dolocopvar=1
goto saltoerase1


Loop
{
EnvAdd, iniciodeloopcortar3,1
 nonactual3:="Nom"iniciodeloopcortar3
 conactual3:="Com"iniciodeloopcortar3
 
GuiControl, 1:, %nonactual3%,
GuiControl, 1:, %conactual3%,

if iniciodeloopcortar3>=%iniciodeloopcortar4%
 break
}





saltoerase1:
Gui 1:-Disabled 
setwindowok()
Gui 1:Show 
return




seccpegar:

Gui, pegar1:+owner1  ; Make the main window (Gui #1) the owner of the "about box".

Gui, pegar1:Font, Norm
Gui, pegar1:Color ,,%stkcg5%
Gui, pegar1:Font, c0x%stkcg4%
Gui, pegar1:Color ,%stkcg6%

Gui, pegar1:-MinimizeBox


Gui, pegar1:Add, Text, x5 y13 w60 h20 center, Desde el
Gui, pegar1:Add, Edit, x65 y9 w40 h20 vdesdepegar1 number, %numberselecccontrol%
Gui, pegar1:Add, Button, x35 y39 w40 h20 gContinseccpegar, Ok
; Generated using SmartGUI Creator 4.0
Gui, pegar1:Show, Center h70 w110, %nameofthisscript1% - Posición inicial
Return



pegar1GuiClose:
Gui pegar1:Destroy
Gui 1:-Disabled
Return




Continseccpegar:




Gui, pegar1:Submit, NoHide


iniciodelooppegar1:=desdepegar1



Gui 1:+Disabled
Gui pegar1:Destroy



varcondatapegar:=Clipboard

variacontadata1=0
Loop, Parse, varcondatapegar, `n, `r 
{
    
   EnvAdd, variacontadata1,1

condataofpaste1:="dataofpaste"variacontadata1

%condataofpaste1%=%A_LoopField%


}



varnumNCom=0
EnvSub, iniciodelooppegar1,1
Loop
{
 EnvAdd, varnumNCom,1
 condataofpaste2:="dataofpaste"varnumNCom 
 condataofpaste4=% %condataofpaste2%
 
 EnvAdd, iniciodelooppegar1,1
  nonactual4:="Nom"iniciodelooppegar1
 GuiControl, 1:, %nonactual4%, %condataofpaste4%
 
 if iniciodelooppegar1>100
 break
 
 EnvAdd, varnumNCom,1
 condataofpaste6:="dataofpaste"varnumNCom 
 condataofpaste7=% %condataofpaste6%

 conactual4:="Com"iniciodelooppegar1
GuiControl, 1:, %conactual4%, %condataofpaste7%




if varnumNCom>=%variacontadata1%
 break
}


Gui 1:-Disabled 
setwindowok()
Gui 1:Show 

return



































;Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********
;Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********


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



Gui, gec:Show, NA %gui_positionwin1% w100 h50, ......
Sleep, 1000

Gui gec:Hide
Return
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



;definewhgui-definewhgui-definewhgui-definewhgui
definewhgui(guiposition,h,w,guinamehw)
{
 
 if guiposition=Center
		goto nomalz
		
varichan:="winzmodif_"guinamehw
if %varichan%=1
	goto nomalz
	

if w=
	goto nomalz

if h=
	goto nomalz


if w=ERROR
	goto nomalz

if h=ERROR
	goto nomalz




if w=
	goto nomalz

if h=
	goto nomalz


if w is not integer
	goto nomalz

if h is not integer
	goto nomalz


if w>%usonuev1%
	w:=usonuev1

if h>%usonuev2%
	h:=usonuev2


varichan2:="Wtampredetmin_" guinamehw
varichan4=% %varichan2%
if w<%varichan4%
w=%varichan4%

varichan3:="Htampredetmin_" guinamehw
varichan6=% %varichan3%
if h<%varichan6%
h=%varichan6%




	result:=h "|" w


		return result
	nomalz:	
		
		
		wconvarziz:="Wtampredet_"guinamehw
		hconvarziz:="Htampredet_"guinamehw
		
			wconvarziz1=% %wconvarziz%
		hconvarziz1=% %hconvarziz%
		
		result:=hconvarziz1 "|" wconvarziz1
		
 return result
}



;gui utilitaria de COPIAR
setwindowcopy()
{
	
MouseGetPos ,copyx,copyy

EnvSub, copyx,105
EnvSub, copyy,55
SoundPlay, *64


gui_positionwin1=x%copyx% y%copyy%
guipositionmod:=ShowGuiPlease(50,100,gui_positionwin1,"copygui")
gui_positionwin1=%guipositionmod%



Gui, copygui:Show, NA %gui_positionwin1% w100 h50, ......
Sleep, 1000

Gui copygui:Hide
Return
}







;ordenar listade elementos
SortStrCmpLogical(vTextA, vTextB, vOffset) ;for use with AHK's Sort command
{
	local
	vRet := DllCall("shlwapi\StrCmpLogicalW", "WStr",vTextA, "WStr",vTextB)
	return vRet ? vRet : -vOffset
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






;Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********
;Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********Functions********





















editsejhal:


if  activeEditarBarra=1
{
	Gui, editse:Show
	return
}


if activeestilo=1
	return


activeEditarBarra=1

if DLsa =
  {  
MsgBox 0x40040, %nameofthisscript1% - Información, Ningun elemento seleccionado., 1
    return
    }




Gui, 1:+Disabled

Gui, editse:Font, Norm
Gui, editse:Color ,,%stkcg5%
Gui, editse:Font, c0x%stkcg4%
Gui, editse:Color ,%stkcg6%

Gui, editse:-MinimizeBox
Gui, editse:Add, Edit, x32 y9 w190 h20 vevmbarr1, %barri%
Gui, editse:Add, Edit, x32 y39 w190 h20 vevmbarr2, %barrc%
Gui, editse:Add, Text, x12 y9 w20 h20 , -{
Gui, editse:Add, Text, x12 y39 w20 h20 , }-
Gui, editse:Add, Text, x12 y75 w260 h20 vexapunic center, 

Gui, editse:Add, Button, x342 y69 w30 h20 gaccdd, Ok

Gui, editse:Add, Button, x272 y69 w60 h20 gsetaccdefnbar2, Restaurar

Gui, editse:Add, Button, x232 y9 w140 h20 gaccdefnbarr, Predeterminadas
Gui, editse:Add, Button, x232 y39 w140 h20 gsetaccdefnbar, Establecer como predet.



; Generated using SmartGUI Creator 4.0
Gui, editse:Show, Center h105 w385, %nameofthisscript1% - Barra del archivo ini


Loop
{
 Gui, editse:Submit, NoHide
 GuiControlGet, axcentra, editse:, evmbarr1
GuiControlGet, axcensal, editse:, evmbarr2

GuiControl, editse:, exapunic, %axcentra%Example%axcensal%
sleep 1500

   if activeEditarBarra=0
        break
}
Return




setaccdefnbar2:

GuiControl,  editse:,evmbarr1,-------{
GuiControl,  editse:,evmbarr2,}-------

return




setaccdefnbar:

IniWrite, %evmbarr1%, %CLAVEaini%, barra, a
IniWrite, %evmbarr2%, %CLAVEaini%, barra, b

setwindowok()
 

Return




accdefnbarr:
GuiControl,  editse:,evmbarr1,%defaulbarri%
GuiControl,  editse:,evmbarr2,%defaulbarrc%
Return

accdd:
Gui, editse:Submit, NoHide

barri=%evmbarr1%
barrc=%evmbarr2%


GuiControl,  1:,decxvabarr1,%barri%%nameofthisscript1%%barrc%

 iniwrite, %barri%, %DLsa%, DLWT, c
iniwrite, %barrc%, %DLsa%, DLWT, d


editseGuiClose:
activeEditarBarra=0
Gui, 1:-Disabled
Gui, editse:Destroy
Return






















































gbgui:







Gui, gbgui:+AlwaysOnTop 
Gui, gbgui:Font, Norm
Gui, gbgui:Color ,,%stkcg5%
Gui, gbgui:Font, c0x%stkcg4%,Verdana
Gui, gbgui:Color ,%stkcg6%
Gui, gbgui:Font, s8
Gui, gbgui:Add, Tab,x2 y2 w505 h205 vContextual AltSubmit -wrap,`DLs|Basico|Campos|Com Base|Pleca|Com E1|Com E2||Com E3|Com SE|Comando|Estilo|Parrafo|Otros 1|Otros 2|


Gui, gbgui:Add, Text, x10 y32 w485 h165,  DLs es un programa sencillo escrito con el lenguaje AutoHotkey para la creación de listas con diferentes rutas, texto, direcciones web o cualquier otra cosa útil como los comandos Shell. Simplemente por ahora DLs es un medio no un fin en sí mismo. `n`nLas listas creadas utilizan la extensión "ini" y básicamente son archivos de texto se pueden editar directamente con un editor de texto o puedes usar la ventana "Comando" en el menú de ayuda. `n`n`n`nAgradecimientos especiales a AutoHotkey scripting language,  Created by Chris Mallet and Others.



   Gui, gbgui:Tab, Basico
Gui, gbgui:Add, Text, x10 y32 w485 h165,  Una lista está compuesta por 100 elementos, 10 elementos desplegados en cada pestaña o pestaña de la aplicación DLs. Cada elemento de la lista está compuesto de un nombre, un comando y un número de elemento.  Tambien puedes agregar información acerca de la lista, generar una nueva con otra letra insignia y cambiar el numero de elementos visibles en la pestaña “DLs”.  `n`nAl guardar una lista DLs creará una copia de seguridad en la misma carpeta esto solo hasta 5 copias previas, para restaurar una copia (extensiones "1","2","3","4" y "5"), abre la misma y da clic en el botón restaurar o ve al menú archivo y selecciona la misma opción, si aún existe la lista original se te pedirá confirmación, posteriormente DLs abrirá la lista restaurada.



   Gui, gbgui:Tab, Campos
   
   
Gui, gbgui:Add, Text, x10 y52 w485 h70 , El número del elemento es el representante del mismo por lo que dando clic secundario en él se despliegan las acciones para un elemento individual.

Gui, gbgui:Add, Edit, x113 y109 w385 h30 , Campo para el nombre del elemento
Gui, gbgui:Add, Edit, x113 y139 w385 h30 , Campo para el comando o instrucciones (Com)

Gui,gbgui: Add, GroupBox, x7 y99 w105 h70 , Número del
Gui, gbgui:Add, Text, x15 y125 w90 h30 vixeras center, elemento*

   
Gui, gbgui:Add, Text, x10 y169 w485 h30 , *Este elemento no será visible  en la lista desplegable o Drop Down List del programa Select and execute



      Gui, gbgui:Tab,Com Base
	  

Gui, gbgui:Add, Edit, x53 y39 w445 h30 , Pdf de Elisa
Gui, gbgui:Add, Edit, x53 y69 w445 h110 , Programa o archivo o carpeta o texto o comando Shell o página web o el comando "Barra" |  parámetros para el programa  o archivos para abrir con el mismo o  un comando para el programa que use la lista | Icono o imagen que represente al elemento de la lista | En caso de que el icono provenga de un archivo "dll" se indica aquí el número de tal icono

Gui,gbgui: Add, GroupBox, x7 y29 w45 h150 ,
Gui, gbgui:Add, Text, x15 y95 w35 h30 vixeras1 center, 78

   Gui, gbgui:Tab,Pleca

Gui, gbgui:Add, Text, x10 y32 w485 h90 , El carácter "|" o Pleca se utiliza para separar las instrucciones y que el programa que use la lista pueda ejecutar las instrucciones de manera correcta por lo que no debe de usarse como parte del texto. `nEn los siguientes ejemplos nótese el uso del caracter pleca:

Gui, gbgui:Add, Edit, x53 y97 w445 h20 , Archivo x 
Gui, gbgui:Add, Edit, x53 y117 w445 h20 ,C:\cosx\1\root\Basico.doc         | "X:\carp1\File1.doc" "X:\carp1\File2.doc"
Gui,gbgui: Add, GroupBox, x7 y91 w45 h46 ,
Gui, gbgui:Add, Text, x12 y107 w35 h20 vixeras26 center, 11


Gui, gbgui:Add, Edit, x53 y141 w445 h20 , Programa 1
Gui, gbgui:Add, Edit, x53 y161 w445 h20 ,C:\veix.exe||C:\myico\feopdf.ico |
Gui,gbgui: Add, GroupBox, x7 y135 w45 h46 ,
Gui, gbgui:Add, Text, x12 y155 w35 h20 vixeras27 center, 12





   Gui, gbgui:Tab, Com E1

Gui, gbgui:Add, Text, x10 y35 w485 h20 center, Ejemplos: Los paréntesis y su contenido solo son ilustrativos no son necesarios.

Gui, gbgui:Add, Edit, x53 y53 w445 h20 , Word (Abrirá Word)
Gui, gbgui:Add, Edit, x53 y73 w445 h20 , C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE
Gui,gbgui: Add, GroupBox, x7 y47 w45 h46 ,
Gui, gbgui:Add, Text, x12 y63 w35 h20 vixeras8 center, 23

Gui, gbgui:Add, Edit, x53 y97 w445 h20 , Word (Abrirá con Word los archivos indicados)
Gui, gbgui:Add, Edit, x53 y117 w445 h20 ,C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE|"X:\carp1\File1.doc" "X:\carp1\File2.doc" 
Gui,gbgui: Add, GroupBox, x7 y91 w45 h46 ,
Gui, gbgui:Add, Text, x12 y107 w35 h20 vixeras6 center, 24


Gui, gbgui:Add, Edit, x53 y141 w445 h20 , Word (Abrirá Word pero el icono mostrado será  otro)
Gui, gbgui:Add, Edit, x53 y161 w445 h20 ,C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE|| C:\Windows\System32\SHELL32.dll | 9
Gui,gbgui: Add, GroupBox, x7 y135 w45 h46 ,
Gui, gbgui:Add, Text, x12 y155 w35 h20 vixeras7 center, 25

   
   
   
   
      Gui, gbgui:Tab, Com E2
Gui, gbgui:Add, Text, x10 y35 w485 h20 center, Ejemplos: Los paréntesis y su contenido solo son ilustrativos no son necesarios.

Gui, gbgui:Add, Edit, x53 y53 w445 h20 , Files (Abrirá la carpeta)
Gui, gbgui:Add, Edit, x53 y73 w445 h20 , C:\Program Files
Gui,gbgui: Add, GroupBox, x7 y47 w45 h46 ,
Gui, gbgui:Add, Text, x12 y63 w35 h20 vixeras9 center, 26

Gui, gbgui:Add, Edit, x53 y97 w445 h20 , Files (Abrirá la carpeta pero el icono mostrado será  otro)
Gui, gbgui:Add, Edit, x53 y117 w445 h20 ,C:\Program Files|   | C:\Windows\System32\SHELL32.dll | 13
Gui,gbgui: Add, GroupBox, x7 y91 w45 h46 ,
Gui, gbgui:Add, Text, x12 y107 w35 h20 vixeras10 center, 27


Gui, gbgui:Add, Edit, x53 y141 w445 h20 , Files (Abrirá la carpeta pero el icono mostrado será  otro)
Gui, gbgui:Add, Edit, x53 y161 w445 h20 ,C:\Program Files|   | C:\myico\fix.ico 
Gui,gbgui: Add, GroupBox, x7 y135 w45 h46 ,
Gui, gbgui:Add, Text, x12 y155 w35 h20 vixeras11 center, 28


         Gui, gbgui:Tab, Com E3
Gui, gbgui:Add, Text, x10 y35 w485 h20 center, Ejemplos: Los paréntesis y su contenido solo son ilustrativos no son necesarios.

Gui, gbgui:Add, Edit, x53 y53 w445 h20 , Pdf (Abrirá el archivo con el programa predeterminado)
Gui, gbgui:Add, Edit, x53 y73 w445 h20 , C:\mypdffiles\ider.pdf
Gui,gbgui: Add, GroupBox, x7 y47 w45 h46 ,
Gui, gbgui:Add, Text, x12 y63 w35 h20 vixeras12 center, 29

Gui, gbgui:Add, Edit, x53 y97 w445 h20 , -------{Music}-------  (Sin función solo separa los elementos entre sí. También se le puede poner un icono o imagen)
Gui, gbgui:Add, Edit, x53 y117 w445 h20 ,Barra | | C:\myico\notapp.ico 
Gui,gbgui: Add, GroupBox, x7 y91 w45 h46 ,
Gui, gbgui:Add, Text, x12 y107 w35 h20 vixeras13 center, 30


Gui, gbgui:Add, Edit, x53 y141 w445 h20 ,   Files Music  (Abrirá el archivo con el programa predeterminado pero el icono mostrado será otro)
Gui, gbgui:Add, Edit, x53 y161 w445 h20 ,   C:\mypdffiles\ider.pdf|   |  C:\myico\feopdf.ico 
Gui,gbgui: Add, GroupBox, x7 y135 w45 h46 ,
Gui, gbgui:Add, Text, x12 y155 w35 h20 vixeras14 center, 31




   
   

; Generated using SmartGUI Creator 4.0
 Gui, gbgui:Tab, Com SE


Gui, gbgui:Add, Text, x10 y35 w485 h20 center,  "Config"  "Clipboard" y "Link".  Comandos para  el programa “Select and execute".


Gui, gbgui:Add, Edit, x53 y53 w445 h20 , Panel de control (Abrirá el Panel de Control)
Gui, gbgui:Add, Edit, x53 y73 w445 h20 , shell:ControlPanelFolder |Config
Gui,gbgui: Add, GroupBox, x7 y47 w45 h46 ,
Gui, gbgui:Add, Text, x12 y63 w35 h20 vixeras3 center, 98




Gui, gbgui:Add, Edit, x53 y97 w445 h20 , Dirección de Armando (Copiará "Col. Manzana Av. Idet #45")
Gui, gbgui:Add, Edit, x53 y117 w445 h20 ,Col. Manzana Av. Idet #45|Clipboard
Gui,gbgui: Add, GroupBox, x7 y91 w45 h46 ,
Gui, gbgui:Add, Text, x12 y107 w35 h20 vixeras4 center, 99


Gui, gbgui:Add, Edit, x53 y141 w445 h20 , Google (Abrirá la página "www.google.com" con el navegador predeterminado)
Gui, gbgui:Add, Edit, x53 y161 w445 h20 ,www.google.com|Link
Gui,gbgui: Add, GroupBox, x7 y135 w45 h46 ,
Gui, gbgui:Add, Text, x12 y155 w35 h20 vixeras5 center, 100


 Gui, gbgui:Tab, Comando


Gui, gbgui:Add, Text, x10 y28 w485 h175 ,  Comando es una ventana para crear los comandos necesarios para la lista en cuestión. Busca esta opción en el menú ayuda. Su uso es simple con el explorador de archivos ubícate en el elemento deseado después abre la ventana “Comando” selecciona la forma del comando final en la lista de opciones disponibles en la parte central inferior de la misma ventana, posteriormente selecciona el elemento en cuestión y arrástralo a la ventana comando. `n`nDe esta manera la ventana creara el comando de acuerdo a la forma seleccionada. Al terminar solo da clic en el símbolo de Hashtag"#" para copiar el contenido, o en el botón "ok" si deseas cerrar la ventana. A continuación, dirígete al número de elemento donde deseas colocar los campos, da clic secundario en el número y selecciona pegar listo los campos están listos solo falta agregar más elementos editar u ordenarlos.




 Gui, gbgui:Tab,Estilo 
Gui, gbgui:Font, s12 italic, Times New Roman



Gui, gbgui:Add, Text, x10 y32 w485 h165 , Las pestañas pueden cambiar de tamaño, tipo, color y estilo de la letra. También es posible cambiar el color de la ventana y de los campos.`nBúscala la opción "Estilo" en el menú "Pestañas", recuerda que para probar un tema solo tienes que dar clic secundario en la misma ventana y seleccionar la opción "Muestra previa". En el caso de los colores las opciones para editarlos se despliegan dando clic secundario en la leyenda a lado de los mismos. Finalmente los colores se encuentran en formato hexadecimal.




Gui, gbgui:Font, Norm
Gui, gbgui:Color ,,%stkcg5%
Gui, gbgui:Font, c0x%stkcg4%,Verdana
Gui, gbgui:Color ,%stkcg6%
Gui, gbgui:Font, s8



 Gui, gbgui:Tab, Parrafo
Gui, gbgui:Add, Text, x10 y32 w485 h165 , Por ahora DLs solo acepta una sola línea de texto sin embargo en la ventana comando da clic secundario, en la misma y selecciona la opción "Parrafo" el texto copiado en el porta papeles, se convertirá en texto de una sola línea y se desplegara en el campo comando de la misma ventana.   `n`nOtra opción es utilizar el comando "Clipboardtxt" accesible desde el menú secundario "plantillas" en la ventana comando, mediante este último el programa Select and execute copiara el contenido del archivo “txt” en cuestión.





 Gui, gbgui:Tab, Otros 1
Gui, gbgui:Add, Text, x10 y32 w485 h165 , IMAGEN: Pueden usarse imágenes en vez de iconos, pero se recomienda el uso de iconos o imagines pequeñas para mejorar el rendimiento. `n`nUSB: En cuanto a la portabilidad AutoHotkey permite el uso de rutas sin la letra del disco, es decir en vez de esto "U:\0-U" esto otro "\0-U" siempre y cuando el programa que usa la lista este ubicado este en el mismo disco local o unidad de almacenamiento externo que el elemento solicitado. `n`nLETRA:La letra insignia es una letra que acompaña a cada lista. En el caso de DLsa.ini, su letra insignia es "a", esta letra es usada para diferenciar las listas en el sistema de archivos y en las variables al escribir los scripts en AutoHotkey.




 Gui, gbgui:Tab, Otros 2
Gui, gbgui:Add, Text, x10 y32 w485 h165 , CARPETAS: Se recomienda no usar la última barra inversa "\" en las direcciones en carpetas. Esto "U:\0-U\" pasaría a esto "U:\0-U". Esto es opcional dependiendo de la funcionalidad de las aplicaciones. `n`nDLL: Es posible crear un acceso directo del elemento deseado y personalizarlo, posteriormente se selecciona el formato “Sin edición” en la ventana comando, despues arrastra el acceso directo a la misma  y la ruta del archivo dll, el número del icono, ruta del elemento y su nombre serán extraídos. `n`nFinalmente recuerda este programa no tiene garantía, úsalo bajo tu propio riesgo. No me responsabilizo ante la perdida de datos o el mal uso del mismo.




Gui, gbgui:Show, Center  h210 w510 ,%nameofthisscript1% - Guía básica

GuiControl, gbgui:choose, Contextual, 1
return




gbguiGuiclose:
gui, gbgui:Destroy
return


noexamp:
return


gbguiGuiContextMenu:


If InStr(A_GUICONTROL, "ixeras")
{
	goto secondmenuex
}

return




secondmenuex:
Menu, menucomandoex, Show, %A_GuiX%, %A_GuiY%
return








aomd1GuiContextMenu:

Menu, cmixm, Show, %A_GuiX%, %A_GuiY%

return








peach1:
 GuiControl, aomd1:, nomediesdls1, Name
GuiControl, aomd1:, nomediesdls2, text  |Clipboard
return

peach2:
 GuiControl, aomd1:, nomediesdls1, Name
GuiControl, aomd1:, nomediesdls2, shell::  |Config
return


peach3:
 GuiControl, aomd1:, nomediesdls1, Name
GuiControl, aomd1:, nomediesdls2, www  |Link
return


peach4:
 GuiControl, aomd1:, nomediesdls1, Name
GuiControl, aomd1:, nomediesdls2, Ruta  ||X:\carp1\File2.ico
return

peach8:
 GuiControl, aomd1:, nomediesdls1, Name
GuiControl, aomd1:, nomediesdls2, X:\Start new image.txt   |Lista
return




peach5:
GuiControl, aomd1:, nomediesdls1,%barri%Name%barrc%
GuiControl, aomd1:, nomediesdls2, Barra
return




peach6:
GuiControl, aomd1:, nomediesdls1,Name
GuiControl, aomd1:, nomediesdls2, 1Elemento|2Parametros|3Icono|4Index Icono dll
return


peach7:
GuiControl, aomd1:, nomediesdls1, Name
GuiControl, aomd1:, nomediesdls2, X:\capitulo1.txt|Clipboardtxt
return







rutax:

if rutaon=1
{
	Gui, aomd2:Show
	return
}

rutaon=1
Gui, aomd2:+AlwaysOnTop
Gui, aomd2:Color ,,%stkcg5%
Gui, aomd2:Font, S%stkcg3% c0x%stkcg4% %stkcgfin2%, %stkcg1%
Gui, aomd2:Color ,%stkcg6%
Gui, aomd2:Add, Text, x0 y18 w200 h50 center vrutaxaer, Ruta
Gui, aomd2:Show, center  h50 w200,%nameofthisscript1% - Ruta
return


aomd2Guiclose:
rutaon=0
Gui, aomd2:destroy
return



aomd2GuiDropFiles:
{



elementoruta := A_GuiEvent


Loop, Parse, elementoruta, `n, `r                                   
	{
	 If (A_Index >= 2)
{
MsgBox 0x40040, %nameofthisscript1% - Información,  El limite de elementos para esta operación es de 1., 1
		return
}        
        
Clipboard=%elementoruta%


setwindowcopy()
}


}
return





aomd1:



;variable comand acticvo

if  activeconfig=1
{

Gui, aomd1:Show
return
}

;variable comand acticvo
activeconfig=1


;menucontextual


Menu, Planti, Add, General, peach6
Menu, Planti, Add, Barra, peach5
Menu, Planti, Add, Icono, peach4
Menu, Planti, Add
Menu, Planti, Add, Clipboardtxt, peach7
Menu, Planti, Add, Clipboard, peach1
Menu, Planti, Add, Config, peach2
Menu, Planti, Add, Link, peach3
Menu, Planti, Add, Lista, peach8


Menu, cmixm, Add, Cortar, Cuterttess2
Menu, cmixm, Add, Copiar, Cuterttess
Menu, cmixm, Add, Pegar, Pastterttess
Menu, cmixm, Add, Borrar, eracontesedicopas
Menu, cmixm, Add
Menu, cmixm, Add, Plantillas, :Planti
Menu, cmixm, Add, Parrafo, Parrafo
Menu, cmixm, Add
Menu, cmixm, Add, Estilo, stkust
Menu, cmixm, Add, Barra del archivo ini,  editsejhal
Menu, cmixm, Add, Ruta, rutax








codoper=
(Join|
Sin edición|
Barra|
Nombre extensión y disco local|
Modo portable USB|
Agregar parametros con ejecutable|
Agregar parametros con ejecutable USB|
)



if Extracc1=
 Extracc1=.

if Extracc2=
Extracc2= 





Gui, aomd1:+AlwaysOnTop +Resize +Hwndgui_id2


Gui, aomd1:Font, Norm
Gui, aomd1:Color ,,%stkcg5%
Gui, aomd1:Font, s9 c0x%stkcg4%
Gui, aomd1:Color ,%stkcg6%





Gui, aomd1:Add, DropDownList, x87 y59 w275 h10  r10 altsubmit  vcodoper12 hwndCBBID1, %codoper%
CtlColors.Attach(CBBID1,stkcg5,stkcg4)
GuiControl, aomd1:Choose, codoper12, %codoper12save%

Gui, aomd1:Add, Button, x372 y59 w50 h20 vcontrolcomand1  gclosecoma2, Ok

Gui,aomd1: Add, GroupBox, x7 y3 w55 h46 vcontrolcomand2, 






Gui, aomd1:Add, Text, x20  y62  w60 h20 vcontrolcomand6 center, Formato:

Gui, aomd1:Color ,,%stkcg5%
Gui, aomd1:Font, S%stkcg3% c0x%stkcg4% %stkcgfin2%, %stkcg1%
Gui, aomd1:Color ,%stkcg6%

Gui, aomd1:Add, Edit, x63 y9 w360 h20 vnomediesdls1, %Extracc1%
Gui, aomd1:Add, Edit, x63 y29 w360 h20 vnomediesdls2, %Extracc2%

idertcom=%stkcg3%
EnvAdd, idertcom,%Ziseoftextnumb%
Gui, aomd1:Font, S%idertcom%
Gui, aomd1:Add, Text, x10 y20 w50 h20 vcontrolcomand3 gCuterttess center, #
; Generated using SmartGUI Creator 4.0


;definewhgui-definewhgui-definewhgui-definewhgui
correcthw:=definewhgui(gui_position2,guihposit2,guiwposit2,"aomd1")
correcthwcont:=StrSplit(correcthw, "|")
correcthh=% correcthwcont[1]
correctww=% correcthwcont[2]



;ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease-ShowGuiPlease
guipositionmod:=ShowGuiPlease(correcthh,correctww,gui_position2,"aomd1")
gui_position2=%guipositionmod%


Gui, aomd1:Show, %gui_position2%  h%Htampredet_aomd1% w%Wtampredet_aomd1%,%nameofthisscript1% - Comando

;************

WinMove,ahk_id %gui_id2%,,,,%correctww%,%correcthh%


return






aomd1Resize:
;TAbs
 GuiControl, 1:Move, controlcomand1, h50
 GuiControl, 1:Move, controlcomand2, h50
  GuiControl, 1:Move, controlcomand3, h50

 GuiControl, 1:Move, controlcomand6, h50

 GuiControl, 1:Move, nomediesdls1, h50
  GuiControl, 1:Move, nomediesdls2, h50
  GuiControl, 1:Move, codoper12, h50
 
 
 return
 
 
aomd1GuiSize:
	If (A_EventInfo = 1) ; The window has been minimized.
		Return
        



AutoXYWH("yx", "controlcomand1")

AutoXYWH("h 0.45 y 0.5", "controlcomand3")
AutoXYWH("h .998", "controlcomand2")

AutoXYWH("y", "controlcomand6")

AutoXYWH("w h 0.5", "nomediesdls1")
AutoXYWH("w h 0.5 y 0.5", "nomediesdls2")
AutoXYWH("yw", "codoper12")





return












Parrafo:



strinmodlist:=Clipboard
strinmodlist2:=Clipboard

cambscreenvv6:=StrReplace(strinmodlist, "`n"," ")
cambscreenvv4:=StrReplace(cambscreenvv6, "`r"," ")

averirgtr=0
Loop, Parse, strinmodlist2, " "  
{

EnvAdd, averirgtr, 1


vaercomgg:="textlinea"averirgtr

%vaercomgg%=%A_LoopField%	;para numeracion

if averirgtr>=4
break


}




GuiControl, aomd1:, nomediesdls1, %textlinea1%  %textlinea2%  %textlinea3%  %textlinea4%

GuiControl, aomd1:, nomediesdls2, %cambscreenvv4%


;limpieza
textlinea1:=
textlinea2:=
textlinea3:=
textlinea4:=
strinmodlist:=
strinmodlist2:=


return




Pastterttess:

Gui, aomd1:Submit, NoHide


conclipb:=Clipboard

pastedata1=
pastedata2=

varconnum1=0
Loop, Parse, conclipb, `n, `r     
{
    
   EnvAdd, varconnum1,1

varconnum3:="pastedata"varconnum1

%varconnum3%=%A_LoopField%
}





 
  elemento2=%pastedata2%
  
  
  varibdeejc1=
    varibdeejc2=
     varibdeejc3=
  valoseleandejen=0
Loop, Parse, Extracc2, |,
{
EnvAdd, valoseleandejen,1

listvari:="varibdeejc"valoseleandejen

%listvari%=%A_LoopField%
}





   SplitPath, varibdeejc1, nombreelemt, direlemt, extelemt, name_no_extelemt, driveelemt
 
 ;si es folder se remplaza para evitar tomar nombres erroneos
FileGetAttrib, atribexisfolder, %varibdeejc1%
If  InStr(atribexisfolder, "D")
{
name_no_extelemt:=nombreelemt
}

 
  
  if extelemt=lnk
  {

FileGetShortcut, %varibdeejc1%, rutaxer, , parametrxer, , iconfilexer, indexiconxer, runstatexer

   SplitPath, rutaxer, nombreelemt, direlemt, extelemt, name_no_extelemt, driveelemt
 
varibdeejc1:=rutaxer
varibdeejc2:=parametrxer
varibdeejc3:=iconfilexer
varibdeejc4:=indexiconxer
Extracc2:=rutaxer "|" parametrxer "|" iconfilexer "|" indexiconxer


 }







if codoper12=1
{

GuiControl, aomd1:, nomediesdls1, %pastedata1%
GuiControl, aomd1:, nomediesdls2, %pastedata2%
}
else
if codoper12=2
{
GuiControl, aomd1:, nomediesdls1,%barri%%pastedata1%%barrc%
GuiControl, aomd1:, nomediesdls2, Barra
}
else
if codoper12=3
{
 

if driveelemt=
 driveelemt=USB

GuiControl, aomd1:, nomediesdls1, %nombreelemt%  (%driveelemt%\)
GuiControl, aomd1:, nomediesdls2, %pastedata2%
}
else
if codoper12=4
{
 

 driveelemt1:= StrReplace(varibdeejc1, driveelemt,"")


GuiControl, aomd1:, nomediesdls1, %name_no_extelemt%
GuiControl, aomd1:, nomediesdls2, %driveelemt1%
}
else
if codoper12=5
{

if extelemt!=exe
{
MsgBox 0x40040, %nameofthisscript1% - Información,  El elemento no es un ejecutable., 3
return
}


GuiControl, aomd1:, nomediesdls1, %name_no_extelemt%

if varibdeejc2=
varibdeejc2= "X:\carp1\File1" "X:\carp1\File2"

if varibdeejc3=
GuiControl, aomd1:, nomediesdls2, %varibdeejc1% |%varibdeejc2%
else
GuiControl, aomd1:, nomediesdls2, %varibdeejc1%  |%varibdeejc2% |%varibdeejc3% |%varibdeejc4%

}
else
if codoper12=6
{
 
 if extelemt!=exe
{
MsgBox 0x40040, %nameofthisscript1% - Información,  El elemento no es un ejecutable., 3
return
}
 
 


GuiControl, aomd1:, nomediesdls1, %name_no_extelemt%

if varibdeejc2=
varibdeejc2= "\carp1\File1" "\carp1\File2"

if varibdeejc3=
GuiControl, aomd1:, nomediesdls2, %driveelemt%\ |%varibdeejc2%
else
GuiControl, aomd1:, nomediesdls2, %driveelemt1% |%varibdeejc2% |%varibdeejc3% |%varibdeejc4%


}



return



Cuterttess2:

Gui, aomd1:Submit, NoHide

GuiControlGet, Extracc1, aomd1:, nomediesdls1
GuiControlGet, Extracc2, aomd1:, nomediesdls2
Clipboard:=Extracc1 "`n" Extracc2

goto eracontesedicopas
return





Cuterttess:

Gui, aomd1:Submit, NoHide

GuiControlGet, Extracc1, aomd1:, nomediesdls1
GuiControlGet, Extracc2, aomd1:, nomediesdls2
Clipboard:=Extracc1 "`n" Extracc2

setwindowcopy()
return


aomd1GuiDropFiles:
{



elemento1 := A_GuiEvent



Loop, Parse, elemento1, `n, `r                                         
	{
	 If (A_Index >= 2)
{
MsgBox 0x40040, %nameofthisscript1% - Información,  El limite de elementos para esta operación es de 1., 1
		return
}        
        
elemento1=%A_LoopField%
        
        

        
        
        
}

SplitPath, elemento1, nombreelemt, direlemt, extelemt, name_no_extelemt, driveelemt
elemento2=%elemento1%
Gui, aomd1:Submit, NoHide


;si es folder se remplaza para evitar tomar nombres erroneos
FileGetAttrib, atribexisfolder, %elemento1%
If  InStr(atribexisfolder, "D")
{
	name_no_extelemt:=nombreelemt
}




  if extelemt=lnk
  {

FileGetShortcut, %elemento2%, rutaxer, , parametrxer, , iconfilexer, indexiconxer, runstatexer

   SplitPath, rutaxer, nombreelemt, direlemt, extelemt, name_no_extelemt, driveelemt
 

elemento1:=rutaxer
elemento2:=rutaxer
elemento4:=parametrxer 
elemento5:=iconfilexer
elemento7:=indexiconxer

Estable1lnk=1

 }


if codoper12=1
{
 
 if Estable1lnk=1
{
GuiControl, aomd1:, nomediesdls1, %name_no_extelemt%
GuiControl, aomd1:, nomediesdls2, %elemento1%  |  %elemento4% | %elemento5%  |%elemento7%
Estable1lnk=0
return
}
 
 
 
GuiControl, aomd1:, nomediesdls1, %name_no_extelemt%
GuiControl, aomd1:, nomediesdls2, %elemento1%
}
else
if codoper12=2
{
GuiControl, aomd1:, nomediesdls1,%barri%%name_no_extelemt%%barrc%
GuiControl, aomd1:, nomediesdls2, Barra
}
else
if codoper12=3
{

 
if driveelemt=
 driveelemt=USB

GuiControl, aomd1:, nomediesdls1, %nombreelemt%  (%driveelemt%\)
GuiControl, aomd1:, nomediesdls2, %elemento1%
}
else
if codoper12=4
{
 driveelemt1:= StrReplace(elemento2, driveelemt,"")


GuiControl, aomd1:, nomediesdls1, %name_no_extelemt%
GuiControl, aomd1:, nomediesdls2, %driveelemt1%
}

else
if codoper12=5
{
if extelemt!=exe
{
MsgBox 0x40040, %nameofthisscript1% - Información, El elemento no es un ejecutable., 3
return
}


if Estable1lnk=1
{
GuiControl, aomd1:, nomediesdls1, %name_no_extelemt%
GuiControl, aomd1:, nomediesdls2, %elemento1%|  %elemento4% | %elemento5%|%elemento7%
Estable1lnk=0
return
}


GuiControl, aomd1:, nomediesdls1, %name_no_extelemt%
GuiControl, aomd1:, nomediesdls2, %elemento1% |"X:\carp1\File1" "X:\carp1\File2"
}
else
if codoper12=6
{
 if extelemt!=exe
{
MsgBox 0x40040, %nameofthisscript1% - Información,  El elemento no es un ejecutable., 3
return
}
 
 driveelemt1:= StrReplace(elemento2, driveelemt,"")



if Estable1lnk=1
{
GuiControl, aomd1:, nomediesdls1, %name_no_extelemt%




GuiControl, aomd1:, nomediesdls2, %driveelemt%\ | %elemento4% | %driveelemt6% |%elemento7%
Estable1lnk=0
return
}


GuiControl, aomd1:, nomediesdls1, %name_no_extelemt%
GuiControl, aomd1:, nomediesdls2, %driveelemt1% |"\carp1\File1" "\carp1\File2"
}



}

return




eracontesedicopas:
GuiControl, aomd1:, nomediesdls1, .
GuiControl, aomd1:, nomediesdls2, 

return













closecoma2:
Gui, aomd1:Submit, NoHide

GuiControlGet, Extracc1, aomd1:, nomediesdls1
GuiControlGet, Extracc2, aomd1:, nomediesdls2
Clipboard:=Extracc1 "`n" Extracc2
aomd1GuiClose:

 ;variable comand acticvo
activeconfig=0
 Gui, aomd1:Submit, NoHide

 WinGetPos, gui_x, gui_y, gui_w, gui_h, ahk_id %gui_id2%
 
IniWrite, x%gui_x% y%gui_y%, %CLAVEaini%, window position2, gui_position
 IniWrite, %gui_h%|%gui_w%, %CLAVEaini%, window position2, size
 
 
 
 
gui_position2=x%gui_x% y%gui_y%


guihposit2=%gui_h%
guiwposit2=%gui_w%


iniwrite, %codoper12%, %CLAVEaini%, DlsComand, a


codoper12save=%codoper12%


 Gui, aomd1:Destroy
return











acc13:
MsgBox 0x40024, %nameofthisscript1% - Verificación, ¿Se desea proceder?
IfMsgBox Yes, {
 
 
 ;Guardar y reiniciar
Henaccrein=1
goto simpleexit

}
Else IfMsgBox No, {
   Return
} 
   Return








simpleexit:
GuiClose:
Gui, 1:Submit, NoHide


Gui, 1:Show








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







;variable comand acticvo
  if activeconfig=1
{WinGetPos, gui_x, gui_y,,, ahk_id %gui_id2%
 
IniWrite, x%gui_x% y%gui_y%, %CLAVEaini%, window position2, gui_position

iniwrite, %codoper12%, %CLAVEaini%, DlsComand, a



 Gui, aomd1:Destroy
}




	
	if file2=
		file2=C:\Windows\system32\notepad.exe


 WinGetPos, gui_x, gui_y, gui_w, gui_h, ahk_id %gui_id%
IniWrite, %file1%, %CLAVEaini%, ini, a

IniWrite, %file2%, %CLAVEaini%, Editor, a
IniWrite, x%gui_x% y%gui_y%, %CLAVEaini%, window position, gui_position
IniWrite, %gui_h%|%gui_w%, %CLAVEaini%, window position, size
;positionn of gui if is new use in new pc
IniWrite, %usonuev3%, %CLAVEaini%, pcnewres, a


;Guardar y reiniciar
if Henaccrein=0
exitapp
else
	reload
   Return


















winabout1:


Gui, winabout:+owner1
Gui 1:+Disabled  



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



Gui, winabout:Add, Text, gaccchtpps7 vaccchtpps7 x5 y355 w416 h20 center, AutoXYWH Move and resize when GUI resizes. for Titan and Toralf.

Gui, winabout:Add, Text, gaccchtpps8 vaccchtpps8 x5 y375 w416 h20 center, GetSysImgLstIcon retrieve the associated icon by Just me

Gui, winabout:Add, Text, gaccchtpps9 vaccchtpps9 x5 y395 w416 h20 center, ChooseColor display the standard Windows color picker dialog by rbrtryn 


Gui, winabout:Add, Text, gaccchtpps11 vaccchtpps11 x5 y415 w416 h20 center, Colorette - Simple Color Picker (v 1.01) by sumon








Gui, winabout:Add, Text, x5 y520 w416 h70  vacciespinfeng2 gacciespinfeng2 center, Este programa no tiene garantía`, úselo bajo su propio riesgo. No me responsabilizo ante la perdida de datos o el mal uso del mismo.`nLicencia del script escrito por RGUriel`, exceptuando el código de terceros especificado en el mismo: GNU GENERAL PUBLIC LICENSE Version 3`, 29 June 2007










Gui, winabout:Add, Button, x188 y600 w50 h20 gAboutptk, Aceptar



Gui, winabout:Show, Center h630 w426, %nameofthisscript1% - About















return

Aboutptk:
winaboutguiclose:
Gui 1:-Disabled  
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
Run,  "https://www.autohotkey.com/boards/viewtopic.php?f=6&t=1079", ,  UseErrorLevel
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






























