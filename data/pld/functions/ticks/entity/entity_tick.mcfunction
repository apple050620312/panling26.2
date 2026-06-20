#怪物生成
execute as @s[type=falling_block] run function pld:monsters/pos
execute as @s[type=rabbit,tag=!monster] run tag @s add monster
execute as @s[type=rabbit,tag=!not_undead] run tag @s add not_undead
execute as @s[type=magma_cube,tag=!monster] run tag @s add monster
execute as @s[type=magma_cube,tag=!not_undead] run tag @s add not_undead
execute as @s[type=slime,tag=!monster] run tag @s add monster
execute as @s[type=slime,tag=!not_undead] run tag @s add not_undead

#火球自查
execute as @s[type=small_fireball] run function pld:system/fire_ball/tick

#箭矢清理检查
execute as @s[type=arrow] run function pld:system/archer_damage/clear_arrow/tick

#弓箭手武器技相关tick
function pld:system/archer_damage/weapon_skill/entity_tick

#菜单物品实体tick
function pld:system/chest_menu/tick_entity

#前置相关tick
function pld:pre/entity_tick

#实体5ticks
execute if score #system tick_operation matches 0 run function pld:ticks/entity/tick1
execute if score #system tick_operation matches 1 run function pld:ticks/entity/tick2
execute if score #system tick_operation matches 2 run function pld:ticks/entity/tick3
execute if score #system tick_operation matches 3 run function pld:ticks/entity/tick4
execute if score #system tick_count matches 20 run function pld:ticks/entity/1s