#cs ----------------------------------------------------------------------------
 AutoIt Version: 3.3.14.2
 Author:         myName
 Script Function:
	Template AutoIt script.
#ce ----------------------------------------------------------------------------
#include "AutoItConstants.au3"
#include <ImageSearch.au3>


; Script Start - Add your code below here
HotKeySet("{ESC}", "_Terminate")
HotKeySet("{f2}", "_Run")


$file = "C:\Users\User\Desktop\like.PNG"
While 1
   Sleep(10)
WEnd
Func _Run()
while (true)

;;$color =0x111111 ;put your color here
sleep(1000)
dg_get_images()
    ;;$colorPos = PixelSearch(478, 97, 863, 513, $color)
    ;;If Not @error Then
      ;;  MouseClick("left",$colorPos[0],$colorPos[1])
	 ;;EndIf
WEnd
EndFunc

Func dg_get_images()
   Local $x=0,$y=0
   Local $search = _ImageSearch('like.PNG', 1, $x, $y, 0)
   If $search = 1 Then
	  ;;MsgBox(0, 0,"đã tìm thấy.ok.thank all")
	 ;; MouseClick("left", $x, $y,1)
	  MouseClick("left",$x,$y,1,10)
	  dg_get_images()
   Else
	  _MouseWheel()
   EndIf
   EndFunc
   Func _MouseWheel()
	  sleep(100)
   MouseWheel("down",3)
EndFunc
Func _Terminate()
   Exit
   EndFunc