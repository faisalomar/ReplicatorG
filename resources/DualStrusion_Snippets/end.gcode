(<alteration>)
(**** Beginning of end.gcode ****)
(This file is for a MakerBot Thing-O-Matic With Dual Extruders)
(**** begin move to cooling position ****)
G1 X0.0 F3300.0       (move to cooling position)
G1 X0.0 Y55.0 F3300.0 (move to cooling position)
(**** end move to cooling position ****)
(**** begin filament reversal ****)
M108 R50 T0
M102 T0 (Extruder on, reverse)
G04 P100 (Wait t/1000 seconds)
M103 T0 (Extruder off)
M108 R50 T1
M102 T1 (Extruder on, reverse)
G04 P100 (Wait t/1000 seconds)
M103 T1 (Extruder off)
M18 (Turn off steppers)
(**** end filament reversal ****)
(**** begin cool for safety ****)
M104 S0 T1 (set extruder temperature)
M104 S0 T0
M109 S0 T1 (set heated-build-platform temperature)
(**** end cool for safety ****)
(**** end of end.gcode ****)
(</alteration>)