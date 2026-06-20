#落日本体初始化
execute at @s run summon minecraft:armor_stand ~ ~2 ~ {Tags:["entity_tick","fall_sun","no_init"],Pose:{Head:[-27.0f,-28.0f,-40.0f]},ArmorItems:[{},{},{},{id:"minecraft:shroomlight",Count:1b}],Invisible: 1b,Invulnerable: 1b,NoGravity:1b,Marker:1b}
function pld:system/archer_damage/weapon_skill/bow6/fall_sun/sun_init
#绘定范围圈 以中心5格半径
execute at @s run function pld:system/archer_damage/weapon_skill/bow6/fall_sun/circle/main

#清理maker本体
kill @s

#主动进入冷却
scoreboard players set @p[tag=sun_owner] weapon_skill_bow6_cool_5ticks 50

#应用冷却缩减
scoreboard players set #temp temp 100
scoreboard players operation #temp temp -= @p[tag=sun_owner] weapon_skill_cool_reduce
scoreboard players operation @p[tag=sun_owner] weapon_skill_bow6_cool_5ticks *= #temp temp
scoreboard players operation @p[tag=sun_owner] weapon_skill_bow6_cool_5ticks /= 100 int
