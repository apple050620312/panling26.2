#血爆粒子效果
execute at @s run particle dust 1 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 20

#根据pld:system blooding_temp[0]造成一次傷害
execute store result score #temp entity_hurt_temp run data get storage pld:system blooding_temp[0].damage 100

execute store result score #temp temp run data get storage pld:system blooding_temp[0].lvl

scoreboard players operation #temp entity_hurt_temp *= #temp temp

execute store result score #system temp run data get storage pld:system blooding_temp[0].uid
execute as @a if score @s player_uid = #system temp run tag @s add if_death_count
#傷害
function pld:system/warrior_attack/hurt/hurt_armor_enchant_effect

#如果最终对象死亡，删除其对应的marker
execute if score @s entity_4health matches ..0 as @e[type=marker,tag=blooding] run kill @s


tag @a remove if_death_count
