#关闭bossbar-pl:final_battle_base_earth
bossbar set pl:final_battle_base_earth visible false
#搭建完毕信息
tellraw @a {"translate":"pl.info.zf_phase1_finish.earth"}

#将附近玩家tp离开法阵建筑物
tp @a[x=-359,y=216,z=-1557,distance=..6] -366 215 -1564 -45 0


#替换方块，清理现有方块
fill -349 226 -1547 -369 212 -1567 air replace diamond_block
fill -359 221 -1557 -359 225 -1557 air
setblock -361 214 -1559 minecraft:structure_block[custom_data={metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,posZ:0,integrity:1.0f,showair:0b,name:"pld:final_battle_zf",showboundingbox:1b}]
setblock -361 213 -1559 minecraft:redstone_block
setblock -361 214 -1559 minecraft:terracotta
setblock -361 213 -1559 minecraft:terracotta

#延迟传送
schedule function pld:instances/ture_pangu/stage/5/tp_back 5s
