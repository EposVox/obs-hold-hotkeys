;AHK Script to automatically activate a specific OBS hotkey while holding another key.
;Useful for auto show/hiding overlays/effects while looking at maps in BR games while streaming, etc.
#SingleInstance, Force ;only one instance of this script may run at a time!
#NoEnv  
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
obs_exe := "ahk_exe obs64.exe"
;REPLACE "g" with your desired hold key for maps
;REPLACE "{F24}" with your desired hotkey sent to OBS for show/hiding effect or source. This cannot include modifier keys, so use F13-F24.
~g::
	ControlSend, ahk_parent, {F24}, ahk_class Qt5152QWindowIcon
	keyWait, g, d
	keyWait, g 
	ControlSend, ahk_parent, {F24}, ahk_class Qt5152QWindowIcon
return
;Can copy-paste the above, replacing keys for as many similar key mappings you want to show!