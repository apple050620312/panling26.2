#喊话 boss出现tick
execute if score #system in3_-4f_phase matches -1 if score #system in3_-4f_begint matches 0.. run function pld:instances/instance3_0/floors/-4/begin/tick
execute if score #system in3_-4f_phase matches -1 if score #system in3_-4f_begint matches 0.. run scoreboard players remove #system in3_-4f_begint 1

execute if score #system in3_-4f_phase matches 1 run function pld:instances/instance3_0/floors/-4/tick_phase1
execute if score #system in3_-4f_phase matches 2 run function pld:instances/instance3_0/floors/-4/tick_phase2


execute unless score #system in3_skill_ds_load matches 0..100 unless score #system in3_skill_ds2_load matches 0..100 unless score #system in3_skill_ep_load matches 0.. unless score #system in3_skill_ep2_load matches 0.. as @e[tag=in30_boss4] at @s run function pld:instances/instance3_0/floors/-4/skill/death_penalty/tick
execute unless score #system in3_skill_dp_load matches 0..100 unless score #system in3_skill_ep_load matches 0.. unless score #system in3_skill_ep2_load matches 0.. run function pld:instances/instance3_0/floors/-4/skill/double_sword/tick
function pld:instances/instance3_0/floors/-4/skill/explode/tick

#传送
execute if score #system in3_-4f_phase matches 0 as @a[x=2834,y=31,z=-849,distance=..21,scores={in3_-4f_time=0..}] run scoreboard players remove @s in3_-4f_time 1
execute if score #system in3_-4f_phase matches 0 as @a[x=2834,y=31,z=-849,distance=..21,scores={in3_-4f_time=0}] run function pld:instances/instance3_0/reward/-4

