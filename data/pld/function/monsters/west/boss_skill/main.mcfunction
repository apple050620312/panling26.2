#检查是否正在无敌,如果是，就取消无敌
execute if entity @s[tag=immortal] at @s run tellraw @a[distance=..10] {"translate": "pl.info.west_boss.invalid"}
execute if entity @s[tag=immortal] run tag @s remove immortal 

#重置进入无敌所需时间 -10s 200tick 1/4为50
#scoreboard players set @s west_boss_skill_tick 200
scoreboard players set @s west_boss_skill_tick 50