#更新记分板
scoreboard players operation @s weapon_rare = @s temp
scoreboard players operation @s weapon_branch = @s temp2

data modify storage pld:system Temp set value {}
data modify storage pld:system Temp set from entity @s Inventory[{components:{custom_data:{act:1}}}]
function pld:equipment_lock/enable/resident_attribute/check
