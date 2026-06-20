#marker的行为
#tp到自己owner的地方
scoreboard players reset @s success
tag @s add tp_mark
execute as @e[type=arrow,tag=bow6_skill_arrow] if score @s projectile_uuid0 = @e[limit=1,tag=tp_mark] marker_owner_uuid0 at @s run tag @s add the_arrow
execute if entity @e[tag=the_arrow] run tp @s @e[tag=the_arrow,limit=1]
tag @s remove tp_mark

#如果没有自己的箭，那么将会觸發落日
execute unless entity @e[tag=the_arrow] at @s run scoreboard players set @s success 1

#scoreboard players reset @s success
#如果箭落地 将会觸發落日
execute if entity @e[tag=the_arrow,nbt={inGround:1b}] at @s run scoreboard players set @s success 1

execute if score @s success matches 1 run function pld:system/archer_damage/weapon_skill/bow6/fall_sun/fall

tag @e[tag=the_arrow] remove the_arrow