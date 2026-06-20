#死亡检查与事件判定
execute as @a[scores={player_death=1..}] if entity @s[scores={inpvp=1,inpvp_area=1}] run function pld:pvp/1/player_death

#送达判定
execute if score #system pvp1_deliveract matches 0.. run function pld:pvp/1/ing/def/delivered/action
execute if score #system pvp1_deliveract matches 0.. run scoreboard players remove #system pvp1_deliveract 1



#地图修复
#桥梁1
execute if block 1351 103 -1758 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp1_fix_bridge1 1
execute if block 1351 103 -1758 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp1_fix_bridge1 0
execute if score #system pvp1_fix_bridge1 matches 1 run tellraw @p[x=1350,y=106,z=-1758,distance=..2] {"translate":"pl.info.pvp1_fixing"}
execute if score #system pvp1_fix_bridge1 matches 150 run function pld:pvp/1/ing/fix_map/fix_bridge1
#桥梁2
execute if block 1354 104 -1849 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp1_fix_bridge2 1
execute if block 1354 104 -1849 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp1_fix_bridge2 0
execute if score #system pvp1_fix_bridge2 matches 1 run tellraw @p[x=1354,y=107,z=-1850,distance=..2] {"translate":"pl.info.pvp1_fixing"}
execute if score #system pvp1_fix_bridge2 matches 150 run function pld:pvp/1/ing/fix_map/fix_bridge2


#轨道1
execute if block 1362 103 -1861 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp1_fix_rail1 1
execute if block 1362 103 -1861 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp1_fix_rail1 0
execute if score #system pvp1_fix_rail1 matches 1 run tellraw @p[x=1362,y=106,z=-1860,distance=..2] {"translate":"pl.info.pvp1_fixing"}
execute if score #system pvp1_fix_rail1 matches 200 run function pld:pvp/1/ing/fix_map/fix_rail1
#轨道2
execute if block 1404 103 -1827 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp1_fix_rail2 1
execute if block 1404 103 -1827 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp1_fix_rail2 0
execute if score #system pvp1_fix_rail2 matches 1 run tellraw @p[x=1404,y=106,z=-1826,distance=..2] {"translate":"pl.info.pvp1_fixing"}
execute if score #system pvp1_fix_rail2 matches 200 run function pld:pvp/1/ing/fix_map/fix_rail2
#水炮弹激活
#点位1 对应轨道1
execute if block 1318 99 -1831 minecraft:redstone_wall_torch[lit=true] run function pld:pvp/1/ing/water_cannon/1
#点位2 对应轨道2
execute if block 1453 104 -1819 minecraft:redstone_wall_torch[lit=true] run function pld:pvp/1/ing/water_cannon/2

#硫磺炸药激活
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{id:"panling:pvp1_tnt"}}}}] unless entity @e[type=tnt] at @s if block ~ ~-1 ~ birch_planks positioned ~ ~1 ~ unless score #system pvp1_tnt_cool matches 0.. run function pld:pvp/1/ing/atk/tnt
execute if score #system pvp1_tnt_cool matches 0.. run scoreboard players remove #system pvp1_tnt_cool 1