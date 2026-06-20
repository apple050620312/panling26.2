#清理实体
execute as @s[type=item,nbt={Item:{id:"minecraft:nether_star"}},nbt=!{Item:{id:"minecraft:nether_star",tag:{id:"panling:relive_stone"}}}] run kill @s

execute as @s[type=cow,tag=!panling] run function pld:system/tp_and_kill_self

#弓箭手技能相关计时
function pld:system/archer_damage/weapon_skill/5ticks_entity
