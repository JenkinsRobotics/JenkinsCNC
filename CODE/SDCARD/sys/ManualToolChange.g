; Manual Tool Change
; This program will move the cnc to a user specified location
; A series of prompts will guide the user to removing the previous tool and inserting the new tool
; Press continue  and the machine will continue main program
; A tool probe can be called directly at the end of this program or by macro in the main program
; A tool probe NEEDS TO BE PERFORMED before spindle is turned on and machining begins

; SETUP
M5 												; STOP SPINDLE
M577 P2											; Wait Until the Input 2 is High (SPINDLE STOP FROM VFD)
G4 S1			          						; pause 1 second
G21				                    			; make sure we’re in mm
G90   											; Absolute Mode	
G53 G1 Z-5 F1000 								; Raise Head			            

; MOVE TO FRONT RIGHT OF WORKSPACE
G28 Z								; Home Z
G53 G1 X-100 Y-600 F4000			; Using Machine Coordinates Moved To Specified Location 

; Dust Collector Off
M42 P2 S0.0           							; turn off OUTPUT # 2 (Dust Collector) (RANGE : 0 to 255 or 0.0 to 1.0) 
G4 S1			     						    ; pause 1 second

; unlock tool changer
M291 P"Press OK to begin manual tool change" R"CAUTION!" S2
G4 S1			     						    ; pause 1 second

; unlock tool changer
M291 P" Remove Tool. Press OK to continue" R"CAUTION!" S2
M42 P1 S1.0          							; Unlock Tool Changer turn ON OUT 1 (TOOL CHANGER UNLOCK) (RANGE : 0 to 255 or 0.0 to 1.0)
G4 S3			          						; pause 1 second

; PICK UP TOOL 
M291 P" Insert Next Tool. Press OK to continue" R"CAUTION!" S2
G4 S1			     						    ; pause 1 second
M42 P1 S0.0           							; turn off output 1 (TOOL CHANGER LOCK) (RANGE : 0 to 255 or 0.0 to 1.0) 
G4 S1			          						; pause 1 second


; PICK UP TOOL 
M291 P"Manual Tool Change Completed. Press OK to continue Program." R"Success" S2    ; screen message
G4 S3			          							; pause 1 second

; Dust Collector ON
M42 P2 S1.0           ; turn off fan# 2 (Dust Collector) (RANGE : 0 to 255 or 0.0 to 1.0) 

; Home
G28 Z								; Home Z

; Specify Active Tool 
T1	P0	                  ; Select tool 1 to turn it on but don't execute tool change scripts	

;Call tool probe directly
;M98 P"ToolZProbe.g"		; UPDATE TCP AND TURN ON DUST COLLECTOR 

; END
