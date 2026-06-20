#检查激活位置是否有对应武器
execute as @s[scores={WeaponSlot=1}] if data entity @s Inventory[{Slot:0b,tag:{act:1}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=2}] if data entity @s Inventory[{Slot:1b,tag:{act:1}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=3}] if data entity @s Inventory[{Slot:2b,tag:{act:1}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=4}] if data entity @s Inventory[{Slot:3b,tag:{act:1}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=5}] if data entity @s Inventory[{Slot:4b,tag:{act:1}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=6}] if data entity @s Inventory[{Slot:5b,tag:{act:1}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=7}] if data entity @s Inventory[{Slot:6b,tag:{act:1}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=8}] if data entity @s Inventory[{Slot:7b,tag:{act:1}}] run function #pld:attribute/job/0/set_scb
execute as @s[scores={WeaponSlot=9}] if data entity @s Inventory[{Slot:8b,tag:{act:1}}] run function #pld:attribute/job/0/set_scb
#execute as @s[scores={WeaponSlot=-1}] if data entity @s Inventory[{Slot:-106b,tag:{act:1}}] run function #pld:attribute/job/0/set_scb

#根据武器，上数值
#function #pld:attribute/job/0/check_scb
