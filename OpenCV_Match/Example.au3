#AutoIt3Wrapper_UseX64=n ; In order for the x86 DLLs to work
#include "OpenCV-Match_UDF.au3"

_OpenCV_Startup();loads opencv DLLs
_OpenCV_EnableLogging(True,True,True) ;Logs matches, errors in a log file and autoit console output. 

;Please note that these examples might not work as the match pictures have to be found with the exact same size on your screen.
ShellExecute("https://x.com/");Open Website tv.com
Sleep(3000)

$File=@ScriptDir&"\newsOutletUSA1.csv"

; open for read only
$h=FileOpen($File,0)
while 1
    $NextLine=FileReadLine($h)
		
    if @error Then
        FileClose($h)
        ExitLoop
    Else
        ConsoleWrite("Reading next line:" & $NextLine & @CRLF)
    
		$Match1 = _MatchPicture(@ScriptDir&"\Match\explore.png", 0.70,False,10,500);Try to find the match picture on the screen. Number of tries: 10, Sleep between each try: 500ms. 
			If Not @error Then
		
			_MarkMatch($Match1) ;Debugging: Draws a rect on the screen/coordinates of the match to show the user where the match was found;
			Sleep(1000)
			_MoveMouse($Match1)
			Sleep(1000)
		
			$Match2 = _MatchPicture(@ScriptDir&"\Match\search.png", 0.70,False,10,500);Try to find the match picture on the screen. Number of tries: 10, Sleep between each try: 500ms. 
				If Not @error Then
					_MarkMatch($Match2) ;Debugging: Draws a rect on the screen/coordinates of the match to show the user where the match was found;
					Sleep(1000)
					_MoveMouse($Match2)
					Sleep(1000)
					Sleep(1000)
					send($NextLine)	
					Sleep(2000)
					send("{DOWN}")
					send("{DOWN}")
					send("{ENTER}")
					Sleep(Random(2000, 6000, 1))
					MouseWheel($MOUSE_WHEEL_DOWN,6)
					Sleep(2000)
					
					$Match3 = _MatchPicture(@ScriptDir&"\Match\cc.png", 0.70,False,10,500);Try to find the match picture on the screen. Number of tries: 10, Sleep between each try: 500ms. 
						If Not @error Then
							_MarkMatch($Match3) ;Debugging: Draws a rect on the screen/coordinates of the match to show the user where the match was found;
							Sleep(1000)
							_MoveMouse3($Match3)
							Sleep(Random(3000, 6000, 1))
							
						$Match4 = _MatchPicture(@ScriptDir&"\Match\cc3.png", 0.70,False,10,500);Try to find the match picture on the screen. Number of tries: 10, Sleep between each try: 500ms. 
							If Not @error Then
								_MarkMatch($Match4) ;Debugging: Draws a rect on the screen/coordinates of the match to show the user where the match was found;
								Sleep(1000)
								_MoveMouse3($Match4)
								Sleep(Random(3000, 6000, 1))
															send("https://wirelessbci.cloud")
							send("{TAB}")
						    Sleep(500)
							send("{TAB}")
							Sleep(500)
							send("{TAB}")
							Sleep(500)
							send("{TAB}")
							Sleep(500)
							send("{TAB}")
							Sleep(500)
							send("{TAB}")
							Sleep(500)
							;send("{TAB}")
							;Sleep(500)
							;send("{TAB}")
							Sleep(Random(1000, 2000, 1))
							send("{ENTER}")
							Sleep(Random(2000, 6000, 1))
							Else
							
							
							EndIf
							
							
							;send("https://wirelessbci.cloud")
							;send("{TAB}")
							;Sleep(500)
							;send("{TAB}")
							;Sleep(500)
							;send("{TAB}")
							;Sleep(500)
							;send("{TAB}")
							;Sleep(500)
							;send("{TAB}")
							;Sleep(500)
							;send("{TAB}")
							;Sleep(Random(1000, 2000, 1))
							;send("{ENTER}")
							;Sleep(Random(2000, 6000, 1))
							
						Else
							;Sleep(Random(2000, 10000, 1))
							;MouseMove(@DesktopWidth/2, @DesktopHeight/2, 0) ; instant
							;MouseWheel($MOUSE_WHEEL_DOWN,30)
						EndIf


					
				Else
					;Sleep(Random(2000, 10000, 1))
					;MouseMove(@DesktopWidth/2, @DesktopHeight/2, 0) ; instant
					;MouseWheel($MOUSE_WHEEL_DOWN,30)
				EndIf
			
			

			
			;_ClickMouse($Match1, "left",1) ;Calculates the center of the match and clicks the left mouse once on click position
			
	
			Else
			;Sleep(Random(2000, 10000, 1))
			;MouseMove(@DesktopWidth/2, @DesktopHeight/2, 0) ; instant
			;MouseWheel($MOUSE_WHEEL_DOWN,30)
			EndIf
	
	
	
	
	EndIf
WEnd

MsgBox(0, '', "done")


_OpenCV_Shutdown();Closes DLLs


;Example 2, matching on a specific area of the screen
;ShellExecute("notepad.exe");open nodepad
;WinWait("[CLASS:Notepad]","",5)
;WinMove("[CLASS:Notepad]","",0,0,500,500)

;Local $sCoords[4] = [0, 0, 500,500]
;$Match2 = _MatchPicture(@ScriptDir&"\Match\2.png", 0.80,$sCoords,3,500)
;If Not @error Then
;	_MarkMatch($Match2) 
;	Sleep(100)
;	_ClickMouse($Match2, "left", 1) 
;EndIf

;_OpenCV_Shutdown();Closes DLLs
