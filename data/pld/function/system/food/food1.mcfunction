#scoreboard players set @s food_tick 36000
#异步
scoreboard players set @s food_tick 9000
function pld:system/food/remove_attribute
attribute @s generic.movement_speed modifier add 0-0-4-0-1 "妖族食物效果" 0.05 multiply_base
advancement revoke @s only pld:system/food/food1