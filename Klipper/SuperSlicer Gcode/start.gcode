M140 S[first_layer_bed_temperature] ; set bed temp without waiting
G28 ; home all axes
G0 X205 Y50 Z10 F12000 ; move off platform
M190 S[first_layer_bed_temperature] ; wait for bed temp
G29 ; mesh bed leveling after bed temp stabilized
G0 X205 Y50 Z10 F12000 ; move off platform
M109 S[first_layer_temperature] ; wait for extruder temp
G1 Z0.4 ; position nozzle
G92 E0 ; zero extruder
G1 E25 F225 ; purge nozzle
G92 E0 ; zero extruder
G1 X190 Z0.1 E1.0 F1200 ; slow wipe
G1 X180 Z0.25 ; lift