M108 S255 ; turn on M2 fans
M140 S[bed0_temperature] ; set bed temp without waiting
G28 ; home all axes
G29 ; auto bed leveling
M104 S[extruder0_temperature] ; set extruder temp without waiting
G1 Y50 Z0.3 F9600 ; move forward to avoid binder clips
G1 X205 Z10 ; move off platform
M190 S[bed0_temperature] ; wait for bed temp
M109 S[extruder0_temperature] ; wait for extruder temp
G1 Z0.4 ; position nozzle
G92 E0 ; zero extruder
G1 E25 F225 ; purge nozzle
G92 E0 ; zero extruder
G1 X190 Z0.1 E1.0 F1200 ; slow wipe
G1 X180 Z0.25 ; lift