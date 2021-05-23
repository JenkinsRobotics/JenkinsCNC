; homey.g
; called to home the Y axis


G91 ; relative positioning
G21 ; Set units to mm
G1 H1 Z94 F900 ; move quickly to Z axis endstop and stop there (first pass)
G1 Z-3 F2400 ; go back a few mm
G1 H1 Z94 F300 ; move slowly to z axis endstop once more (second pass)
G1 H1 Y1500 F2400 ; move quickly to X and Y axis endstops and stop there (first pass)
G92 Y1270 Z94 ; Set Home Position - change to your machine size.
G1 Y-3 F2400 ; go back a few mm
G1 H1 Y1500 F300 ; move slowly to X and Y axis endstops once more (second pass)
G92 Y1270 Z94 ; Set Home Position - change to your machine size.
G90 ; absolute positioning
