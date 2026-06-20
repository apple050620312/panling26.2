execute store success score @s success run clear @s[scores={copper_chest=1..}] magenta_dye[custom_data={id:"panling:copperkey"}] 1
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{components:{custom_data:{instance:1,chest:1}}}}]
loot spawn ~ ~ ~ loot pld:chests/copperchests/instance1
execute as @e[limit=1,type=item,sort=nearest,nbt={Item:{components:{custom_data:{instance:1,chest:1}}}}] run function pld:system/chests/copperchests/instance1/judge
scoreboard players remove @s[scores={success=1..,copper_chest=1..}] copper_chest 1
scoreboard players set @s[scores={success=1..}] success 0