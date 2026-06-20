execute if score #system instance4_bird matches 1 unless entity @e[type=elder_guardian,x=912,y=57,z=1214,dx=62,dy=52,dz=70] run function pld:instances/instance4/phase_success
execute if score #system instance4_bird matches 2 run function pld:instances/instance4/phase_fail1
execute if score #system instance4_bird matches 3 run function pld:instances/instance4/phase_fail2
execute if score #system instance4_bird matches ..1 if entity @e[type=elder_guardian,x=912,y=57,z=1214,dx=62,dy=52,dz=70] run function pld:instances/instance4/phase_fail3

