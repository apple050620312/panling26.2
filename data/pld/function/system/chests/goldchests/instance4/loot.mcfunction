execute store success score @s success run clear @s[scores={gold_chest=1..}] yellow_dye[custom_data={id:"panling:goldkey"}] 1
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{components:{custom_data:{instance:4,chest:1}}}}]
loot spawn ~ ~ ~ loot pld:chests/goldchests/instance4
execute as @e[limit=1,type=item,sort=nearest,nbt={Item:{components:{custom_data:{instance:4,chest:1}}}}] run function pld:system/chests/goldchests/instance4/judge
scoreboard players remove @s[scores={success=1..,gold_chest=1..}] gold_chest 1
scoreboard players set @s[scores={success=1..}] success 0