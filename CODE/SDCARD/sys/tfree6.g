; tfree6.g
; called when tool 6 is freed
; THIS CODE WILL TELL THE MACHINE WHERE TO DROP THE OLD TOOL
; Automatic TOOl Change 1/3

; SETUP
M5 												; STOP SPINDLE
M577 P2											; Wait Until the Input 2 is High (SPINDLE STOP FROM VFD)
G4 S1			          						; pause 1 second
G90   											; Absolute Mode	
G53 G1 Z-2 F1000 								; Raise Head

; Dust Collector Off
M42 P2 S0.0           							; turn off fan# 2 (Dust Collector) (RANGE : 0 to 255 or 0.0 to 1.0) 
G4 S1			     						    ; pause 1 second

; PART HOLDER PERCH
G53 G1 X-700 Y-600 F4000						; Use machine coordinates Moved To Specified Perch Location 
G53 G1  X-595 Y-600 F4000
G53 G1 X-595.3  Y-680 F3000

; SWIPE INTO PART HOLDER
G53 G1 X-595.3  Y-680 Z-50 F3000
G53 G1 X-595.3  Y-722 Z-50 F1000

; DROP TOOL AND SWIPE OUT
G4 S1			          						; pause 1 second
M42 P1 S1.0           							; turn ON output 1 (TOOL CHANGER) (RANGE : 0 to 255 or 0.0 to 1.0) 
G4 S1			          						; pause 1 second
G53 G1 Z-2 F1000 								; Raise Spindle

; RETURN TO PART HOLDER PERCH
G53 G1 X-595.3  Y-600 F3000
G53 G1 X-700 Y-600 F4000						; Use machine coordinates Moved To Specified Perch Location 

M291 P"TOOL 6 DROP OFF." R"Success" S1          ; screen message