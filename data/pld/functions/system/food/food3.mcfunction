#scoreboard players set @s food_tick 36000
#异步
scoreboard players set @s food_tick 9000

function pld:system/food/remove_attribute
scoreboard players set @s attack_damage1_food 15



advancement revoke @s only pld:system/food/food3