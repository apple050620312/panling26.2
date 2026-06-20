#scoreboard players set @s food_tick 36000
#异步
scoreboard players set @s food_tick 9000

function pld:system/food/remove_attribute
attribute @s max_health modifier add 0-0-4-0-0 "神族食物效果" 2 add
advancement revoke @s only pld:system/food/food0