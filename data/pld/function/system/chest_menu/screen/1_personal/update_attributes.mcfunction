execute store result score @s armor2 run attribute @s generic.armor get 100
scoreboard players operation @s armor_display_int_part = @s armor2
scoreboard players operation @s armor_display_int_part /= 100 int
scoreboard players operation @s armor_display_fraction_part = @s armor2
scoreboard players operation @s armor_display_fraction_part %= 100 int

execute store result score @s armor_toughness2 run attribute @s generic.armor_toughness get 100
scoreboard players operation @s armor_toughness_display_int_part = @s armor_toughness2
scoreboard players operation @s armor_toughness_display_int_part /= 100 int
scoreboard players operation @s armor_toughness_display_fraction_part = @s armor_toughness2
scoreboard players operation @s armor_toughness_display_fraction_part %= 100 int

execute store result score @s max_health2 run attribute @s generic.max_health get 100
scoreboard players operation @s max_health_display_int_part = @s max_health2
scoreboard players operation @s max_health_display_int_part /= 100 int
scoreboard players operation @s max_health_display_fraction_part = @s max_health2
scoreboard players operation @s max_health_display_fraction_part %= 100 int

execute store result score @s movement_speed4 run attribute @s generic.movement_speed get 10000
scoreboard players operation @s movement_speed_percent = @s movement_speed4
scoreboard players operation @s movement_speed_percent /= 10 int

execute store result score @s knockback_resistance_percent run attribute @s generic.knockback_resistance get 100




scoreboard players set @s all_protection_percent 0
scoreboard players operation @s all_protection_percent += @s head_all_protection_multiply_base
scoreboard players operation @s all_protection_percent += @s chest_all_protection_multiply_base
scoreboard players operation @s all_protection_percent += @s legs_all_protection_multiply_base
scoreboard players operation @s all_protection_percent += @s feet_all_protection_multiply_base
scoreboard players set @s arrow_protection_percent 0
scoreboard players operation @s arrow_protection_percent += @s head_arrow_protection_multiply_base
scoreboard players operation @s arrow_protection_percent += @s chest_arrow_protection_multiply_base
scoreboard players operation @s arrow_protection_percent += @s legs_arrow_protection_multiply_base
scoreboard players operation @s arrow_protection_percent += @s feet_arrow_protection_multiply_base
scoreboard players operation @s arrow_protection_percent += @s all_protection_percent
execute if score @s arrow_protection_percent matches 80.. run scoreboard players set @s arrow_protection_percent 80
scoreboard players set @s fire_protection_percent 0
scoreboard players operation @s fire_protection_percent += @s head_fire_protection_multiply_base
scoreboard players operation @s fire_protection_percent += @s chest_fire_protection_multiply_base
scoreboard players operation @s fire_protection_percent += @s legs_fire_protection_multiply_base
scoreboard players operation @s fire_protection_percent += @s feet_fire_protection_multiply_base
scoreboard players operation @s fire_protection_percent += @s all_protection_percent
execute if score @s fire_protection_percent matches 80.. run scoreboard players set @s fire_protection_percent 80
scoreboard players set @s magic_protection_percent 0
scoreboard players operation @s magic_protection_percent = @s all_protection_percent



function pld:system/warrior_attack/attribute/update
function pld:system/warrior_attack/attribute/atk_sp/update

execute store result score @s attack_damage_display2 run attribute @s generic.attack_damage get 100
scoreboard players operation @s attack_damage_display2 = @s attack_damage1
scoreboard players operation @s attack_damage_display2 *= 10 int
scoreboard players operation @s attack_damage_display_int_part = @s attack_damage_display2
scoreboard players operation @s attack_damage_display_int_part /= 100 int
scoreboard players operation @s attack_damage_display_fraction_part = @s attack_damage_display2
scoreboard players operation @s attack_damage_display_fraction_part %= 100 int

function pld:system/weapon_skill_cool/update
function pld:system/archer_damage/update


scoreboard players operation @s archer_damage_display_int_part = @s archer_damage
scoreboard players operation @s archer_damage_display_int_part /= 10 int
scoreboard players operation @s archer_damage_display_fraction_part = @s archer_damage
scoreboard players operation @s archer_damage_display_fraction_part %= 10 int

#炉子在副手，元素在主手
execute if predicate pld:offhand/furnace3 run scoreboard players set @s zf_hold_ldl 1
execute if predicate pld:offhand/furnace4 run scoreboard players set @s[level=30..] zf_hold_ldl 2
execute if predicate pld:offhand/furnace5 run scoreboard players set @s[level=40..] zf_hold_ldl 3
execute if predicate pld:offhand/furnace6 run scoreboard players set @s[level=50..] zf_hold_ldl 4

#炉子在主手，元素在副手
execute if predicate pld:mainhand/furnace3 run scoreboard players set @s zf_hold_ldl -1
execute if predicate pld:mainhand/furnace4 run scoreboard players set @s[level=30..] zf_hold_ldl -2
execute if predicate pld:mainhand/furnace5 run scoreboard players set @s[level=40..] zf_hold_ldl -3
execute if predicate pld:mainhand/furnace6 run scoreboard players set @s[level=50..] zf_hold_ldl -4

#获取武器数据
function pld:system/zf/attribute/weapon/weapon_attribute
#更新玩家阵法强度数据
function pld:system/zf/attribute/zf_str
#更新玩家阵法冷却缩减数据
function pld:system/zf/attribute/zf_cool_reduce
#更新玩家阵法不消耗率
function pld:system/zf/attribute/zf_consume_reduce
