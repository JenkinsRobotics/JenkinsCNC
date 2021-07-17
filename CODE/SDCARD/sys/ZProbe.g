
;Probe TOOL TCP
;List of Variables
; LOAD LOCATION XY = X-339.2 Y-798.4		; specify your desired load location based on global machine coordinate system in millimeters 
; PROBE LOCATION XY = X-553.625 Y-814.525	; specify your desired load location based on global machine coordinate system in millimeters 
; TOOL # = 0	; Specify your desired tool " Tool 0 is my default active tool number"
; K# = 2 	; Specify the probe you want to used, this is configured in your Config.g file


;SETUP
M42 P1 S255           							; turn ON fan 1 (TOOL CHANGER) (RANGE : 0 to 255 or 0.0 to 1.0) 
M5 												; STOP SPINDLE
M577 P2												; Wait Until the Input 2 is High (SPINDLE STOP FROM VFD)
G4 S1			          							; pause 1 second
G21				                    			; make sure we’re in mm
G90   											; Absolute Mode	
G53 G1 Z0 F1000 									; Raise Head
M42 P2 S0.0           							; turn off Output # 2 (Dust Collector) (RANGE : 0 to 255 or 0.0 to 1.0) 
G4 S1			         						; pause 1 second


;Tool  Probe Z
G53 G1 X-700 Y-600 F4000							; Use machine coordinates Moved To Specified Perch Location 
G53 G1 X-550 Y-590 F3000     						; Use machine coordinates Move to Z Probe Location
G53 G1 X-552 Y-732.5 F1500     						; Use machine coordinates Move to Z Probe Location
G30 s-2 k2 X0 Y0 	               				; Probe in the Z direction and update tool z offset
M500	                						; Save axis length to config-override.g


; END
G53 G1 Z0 F1000 									; Raise Head
G53 G1 X-550 Y-590 F3000     						; Use machine coordinates Move to Z Probe Location
G53 G1 X-700 Y-600 F4000							; Use machine coordinates Moved To Specified Perch Location 

M291 P"Probing complete. Tool Offset Updated." R"Success" S1    ; screen message

;Dust Collector ON
M42 P2 S1.0           ; turn off fan# 2 (Dust Collector) (RANGE : 0 to 255 or 0.0 to 1.0) 