execute if block ~ 255 ~ chest{Items:[{slot:0,components:{custom_data:{awake:0}}}]} run function pld:system/weaponlock/unlock/weapon/1/bow6/0
execute if block ~ 255 ~ chest{Items:[{slot:0,components:{custom_data:{awake:1}}}]} run function pld:system/weaponlock/unlock/weapon/1/bow6/1
execute if block ~ 255 ~ chest{Items:[{slot:0,components:{custom_data:{awake:2}}}]} run function pld:system/weaponlock/unlock/weapon/1/bow6/2
execute if block ~ 255 ~ chest{Items:[{slot:0,components:{custom_data:{awake:3}}}]} run function pld:system/weaponlock/unlock/weapon/1/bow6/3
scoreboard players set @s weapon_rare 6
scoreboard players set @s weapon_branch 0
scoreboard players set @s success 1