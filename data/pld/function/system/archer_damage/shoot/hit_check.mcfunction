#语境
# @s 被命中目标
#将目标的uuid第一位存进自己的uuid里
execute store result score @s monster_uuid_0 run data get entity @s UUID[0]


execute store result score @s hit_player_uid run data get entity @s ActiveEffects[{Id:32}].Duration 0.01
tag @s add uid_temp
execute as @a if score @s player_uid = @e[tag=monster,limit=1,tag=uid_temp] hit_player_uid run tag @s add hit_player
tag @s remove uid_temp

# @p[tag=hit_player] 攻击的玩家

#bow3
execute unless score @s weapon_burn_tag matches 1 if score @p[tag=hit_player] weapon_rare matches 3 if score @p[tag=hit_player] weapon_branch matches 0 run function pld:system/archer_damage/weapon_skill/bow3/burn
#crossbow3
execute if score @p[tag=hit_player] weapon_rare matches 3 if score @p[tag=hit_player] weapon_branch matches 1 at @s run function pld:system/archer_damage/weapon_skill/crossbow3/fire
#bow4-根据情况处理
execute if score @p[tag=hit_player] weapon_rare matches 4 if score @p[tag=hit_player] weapon_branch matches 0 run function pld:system/archer_damage/weapon_skill/bow4/arrow_hit_check
#bow5
execute if score @p[tag=hit_player] weapon_rare matches 5 if score @p[tag=hit_player] weapon_branch matches 0 if score @p[tag=hit_player] weapon_skill_bow5_lvl matches 1.. run function pld:system/archer_damage/weapon_skill/bow5/pursuit
#bow6
#execute if score @p[tag=hit_player] weapon_rare matches 6 if score @p[tag=hit_player] weapon_branch matches 0 if score @p[tag=hit_player] weapon_skill_bow6_lvl matches 3.. run function pld:system/archer_damage/weapon_skill/bow6/fall_sun/fall


tag @a[tag=hit_player] remove hit_player
effect clear @s hero_of_the_village

