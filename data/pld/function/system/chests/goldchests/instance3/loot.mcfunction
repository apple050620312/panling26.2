execute store success score @s success run clear @s[scores={gold_chest=1..}] yellow_dye[custom_data={id:"panling:goldkey"}] 1
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{components:{custom_data:{instance:3,chest:1}}}}]
execute as @s[scores={instance3_floor=0..}] run loot spawn ~ ~ ~ loot pld:chests/goldchests/instance3
execute as @s[scores={instance3_floor=-4}] run loot spawn ~ ~ ~ loot pld:chests/goldchests/instance30
execute as @e[limit=1,type=item,sort=nearest,nbt={Item:{components:{custom_data:{instance:3,chest:1}}}}] run function pld:system/chests/goldchests/instance3/judge
scoreboard players remove @s[scores={success=1..,gold_chest=1..}] gold_chest 1
scoreboard players set @s[scores={success=1..}] success 0