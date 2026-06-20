#第二步： as 所有射出的箭
#如果箭矢由弩射出且为副箭 则archerdamage继承为20%
execute if entity @s[nbt={ShotFromCrossbow:1b,pickup:2b}] run scoreboard players set @s temp 1

#覆盖箭矢强度
execute unless score @s temp matches 1 store result entity @s damage double 0.1 run scoreboard players get @p[tag=shooter] archer_damage
execute if score @s temp matches 1 store result entity @s damage double 0.02 run scoreboard players get @p[tag=shooter] archer_damage

#如果@p[tag=shooter]没有标记 箭矢将不会暴击
execute unless score @p[tag=shooter] weapon_arrow_crit matches 1 run data merge entity @s {crit:0b}

#如果@p[tag=shooter]有标记 箭矢将能穿透
execute store result entity @s PierceLevel byte 1.0 run scoreboard players get @p[tag=shooter] weapon_piercing_lvl

#根据玩家手中的弓，判断后续特殊效果
#根据记分板，能够追踪玩家的uid 和现在使用的弓
# @p[tag=shooter] uid
# @p[tag=shooter] weapon_rare
# @p[tag=shooter] weapon_branch
scoreboard players operation @s player_uid = @p[tag=shooter] player_uid 

function #pld:archer/the_arrow
