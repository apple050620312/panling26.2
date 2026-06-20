#对最近的目标造成大量伤害 并上标记，下次受到本伤害直接秒杀
tag @p[scores={instance3_floor=-4}] add dp_damage 

execute as @p[tag=dp_damage] at @s run function pld:instances/instance3_0/floors/-4/skill/death_penalty/dp_damage

#场上最多存在一个拥有处决标记的玩家
scoreboard players set @a in3_skill_dp_mark 0
scoreboard players set @p[tag=dp_damage] in3_skill_dp_mark 1


tag @a remove dp_damage


#关闭bossbar

bossbar set pld:instance3_0_dp_loading visible false
data merge entity @e[tag=in30_boss4,limit=1] {NoAI:0b}
bossbar set pld:instance3_0_boss4hp color red

#下次释放技能
scoreboard players set #system in3_skill_ds_tick 400
