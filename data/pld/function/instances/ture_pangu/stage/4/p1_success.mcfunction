#关闭bossbar-pl:final_battle_base_fire
bossbar set pl:final_battle_base_fire visible false
#搭建完毕信息
tellraw @a {"translate":"pl.info.zf_phase1_finish.fire"}

#将附近玩家tp离开法阵建筑物
tp @a[x=-382,y= 108,z=-1528,distance=..6] -374 108 -1520 135 0

#替换方块，清理现有方块
fill -372 118 -1518 -392 105 -1538 air replace diamond_block
fill -382 113 -1528 -382 117 -1528 air
setblock -384 106 -1530 minecraft:structure_block[custom_data={metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,posZ:0,integrity:1.0f,showair:0b,name:"pld:final_battle_zf",showboundingbox:1b}]
setblock -384 105 -1530 minecraft:redstone_block
setblock -384 106 -1530 minecraft:light_gray_wool
setblock -384 105 -1530 minecraft:light_gray_wool
#延迟传送
schedule function pld:instances/ture_pangu/stage/4/tp_back 5s
