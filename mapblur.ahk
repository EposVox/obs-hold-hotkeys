;AHK Script to automatically activate a specific OBS hotkey while holding another key.
;Useful for auto show/hiding overlays/effects while looking at maps in BR games while streaming, etc.
#SingleInstance, Force ;only one instance of this script may run at a time!
#NoEnv  

;REPLACE "g" with your desired hold key for maps
;REPLACE "^!t" with your desired hotkey sent to OBS for show/hiding effect or source (^ is control, ! is alt)
~g::
	Send ^!t
	keyWait, g, d
	keyWait, g 
	Send ^!t
return

;Can copy-paste the above, replacing keys for as many similar key mappings you want to show!