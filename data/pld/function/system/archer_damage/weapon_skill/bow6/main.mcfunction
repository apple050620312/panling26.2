#重置状态效果持续时间
scoreboard players set @s weapon_skill_bow6_5ticks 300

#升级
function pld:system/archer_damage/weapon_skill/bow6/lvl_up
#信息&粒子效果&音效

execute at @s run playsound entity.blaze.shoot player @s ~ ~ ~
execute unless score @s info_pos_weapon_skill matches 1 run title @s actionbar [{"translate":"pl.info.weapon_skill_bow6"},{"score":{"name": "@s","objective": "weapon_skill_bow6_lvl"}},{"translate":"pl.info.weapon_skill_bow6.b"}]
execute if score @s info_pos_weapon_skill matches 1 run tellraw @s [{"translate":"pl.info.weapon_skill_bow6"},{"score":{"name": "@s","objective": "weapon_skill_bow6_lvl"}},{"translate":"pl.info.weapon_skill_bow6.b"}]

#冷却
scoreboard players set @s weapon_skill_cool_5ticks 10
#应用冷却缩减
function pld:system/weapon_skill_cool/reduce_cool

function pld:equipment_lock/equipment/armor/set_bonus/when_weapon_skill_enable

