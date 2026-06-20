#scoreboard players set @s food_tick 36000
#异步
scoreboard players set @s food_tick 9000

function pld:system/food/remove_attribute
attribute @s generic.armor_toughness modifier add 0-0-4-0-2 "仙族食物效果" 1 add
effect give @s regeneration 600 0 false
advancement revoke @s only pld:system/food/food2