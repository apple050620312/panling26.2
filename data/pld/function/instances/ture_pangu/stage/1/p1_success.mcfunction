
#关闭bossbar-pl:final_battle_base_metal
bossbar set pl:final_battle_base_metal visible false
#搭建完毕信息
tellraw @a {"translate":"pl.info.zf_phase1_finish.metal"}

#将附近玩家tp离开法阵建筑物
tp @a[x=-303,y=153,z=-1474,distance=..6] -302 154 -1487 0 0

#替换方块，清理现有方块
fill -293 163 -1464 -313 151 -1484 air replace diamond_block
fill -303 162 -1474 -303 158 -1474 air
setblock -305 151 -1476 minecraft:structure_block[block_entity_data={metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,posZ:0,integrity:1.0f,showair:0b,name:"pld:final_battle_zf",showboundingbox:1b}]
setblock -305 150 -1476 minecraft:redstone_block
setblock -305 151 -1477 minecraft:bedrock destroy
setblock -305 151 -1476 minecraft:bedrock
setblock -305 150 -1476 minecraft:bedrock


#延迟传送
schedule function pld:instances/ture_pangu/stage/1/tp_back 5s
