; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)

; END SCRIPT
M5                                      ; STOP SPINDLE
T-1                                     ; Drop All Tools
G28			          					; Home all Axis
