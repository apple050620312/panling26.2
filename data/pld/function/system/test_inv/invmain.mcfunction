#初始化记分板
scoreboard players set @s inv_remain 36
scoreboard players set @s inv_now 0
#获得占位数量
execute store result score @s inv_now run data get entity @s Inventory
#扣除装备栏位数值
scoreboard players remove @s[nbt={Inventory:[{Slot:100b}]}] inv_now 1
scoreboard players remove @s[nbt={Inventory:[{Slot:101b}]}] inv_now 1
scoreboard players remove @s[nbt={Inventory:[{Slot:102b}]}] inv_now 1
scoreboard players remove @s[nbt={Inventory:[{Slot:103b}]}] inv_now 1
scoreboard players remove @s[nbt={Inventory:[{Slot:-106b}]}] inv_now 1
#计算实际空位数
scoreboard players operation @s inv_remain -= @s inv_now

