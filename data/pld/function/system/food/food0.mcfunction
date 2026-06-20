#scoreboard players set @s food_tick 36000
#异步
scoreboard players set @s food_tick 9000

function pld:system/food/remove_attribute attribute @s max_health modifier add panling:mod_0_0_4_0_0 2 add_value
advancement revoke @s only pld:system/food/food0