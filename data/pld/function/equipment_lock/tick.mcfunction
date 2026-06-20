#延遲1t觸發main 防止循環觸發

#延遲觸發激活指令-護甲
execute if score @s armorlock_tick matches 0 unless score @s armorlock_lock matches 1 at @s run function pld:equipment_lock/equipment/armor/main
scoreboard players set @s[scores={armorlock_lock=1..}] armorlock_lock 0
scoreboard players remove @s[scores={armorlock_tick=0..}] armorlock_tick 1

#設置激活格子
scoreboard players set @s[scores={SlotSet=-1,job=1}] WeaponSlot -1
scoreboard players set @s[scores={SlotSet=1,job=..1}] WeaponSlot 1
scoreboard players set @s[scores={SlotSet=2,job=..1}] WeaponSlot 2
scoreboard players set @s[scores={SlotSet=3,job=..1}] WeaponSlot 3
scoreboard players set @s[scores={SlotSet=4,job=..1}] WeaponSlot 4
scoreboard players set @s[scores={SlotSet=5,job=..1}] WeaponSlot 5
scoreboard players set @s[scores={SlotSet=6,job=..1}] WeaponSlot 6
scoreboard players set @s[scores={SlotSet=7,job=..1}] WeaponSlot 7
scoreboard players set @s[scores={SlotSet=8,job=..1}] WeaponSlot 8
scoreboard players set @s[scores={SlotSet=9,job=..1}] WeaponSlot 9

tellraw @s[scores={SlotSet=-1,job=0}] {"translate":"pl.info.slotwarn","color":"red"}
tellraw @s[scores={SlotSet=-1,job=2}] {"translate":"pl.info.slotwarn2","color":"red"}
tellraw @s[scores={SlotSet=1..,job=2}] {"translate":"pl.info.slotwarn2","color":"red"}
tellraw @s[scores={SlotSet=-1,WeaponSlot=-1}] {"translate":"pl.info.slotsetoffhand","color":"green"}
tellraw @s[scores={SlotSet=1,WeaponSlot=1}] {"translate":"pl.info.slotsetmainhand1","color":"green"}
tellraw @s[scores={SlotSet=2,WeaponSlot=2}] {"translate":"pl.info.slotsetmainhand2","color":"green"}
tellraw @s[scores={SlotSet=3,WeaponSlot=3}] {"translate":"pl.info.slotsetmainhand3","color":"green"}
tellraw @s[scores={SlotSet=4,WeaponSlot=4}] {"translate":"pl.info.slotsetmainhand4","color":"green"}
tellraw @s[scores={SlotSet=5,WeaponSlot=5}] {"translate":"pl.info.slotsetmainhand5","color":"green"}
tellraw @s[scores={SlotSet=6,WeaponSlot=6}] {"translate":"pl.info.slotsetmainhand6","color":"green"}
tellraw @s[scores={SlotSet=7,WeaponSlot=7}] {"translate":"pl.info.slotsetmainhand7","color":"green"}
tellraw @s[scores={SlotSet=8,WeaponSlot=8}] {"translate":"pl.info.slotsetmainhand8","color":"green"}
tellraw @s[scores={SlotSet=9,WeaponSlot=9}] {"translate":"pl.info.slotsetmainhand9","color":"green"}

execute if score @s SlotSet matches -1 run function pld:equipment_lock/equipment/weapon/adv_check
execute if score @s SlotSet matches 1.. run function pld:equipment_lock/equipment/weapon/adv_check
scoreboard players reset @s[scores={SlotSet=-1..}] SlotSet 
scoreboard players enable @s SlotSet

#延遲觸發激活指令-武器
execute if score @s weaponlock_tick matches 0 unless score @s weaponlock_lock matches 1 at @s run function pld:equipment_lock/equipment/weapon/main
scoreboard players set @s[scores={weaponlock_lock=1..}] weaponlock_lock 0
scoreboard players remove @s[scores={weaponlock_tick=0..}] weaponlock_tick 1
