#为箭矢增加能够追踪被命中怪物的effects
execute store result entity @s CustomPotionEffects[{Id:32b}].Duration int 100 run scoreboard players get @p[tag=shooter] player_uid
#限制：箭矢不再能拾起
data merge entity @s {pickup:2b}

