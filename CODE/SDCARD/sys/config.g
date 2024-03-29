conf
; Configuration file for Duet 3  FIRMWARE RepRapFirmware 3.3 and later
; executed by the firmware on start-up
; Generated referencing RepRapFirmware Configuration Tool v3.1.8 and WorkBee Firmware Version 1.0.7

;JenkinsCNC v1.2
;Updated 7.13.21
;Board: Duet 3
;Firmware: Reprap Firmware 3.3 and later



; General preferences
M453 					                ; Put the machine into CNC Modes
M550 P"JenkinsCNC"                      ; set printer name
G90 					                ; Set absolute coordinates
G21 					                ; Set units to mm


; Network
M552 P192.168.86.64 S1                  ; enable network and set IP address
M553 P255.255.255.0                     ; set netmask
M554 P192.168.86.1                      ; set gateway
M586 P0 S1 				                ; Enable HTTP
M586 P1 S0 				                ; Disable FTP
M586 P2 S0 				                ; Disable Telnet

; Configure Drives
M569 P0.0 S0 				            ; Physical drive 0.0 direction (0 = backwards, 1 = forwards (default 1))
M569 P0.1 S1 				            ; Physical drive 0.1 direction (0 = backwards, 1 = forwards (default 1))
M569 P0.2 S0 				            ; Physical drive 0.2 direction (0 = backwards, 1 = forwards (default 1))
M569 P0.3 S0 				            ; Physical drive 0.3 direction (0 = backwards, 1 = forwards (default 1))
M584 X0.0 Y0.1:0.3 Z0.2 	            ; Apply drive mapping to axes - dual Y axis

; Configure Axes
M92 X80 Y80 Z400 				        ; Set steps per mm
M350 X16 Y16 Z16 I1 			        ; Configure microstepping
M566 X500 Y500 Z500 			        ; Set maximum instantaneous speed changes (mm/min)
M203 X5000 Y5000 Z5000 		            ; Set maximum speeds (mm/min)
M201 X400 Y400 Z400				        ; Set accelerations (mm/s^2)
M906 X2400 Y2400 Z2400 I100 		    ; Set motor currents (mA)

; Configure Axis Limits
M208 X-838 Y-838 Z-85 S1 		        ; Set axis minima  ( 0 = set axis maximum (default), 1 = set axis minimum)
M208 X0 Y0 Z0 S0            		    ; set axis maxima  ( 0 = set axis maximum (default), 1 = set axis minimum)

; Configure IO / Endstops
M574 X2 S1 P"!io1.in"                   ; configure active-high endstop for high end on X via pin !io1.in ( 0 = none, 1 = low end, 2 = high end)
M574 Y2 S1 P"!io2.in"                   ; configure active-high endstop for high end on Y via pin !io2.in
M574 Z2 S1 P"!io3.in"                   ; configure active-high endstop for high end on Z via pin !io3.in

; Configure IO / Probes
M558 K1 P8 C"!io4.in" H5 F100 T3000 	; XYZ Workpeice probe (bitzero) connected to io4 input
M558 K2 P8 C"!io5.in" H5 F500 T3000 	; TOOL Z probe (bitsetter)  connected to io5 input
G31 Z0 ; Set Z probe trigger height

; CNC INPUTS
M950 J1 C"!io7.in"                         ; create input pin 1 on pin io7.in (Spindle on & At rpm) 
M950 J2 C"!io8.in"                         ; create input pin 2 on pin io8.in (Spindle Stopped) 

; CNC OUTPUTS SPINDLE
M950 R0 C"out9+out0" L0:24000 			; Create spindle index 0, with PWM pin on OUT 9  and Supports range 0-2400 RPM


; CNC OUTPUTS
M950 P1 C"out1"                         ; create io 1 on pin out1 (TOOL CHANGER) 
M950 P2 C"out2"                         ; create io 2 on pin out2 (COOLENT)
M950 P4 C"out4"                         ; create io 4 on pin out4 (RGB LIGHTING : BLUE)
M950 P5 C"out5"                         ; create io 5 on pin out5 (RGB LIGHTING : GREEN)
M950 P6 C"out6"                         ; create io 6 on pin out6 (RGB LIGHTING : RED)
M950 F7 C"out7" Q500                    ; create fan 7 on pin out7 and set its frequency (FAN)
M950 F8 C"out8" Q500                    ; create fan 8 on pin out8 and set its frequency (FAN)



; Tools
M563 P1 S"tool1" R0                     ; define tool 1 with spindle 0 
G10 P1 X0 Y0 Z0                         ; set tool 1 axis offsets
M563 P2 S"tool2" R0                     ; define tool 2 with spindle 0 
G10 P2 X0 Y0 Z0                         ; set tool 2 axis offsets
M563 P3 S"tool3" R0                     ; define tool 3 with spindle 0 
G10 P3 X0 Y0 Z0                         ; set tool 3 axis offsets
M563 P4 S"tool4" R0                     ; define tool 4 with spindle 0 
G10 P4 X0 Y0 Z0                         ; set tool 4 axis offsets
M563 P5 S"tool5" R0                     ; define tool 5 with spindle 0 
G10 P5 X0 Y0 Z0                         ; set tool 5 axis offsets
M563 P6 s"tool6" R0   	            	; define tool 6 with spindle 0 
G10 P6 X0 Y0 Z0            				; set tool 6 axis offsets
;M568 P60 F24000                           ; set spindle RPM for tool 6)



; Other Settings
M575 P1 S1 B57600                       ; enable support for PanelDue
M140 H-1								; Disable heated bed
M564 S1 H1 								; Disable jog commands when not homed
M911 S21.0 R23 P"G91 G1 Z3 F1000" 		; Configure power loss resume
M501									; Load Stored Parameters 
M98 P"lighthome.g"						; set red light

; initial setup
M577 P2									; Wait Until the Input 2 is High (SPINDLE STOP FROM VFD)
M5                                      ; STOP SPINDLE
;M106 P0 S0                              ; turn off fan 0 (SPINDLE ENABLE) (RANGE : 0 to 255 or 0.0 to 1.0)
M42 P1 S0                   			; turn ON fan 1 (TOOL CHANGER Locked) (RANGE : 0 to 255 or 0.0 to 1.0)  
M42 P2 S0.0           					; turn off Output # 2 (Dust Collector) (RANGE : 0 to 255 or 0.0 to 1.0) 
M106 P7 S0                              ; turn off fan 7 (fan) (RANGE : 0 to 255 or 0.0 to 1.0) 
M106 P8 S0                              ; turn off fan 8 (fan) (RANGE : 0 to 255 or 0.0 to 1.0) 
G28			          					; Home all Axis
M98 P"lighton.g"						; set WHITE light


