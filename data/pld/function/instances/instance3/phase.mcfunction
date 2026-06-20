#清场
execute as @e[x=2695,y=68,z=-905,dx=40,dy=10,dz=40,tag=panling] run function pld:system/tp_and_kill_self

#清理箱子
data merge block 2715 67 -895 {Items:}
data merge block 2715 67 -875 {Items:}
#重置长老时间
scoreboard players set #system instance3_tick 3000
#随机产生长老施法种类
loot spawn 2704 66 -875 loot pld:instance3/eye
execute if entity @e[type=item,nbt={Item:{id:"minecraft:black_wool",components:{"minecraft:custom_data":{instance:3}}}}] run scoreboard players set #system instance3_skill 1
execute if entity @e[type=item,nbt={Item:{id:"minecraft:white_wool",components:{"minecraft:custom_data":{instance:3}}}}] run scoreboard players set #system instance3_skill 0
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{instance:3}}}}] run kill @s
execute if score #system instance3_skill matches 0 run setblock 2698 81 -887 white_wool
execute if score #system instance3_skill matches 0 run setblock 2698 81 -883 white_wool
execute if score #system instance3_skill matches 1 run setblock 2698 81 -887 black_wool
execute if score #system instance3_skill matches 1 run setblock 2698 81 -883 black_wool
tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.bossskill"}