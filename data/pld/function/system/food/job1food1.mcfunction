#scoreboard players set @s food_tick 36000
#异步
scoreboard players set @s food_tick 9000

function pld:system/food/remove_attribute
scoreboard players set @s archer_damage1_food 10
advancement revoke @s only pld:system/food/job1food1