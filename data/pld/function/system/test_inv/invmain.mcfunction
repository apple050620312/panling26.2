#初始化记分板
scoreboard players set @s inv_remain 36
scoreboard players set @s inv_now 0
#获得占位数量
execute store result score @s inv_now run data get entity @s Inventory
#扣除裝備栏位数值
scoreboard players remove @s[nbt={Inventory:[{slot:100}]}] inv_now 1
scoreboard players remove @s[nbt={Inventory:[{slot:101}]}] inv_now 1
scoreboard players remove @s[nbt={Inventory:[{slot:102}]}] inv_now 1
scoreboard players remove @s[nbt={Inventory:[{slot:103}]}] inv_now 1
scoreboard players remove @s[nbt={Inventory:[{slot:-106}]}] inv_now 1
#计算实际空位数
scoreboard players operation @s inv_remain -= @s inv_now

