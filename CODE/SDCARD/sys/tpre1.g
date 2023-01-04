; tpre1.g
; called before tool 1 is selected
; THIS CODE WILL TELL THE MACHINE WHERE TO GO TO PICK UP THE NEW TOOL
; Automatic TOOl Change 2/3 

; SETUP
M5 													; STOP SPINDLE
M577 P2												; Wait Until the Input 2 is High (SPINDLE STOP FROM VFD)
G4 S1			          							; pause 1 second
G90   												; Absolute Mode	
G53 G1 Z-2 F1000 									; Raise Head			            

; Dust Collector Off
M42 P2 S0.0           								; turn off OUTPUT # 2 (Dust Collector) (RANGE : 0 to 255 or 0.0 to 1.0) 

; unlock tool changer
M42 P1 S1.0          								; Unlock Tool Changer turn ON OUT 1 (TOOL CHANGER UNLOCK) (RANGE : 0 to 255 or 0.0 to 1.0)

; PART HOLDER PERCH
G53 G1 X-700 Y-600 F4000							; Use machine coordinates Moved To Specified Perch Location 
G53 G1  X-800 Y-600 F4000

; MOVE INTO PART HOLDER
G53 G1 X-809.0  Y-723.0  F3000
G53 G1 X-809.0  Y-723.0 Z-50 F1000

; PICK UP TOOL 
G4 S1			          							; pause 1 second
M42 P1 S0.0           							    ; turn off output 1 (TOOL CHANGER LOCK) (RANGE : 0 to 255 or 0.0 to 1.0) 
G4 S1			          							; pause 1 second

; SWIPE TOOL FROM HOLDER
G53 G1 X-809.0  Y-680 Z-50 F1000
G53 G1 Z-2 F2000 									; Raise Spindle

; RETURN TO PART HOLDER PERCH
G53 G1 X-800  Y-600 F3000
G53 G1 X-700 Y-600 F4000							; Use machine coordinates Moved To Specified Perch Location 

M291 P"TOOL 1 PICK UP." R"Success" S1    ; screen message
