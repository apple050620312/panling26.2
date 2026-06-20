#如果在p2 那么强化本技能
scoreboard players set #system in3_skill_dp_mark 0
execute if predicate pld:half run scoreboard players set #system in3_skill_dp_mark 1

execute if score #system in3_-4f_phase matches 1 run bossbar set pld:instance3_0_dp_loading name {"translate":"pl.bossbar.instance3_0.boss4_dp"} 
execute if score #system in3_-4f_phase matches 2 if score #system in3_skill_dp_mark matches 0 run bossbar set pld:instance3_0_dp_loading name {"translate":"pl.bossbar.instance3_0.boss4_dpb"}
execute if score #system in3_-4f_phase matches 2 if score #system in3_skill_dp_mark matches 1 run bossbar set pld:instance3_0_dp_loading name {"translate":"pl.bossbar.instance3_0.boss4_dpw"}

#打开bossbar
bossbar set pld:instance3_0_dp_loading value 0
bossbar set pld:instance3_0_dp_loading visible true

#设置load scb
scoreboard players set #system in3_skill_dp_load 0

#喊话
execute if score #system in3_-4f_phase matches 1 run tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss4_skill.dp"} 
execute if score #system in3_-4f_phase matches 2 run tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss4_skill.dp2"}


#无敌
effect give @e[tag=in30_boss4,limit=1] resistance 5 4 
#noai
data merge entity @e[tag=in30_boss4,limit=1] {NoAI:1b}
#bossbar提示无敌
bossbar set pld:instance3_0_boss4hp color blue
