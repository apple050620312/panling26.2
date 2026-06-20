#失败判定
execute unless score #system instance1_fail1 matches 1 if score #system instance1_tick matches 0 run function pld:instances/instance1/phase1_fail

#检测阶段1杀怪
execute if score #system instance1_color matches 1 if entity @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,scores={kill_white=1..}] run function pld:instances/instance1/phase1_fail
execute if score #system instance1_color matches 2 if entity @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,scores={kill_red=1..}] run function pld:instances/instance1/phase1_fail
execute if score #system instance1_color matches 3 if entity @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,scores={kill_green=1..}] run function pld:instances/instance1/phase1_fail

#检测阶段1达成
execute if score #system instance1_color matches 1 if entity @e[type=armor_stand,tag=instance1] unless score #system instance1_fail1 matches 1 unless entity @e[x=2808,y=99,z=-428,dx=28,dy=4,dz=28,type=skeleton] unless entity @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,type=skeleton] unless entity @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,type=husk] run function pld:instances/instance1/phase2_pre
execute if score #system instance1_color matches 2 if entity @e[type=armor_stand,tag=instance1] unless score #system instance1_fail1 matches 1 unless entity @e[x=2808,y=99,z=-428,dx=28,dy=4,dz=28,type=skeleton] unless entity @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,type=skeleton] unless entity @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,type=zombie] run function pld:instances/instance1/phase2_pre
execute if score #system instance1_color matches 3 if entity @e[type=armor_stand,tag=instance1] unless score #system instance1_fail1 matches 1 unless entity @e[x=2808,y=99,z=-428,dx=28,dy=4,dz=28,type=skeleton] unless entity @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,type=zombie] unless entity @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,type=husk] run function pld:instances/instance1/phase2_pre

