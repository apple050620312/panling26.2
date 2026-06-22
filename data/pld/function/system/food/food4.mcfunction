#scoreboard players set @s food_tick 36000
#异步
scoreboard players set @s food_tick 9000

function pld:system/food/remove_attribute
attribute @s armor modifier add panling:mod_0_0_4_0_4 2 add_value
advancement revoke @s only pld:system/food/food4