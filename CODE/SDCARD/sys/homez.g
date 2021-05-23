; homez.g
; called to home the Z axis

G91 ; relative positioning
G21 ; Set units to mm
G1 H1 Z94 F1500 ; move quickly to Z axis endstop and stop there (first pass)
G92 Z94 ; Set Home Position - change to your machine size.
G1 Z-3 F2400 ; go back a few mm
G1 H1 Z94 F300 ; move slowly to X axis endstop once more (second pass)
G92 Z94 ; Set Home Position - change to your machine size.
G90 ; absolute positioning
