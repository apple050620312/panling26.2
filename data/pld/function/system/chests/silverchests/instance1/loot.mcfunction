execute store success score @s success run clear @s[scores={silver_chest=1..}] light_blue_dye[custom_data={id:"panling:silverkey"}] 1
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{components:{custom_data:{instance:1,chest:2}}}}]
loot spawn ~ ~ ~ loot pld:chests/silverchests/instance1
execute as @e[limit=1,type=item,sort=nearest,nbt={Item:{components:{custom_data:{instance:1,chest:2}}}}] run function pld:system/chests/silverchests/instance1/judge
scoreboard players remove @s[scores={success=1..,silver_chest=1..}] silver_chest 1
scoreboard players set @s[scores={success=1..}] success 0