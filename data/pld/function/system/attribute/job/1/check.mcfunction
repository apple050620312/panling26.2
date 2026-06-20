#检查激活位置是否有对应武器
execute as @s[scores={WeaponSlot=1}] if data entity @s Inventory[{Slot:0b,components:{"minecraft:custom_data":{act:1}}}] run function #pld:attribute/job/1/set_scb
execute as @s[scores={WeaponSlot=2}] if data entity @s Inventory[{Slot:1b,components:{"minecraft:custom_data":{act:1}}}] run function #pld:attribute/job/1/set_scb
execute as @s[scores={WeaponSlot=3}] if data entity @s Inventory[{Slot:2b,components:{"minecraft:custom_data":{act:1}}}] run function #pld:attribute/job/1/set_scb
execute as @s[scores={WeaponSlot=4}] if data entity @s Inventory[{Slot:3b,components:{"minecraft:custom_data":{act:1}}}] run function #pld:attribute/job/1/set_scb
execute as @s[scores={WeaponSlot=5}] if data entity @s Inventory[{Slot:4b,components:{"minecraft:custom_data":{act:1}}}] run function #pld:attribute/job/1/set_scb
execute as @s[scores={WeaponSlot=6}] if data entity @s Inventory[{Slot:5b,components:{"minecraft:custom_data":{act:1}}}] run function #pld:attribute/job/1/set_scb
execute as @s[scores={WeaponSlot=7}] if data entity @s Inventory[{Slot:6b,components:{"minecraft:custom_data":{act:1}}}] run function #pld:attribute/job/1/set_scb
execute as @s[scores={WeaponSlot=8}] if data entity @s Inventory[{Slot:7b,components:{"minecraft:custom_data":{act:1}}}] run function #pld:attribute/job/1/set_scb
execute as @s[scores={WeaponSlot=9}] if data entity @s Inventory[{Slot:8b,components:{"minecraft:custom_data":{act:1}}}] run function #pld:attribute/job/1/set_scb
execute as @s[scores={WeaponSlot=-1}] if data entity @s Inventory[{Slot:-106b,components:{"minecraft:custom_data":{act:1}}}] run function #pld:attribute/job/1/set_scb

