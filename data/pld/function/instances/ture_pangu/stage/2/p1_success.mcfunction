#关闭bossbar-pl:final_battle_base_wood
bossbar set pl:final_battle_base_wood visible false
#搭建完毕信息
tellraw @a {"translate":"pl.info.zf_phase1_finish.wood"}

#将附近玩家tp离开法阵建筑物
tp @a[x=-387,y=168,z=-1363,distance=..6] -381 166 -1371 35 -10

#替换方块，清理现有方块
fill -377 178 -1353 -397 165 -1373 air replace diamond_block
fill -387 173 -1363 -387 177 -1363 air
setblock -389 166 -1365 minecraft:structure_block[block_entity_data={metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,posZ:0,integrity:1.0f,showair:0b,name:"pld:final_battle_zf",showboundingbox:1b}]
setblock -389 165 -1365 minecraft:redstone_block destroy
setblock -389 166 -1364 minecraft:terracotta destroy
setblock -389 166 -1365 minecraft:terracotta
setblock -389 165 -1365 minecraft:terracotta

#延迟传送
schedule function pld:instances/ture_pangu/stage/2/tp_back 5s
