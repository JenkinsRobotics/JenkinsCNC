; tpre5.g
; called before tool 5 is selected
;
; THIS CODE WILL TELL THE MACHINE WHERE TO GO TO PICK UP THE NEW TOOL

;SETUP
M5 												; STOP SPINDLE
M577 P2											; Wait Until the Input 2 is High (SPINDLE STOP FROM VFD)
G90   											; Absolute Mode	
G53 G1 Z-2 F1000 								;Raise Head
;Dust Collector Off
;M106 P2 S0.0           ; turn off fan# 2 (Dust Collector) (RANGE : 0 to 255 or 0.0 to 1.0) 
;Unlock Coupler
M106 P1 S0           ; turn ON fan 1 (TOOL CHANGER) (RANGE : 0 to 255 or 0.0 to 1.0)

;PART HOLDER PERCH
G53 G1 X-400  Y-750 F5000
G53 G1 X-323.9  Y-750 F5000
G53 G1 X-323.9  Y-804 Z-2.8  F1000
G53 G1 X-323.9  Y-804 Z-72.8  F1000
;PICK UP TOOL AND SWIPE OUT
G4 S1			          ; pause 1 second
M106 P1 S1.0           ; turn ON fan 1 (TOOL CHANGER) (RANGE : 0 to 255 or 0.0 to 1.0)
G4 S1			          ; pause 1 second
;SWIPE TOOL FROM HOLDER
G53 G1 X-323.9  Y-835 Z-72.8  F3000
;TOOL CHANGE PERCH 
G53 G1 X-323.9 Y-835 Z-2.8 F3000
G53 G1 X-324.6  Y-750 F5000
G53 G1 X-400  Y-750 F5000




M291 P"TOOL 5 PICK UP." R"Success" S1    ; screen message

