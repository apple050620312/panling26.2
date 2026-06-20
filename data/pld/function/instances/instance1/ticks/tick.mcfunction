#副本计时
execute if score #system instance1_tick matches 0.. run scoreboard players remove #system instance1_tick 1
#失败判定
execute if score #system instance1_phase matches 2 unless score #system instance1_fail2 matches 1 if score #system instance1_tick matches 0 run function pld:instances/instance1/phase2_fail

#阶段一tick
execute if score #system instance1_phase matches 1 run function pld:instances/instance1/ticks/tick_p1
execute if entity @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,tag=in1_p1] run scoreboard players set #system instance1_p1in 0

#检测阶段2怪物
execute if score #system instance1_phase matches 2 unless score #system instance1_p2in matches 1 unless score #system instance1_p1in matches 1 if score #system instance1_tick matches 1.. unless entity @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,tag=in1_p2] if entity @e[type=armor_stand,tag=instance1] run function pld:instances/instance1/phase1_pre
execute if entity @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,tag=in1_p2] run scoreboard players set #system instance1_p2in 0

#检测始皇本体
execute if score #system instance1_phase matches 3 if score #system instance1_stage matches 0 unless entity @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,tag=in1_p3] run function pld:instances/instance1/finish

function pld:instances/instance1/ticks/5ticks
