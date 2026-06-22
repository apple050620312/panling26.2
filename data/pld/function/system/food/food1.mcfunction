#scoreboard players set @s food_tick 36000
#异步
scoreboard players set @s food_tick 9000
function pld:system/food/remove_attribute
attribute @s movement_speed modifier add panling:mod_0_0_4_0_1 0.05 add_multiplied_base
advancement revoke @s only pld:system/food/food1