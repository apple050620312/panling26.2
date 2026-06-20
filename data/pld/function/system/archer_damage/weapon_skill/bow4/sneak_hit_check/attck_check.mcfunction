
#统计附近三格以内的怪物
scoreboard players set @s entity_hurttime10_count 0
execute store result score @s entity_hurttime10_count run execute if entity @e[nbt={HurtTime:10s},tag=monster]
execute if score @s entity_hurttime10_count matches 1 run tag @e[nbt={HurtTime:10s},tag=monster] add bow4_tag
execute if score @s entity_hurttime10_count matches 2.. positioned ^-0.05 ^-0.05 ^ run function pld:system/archer_damage/weapon_skill/bow4/sneak_hit_check/select

#后续
execute if score @s sneak_check matches 1.. if entity @e[tag=bow4_tag] unless score @s weapon_skill_cool_5ticks matches 1.. run function pld:system/archer_damage/weapon_skill/bow4/sneak_hit_check/tag

tag @e[tag=bow4_tag] remove bow4_tag

advancement revoke @s only pld:system/weapon_skill/archer_attack