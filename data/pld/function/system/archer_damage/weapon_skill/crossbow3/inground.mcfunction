#获取射箭者 上tag
tag @s add uid_temp
execute as @a if score @s player_uid = @e[type=arrow,limit=1,tag=uid_temp] player_uid run tag @s add hit_player
tag @s remove uid_temp

execute at @s run function pld:system/archer_damage/weapon_skill/crossbow3/fire

tag @a remove hit_player
kill @s