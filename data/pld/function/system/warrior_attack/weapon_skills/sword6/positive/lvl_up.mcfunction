#重置持续时间 30秒
scoreboard players set @s weapon_skill_sword6_positive_5ticks 150

#升级
execute unless score @s weapon_skill_sword6_lvl matches 3 run scoreboard players add @s weapon_skill_sword6_lvl 1

#根据玩家当前状态赋予近战傷害加成
#execute if score @s weapon_skill_sword6_lvl matches 1.. run attribute @s minecraft:generic.attack_damage modifier add panling:uuid_11_5_5_5_1 0.15 add_multiplied_base
#execute if score @s weapon_skill_sword6_lvl matches 2.. run attribute @s minecraft:generic.attack_damage modifier add panling:uuid_11_5_5_5_2 0.15 add_multiplied_base
#execute if score @s weapon_skill_sword6_lvl matches 3.. run attribute @s minecraft:generic.attack_damage modifier add panling:uuid_11_5_5_5_3 0.15 add_multiplied_base

#回复生命值
#effect give @s instant_health 1 0 false

#进入升级冷却 2s
scoreboard players set @s weapon_skill_sword6_positive_cool_5ticks 10

#应用冷却缩减
scoreboard players set #temp temp 100
scoreboard players operation #temp temp -= @s weapon_skill_cool_reduce
scoreboard players operation @s weapon_skill_sword6_positive_cool_5ticks *= #temp temp
scoreboard players operation @s weapon_skill_sword6_positive_cool_5ticks /= 100 int

#觸發武器技能
function pld:equipment_lock/equipment/armor/set_bonus/when_weapon_skill_enable