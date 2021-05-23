; tfree2.g
; called when tool 2 is freed
;
; THIS CODE WILL TELL THE MACHINE WHERE TO DROP THE OLD TOOL


;SETUP
M5 												; STOP SPINDLE
M577 P2											; Wait Until the Input 2 is High (SPINDLE STOP FROM VFD)
G90   											; Absolute Mode	
G53 G1 Z-2 F1000 								;Raise Head
G4 S1			          ; pause 1 second


;PART HOLDER PERCH
G53 G1 X-400  Y-750 F50000
G53 G1 X-451.1  Y-750 F50000
G53 G1 X-451.1  Y-835 Z-2.8 F50000
;SWIPE INTO PART HOLDER
G53 G1 X-451.1  Y-835.0 Z-72.8  F3000
G53 G1 X-451.1  Y-804.0 Z-72.8  F1000
;DROP TOOL AND SWIPE OUT
G4 S1			          ; pause 1 second
M106 P1 S0.0           ; turn ON fan 1 (TOOL CHANGER) (RANGE : 0 to 255 or 0.0 to 1.0) 
G4 S1			          ; pause 1 second
G53 G1 Z-2.8 F1000
;PART HOLDER PERCH
G53 G1 X-451.1  Y-750 F50000
G53 G1 X-400  Y-750 F50000


M291 P"TOOL 2 DROP OFF." R"Success" S1    ; screen message