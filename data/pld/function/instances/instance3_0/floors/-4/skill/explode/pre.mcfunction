#将boss tp到中央 无敌且读条准备释放技能
tp @e[tag=in30_boss4,limit=1] 2834 31 -849 90 0

#随机获得爆炸色
scoreboard players set #system in3_skill_ep_mark 0
execute if predicate pld:half run scoreboard players set #system in3_skill_ep_mark 1

#喊话
tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss4_skill.ep"} 

#打开bossbar
bossbar set pld:instance3_0_ep_loading visible true
bossbar set pld:instance3_0_ep_loading name {"translate":"pl.bossbar.instance3_0.boss4_ep"}
bossbar set pld:instance3_0_ep_loading max 100

#设置scb
scoreboard players set #system in3_skill_ep_load 0
scoreboard players add #system in3_skill_ep_count 1
scoreboard players set #system in3_skill_dp_tick -1
scoreboard players set #system in3_skill_ds_tick -1

#noai
data merge entity @e[tag=in30_boss4,limit=1] {NoAI:1b}

#无敌
effect clear @e[tag=in30_boss4,limit=1] resistance
effect give @e[tag=in30_boss4,limit=1] resistance 25 4 



