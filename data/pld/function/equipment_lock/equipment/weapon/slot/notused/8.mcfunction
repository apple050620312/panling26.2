#复制物品
data modify block ~ 255 ~ Items[0].id set from entity @s Inventory[{slot:7}].id
data modify block ~ 255 ~ Items[0].tag set from entity @s Inventory[{slot:7}].tag

#特殊加工
execute as @s[scores={job=0}] run function pld:system/weaponlock/unlock/weapon/0
execute as @s[scores={job=1}] run function pld:system/weaponlock/unlock/weapon/1

#通用加工
#附灵属性
execute if entity @s[scores={success=1}] run function #pld:weapon_unlock/enchant
#激活标记
execute if entity @s[scores={success=1}] run data remove block ~ 255 ~ Items[0].components."minecraft:lore"[-1]
execute if entity @s[scores={success=1}] run data modify block ~ 255 ~ Items[0].components."minecraft:lore" append value '{"translate":"pl.lore.weaponinfo2b"}'
execute if entity @s[scores={success=1}] run execute if data block ~ 255 ~ Items[{components:{custom_data:{act:0}}}] run data modify block ~ 255 ~ Items[{components:{custom_data:{act:0}}}].tag.act set value 1

#覆盖
#loot replace entity @s hotbar.7 1 mine ~ 255 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
item replace entity @s hotbar.7 from block ~ 255 ~ container.0
scoreboard players set @s success 0