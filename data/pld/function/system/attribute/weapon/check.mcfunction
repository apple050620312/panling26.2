scoreboard players reset @s temp3
execute store result score @s temp run data get entity @s Inventory[{components:{custom_data:{act:1}}}].tag.rare
execute store result score @s temp2 run data get entity @s Inventory[{components:{custom_data:{act:1}}}].tag.branch
execute if score @s weapon_rare = @s temp if score @s weapon_branch = @s temp2 run scoreboard players set @s temp3 1
execute unless score @s temp3 matches 1 run function pld:system/attribute/weapon/update