#补充玩家任务屬性
function pld:system/attribute/misson
#补充玩家最大生命值屬性
execute as @s[level=10..] run function pld:system/attribute/lvl_hp

#武器屬性
execute as @s[scores={job=0}] run function pld:system/attribute/job/0/check
execute as @s[scores={job=1}] run function pld:system/attribute/job/1/check
#根据武器，上数值
function pld:equipment_lock/enable/resident_attribute/branch/check

#清理不该存在的武器屬性
execute unless data entity @s Inventory[{components:{custom_data:{act:1}}}] run function pld:system/attribute/clear/weapon
function pld:system/attribute/clear/weapon_skill

#tellraw yl_jiu_qiu [{"score":{"name":"@s","objective": "weapon_rare"}},{"text":" "},{"score":{"name":"@s","objective": "weapon_branch"}}]

#scoreboard players set #temp temp 0
#execute as @s[scores={WeaponSlot=1}] unless data entity @s Inventory[{slot:0,components:{custom_data:{act:1}}}] run scoreboard players set #temp temp 1
#execute as @s[scores={WeaponSlot=2}] unless data entity @s Inventory[{slot:1,components:{custom_data:{act:1}}}] run scoreboard players set #temp temp 1
#execute as @s[scores={WeaponSlot=3}] unless data entity @s Inventory[{slot:2,components:{custom_data:{act:1}}}] run scoreboard players set #temp temp 1
#execute as @s[scores={WeaponSlot=4}] unless data entity @s Inventory[{slot:3,components:{custom_data:{act:1}}}] run scoreboard players set #temp temp 1
#execute as @s[scores={WeaponSlot=5}] unless data entity @s Inventory[{slot:4,components:{custom_data:{act:1}}}] run scoreboard players set #temp temp 1
#execute as @s[scores={WeaponSlot=6}] unless data entity @s Inventory[{slot:5,components:{custom_data:{act:1}}}] run scoreboard players set #temp temp 1
#execute as @s[scores={WeaponSlot=7}] unless data entity @s Inventory[{slot:6,components:{custom_data:{act:1}}}] run scoreboard players set #temp temp 1
#execute as @s[scores={WeaponSlot=8}] unless data entity @s Inventory[{slot:7,components:{custom_data:{act:1}}}] run scoreboard players set #temp temp 1
#execute as @s[scores={WeaponSlot=9}] unless data entity @s Inventory[{slot:8,components:{custom_data:{act:1}}}] run scoreboard players set #temp temp 1
#execute as @s[scores={WeaponSlot=-1}] unless data entity @s Inventory[{slot:-106,components:{custom_data:{act:1}}}] run scoreboard players set #temp temp 1
#execute if score #temp temp matches 1 run function pld:system/attribute/clear/weapon
#scoreboard players reset #temp temp