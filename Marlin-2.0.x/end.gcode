M104 S0 ; turn off extruder
M140 S0 ; turn off bed
G91 ; relative mode
G1 Z10 ; lift 10mm
G90 ; absolute mode
G28 X; home X-axis
G1 Z210; lift to z-max
M84 ; disable motors