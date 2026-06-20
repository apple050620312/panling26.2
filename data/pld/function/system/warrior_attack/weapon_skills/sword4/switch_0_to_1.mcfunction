
execute unless score @s info_pos_weapon_skill matches 1 run title @s actionbar {"translate":"pl.info.weapon_skill_sword4_1"}
execute if score @s info_pos_weapon_skill matches 1 run tellraw @s {"translate":"pl.info.weapon_skill_sword4_1"}
playsound entity.arrow.hit_player player @s ~ ~ ~
tag @s remove sword4_0
attribute @s minecraft:generic.attack_damage modifier remove panling:uuid_11_5_5_5_5

scoreboard players set @s weapon_skill_sword4_switch 2

