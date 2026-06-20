#scoreboard players set @s food_tick 36000
#异步
scoreboard players set @s food_tick 9000

function pld:system/food/remove_attribute
scoreboard players set @s food_zf_str 1
advancement revoke @s only pld:system/food/job2food2