#重置杀怪判定
scoreboard players set @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] kill_green 0
scoreboard players set @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] kill_red 0
scoreboard players set @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] kill_white 0
scoreboard players set #system instance1_p1in 1
scoreboard players remove #system instance1_stage 1
execute if score #system instance1_stage matches 1.. run tellraw @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] {"translate": "pl.info.instance1.next_phase"}
execute if score #system instance1_stage matches 1 run tellraw @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] {"translate": "pl.info.instance1.final_phase"}
execute if score #system instance1_stage matches 0 run tellraw @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] {"translate": "pl.info.instance1.boss"}
execute if score #system instance1_stage matches 8 run setblock 2805 72 -413 minecraft:barrier destroy
execute if score #system instance1_stage matches 7 run setblock 2805 71 -413 minecraft:barrier destroy
execute if score #system instance1_stage matches 6 run setblock 2805 72 -415 minecraft:barrier destroy
execute if score #system instance1_stage matches 5 run setblock 2805 71 -415 minecraft:barrier destroy
execute if score #system instance1_stage matches 4 run setblock 2805 72 -414 minecraft:barrier destroy
execute if score #system instance1_stage matches 3 run setblock 2805 71 -414 minecraft:barrier destroy
execute if score #system instance1_stage matches 2 run fill 2804 72 -413 2804 71 -413 minecraft:barrier destroy
execute if score #system instance1_stage matches 1 run fill 2804 72 -415 2804 71 -415 minecraft:barrier destroy
execute if score #system instance1_stage matches 0 run fill 2804 71 -414 2804 72 -414 minecraft:barrier destroy
particle cloud 2805 71 -414 0.5 1.0 1.0 0 100 force
execute if score #system instance1_stage matches 1.. run schedule clear pld:instances/instance1/phase1
execute if score #system instance1_stage matches 1.. run schedule function pld:instances/instance1/phase1 3s
execute if score #system instance1_stage matches 0 run function pld:instances/instance1/phase3
