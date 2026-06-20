#过滤盔甲架
execute as @s[type=!armor_stand] run function pld:ticks/entity/entity_tick
execute as @s[type=armor_stand,tag=entity_tick] run function pld:ticks/entity/entity_tick