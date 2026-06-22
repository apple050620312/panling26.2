#检查激活位置是否有对应武器
execute as @s[scores={WeaponSlot=1}] if data entity @s Inventory[{slot:0,components:{custom_data:{act:1}}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=2}] if data entity @s Inventory[{slot:1,components:{custom_data:{act:1}}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=3}] if data entity @s Inventory[{slot:2,components:{custom_data:{act:1}}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=4}] if data entity @s Inventory[{slot:3,components:{custom_data:{act:1}}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=5}] if data entity @s Inventory[{slot:4,components:{custom_data:{act:1}}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=6}] if data entity @s Inventory[{slot:5,components:{custom_data:{act:1}}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=7}] if data entity @s Inventory[{slot:6,components:{custom_data:{act:1}}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=8}] if data entity @s Inventory[{slot:7,components:{custom_data:{act:1}}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=9}] if data entity @s Inventory[{slot:8,components:{custom_data:{act:1}}}] run function #pld:attribute/job/0/set_scb
#execute as @s[scores={WeaponSlot=-1}] if data entity @s Inventory[{slot:-106,components:{custom_data:{act:1}}}] run function #pld:attribute/job/0/set_scb

#根据武器，上数值
#function #pld:attribute/job/0/check_scb
