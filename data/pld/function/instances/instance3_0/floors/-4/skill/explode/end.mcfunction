#清除怪物
execute as @e[tag=in3_monster] run function pld:system/tp_and_kill_self

#爆炸声
execute positioned 2834 31 -849 run playsound entity.generic.explode ambient @a[x=2834,y=31,z=-849,distance=..21]
#粒子效果：爆炸
execute positioned 2834 31 -849 run function pld:instances/instance3_0/floors/-4/skill/explode/particle/explode/main/main

#结算1 染色情况
scoreboard players set #temp temp 0
execute if block 2834 30 -859 minecraft:end_stone if block 2834 30 -839 minecraft:bedrock run scoreboard players set #temp temp 1
execute unless score #temp temp matches 1 run kill @a[scores={instance3_floor=-4},x=2834,y=31,z=-849,distance=..21]

#结算2 爆炸伤害
execute as @a[scores={instance3_floor=-4},x=2834,y=31,z=-849,distance=..21] run function pld:instances/instance3_0/floors/-4/skill/explode/check/check

#重置鱼眼
function pld:instances/instance3_0/floors/-4/skill/explode/eye/clear
#记分板
scoreboard players add #system in3_skill_ep_count 1

#关闭bossbar
bossbar set pld:instance3_0_ep_loading visible false

#noai解除
data merge entity @e[tag=in30_boss4,limit=1] {NoAI:0b}

#bossbar提示无敌解除
bossbar set pld:instance3_0_boss4hp color red
effect clear @e[tag=in30_boss4,limit=1] resistance

#下一个技能-十秒后-处决
scoreboard players set #system in3_skill_ds_tick 200
scoreboard players reset #system in3_skill_dp_tick
scoreboard players reset #system in3_skill_ep2_load
scoreboard players reset #system in3_skill_ep_load


#结算的时候，如果phase不是1 开启染色功能
execute if score #system in3_-4f_phase matches 1 run tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss4_skill.dr"} 
execute if score #system in3_-4f_phase matches 1 run tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss4_tip2"} 
execute if score #system in3_-4f_phase matches 1 run scoreboard players set #system in3_-4f_phase 2
