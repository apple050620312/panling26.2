

#要做的事
#204 -16
data merge block 3275 21 -249 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan8.text2"}','{"translate":"pl.sign.zhan8.text3"}','{"translate":""}']}}
data merge block 3271 23 -246 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan9.text2"}','{"translate":"pl.sign.zhan9.text3"}','{"translate":""}']}}
setblock 3264 17 -248 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/guard2"}] replace 
#206 -16
setblock 3299 19 -254 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/zhanmain3"}] replace 
data merge block 3306 23 -253 {CustomName:'{"translate":"pl.name.dzt"}'}
#205 -16
setblock 3287 19 -241 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/zhantong1"}] replace 
#205 -17
setblock 3286 20 -267 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/zhantong2"}] replace 
setblock 3287 20 -267 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/zhantong3"}] replace 

setblock 3301 19 -260 structure_block{metadata: "",mirror: "NONE",ignoreEntities: 0b,powered: 0b,seed: 0L,author: "?",rotation: "NONE",posX: 0,mode: "LOAD",posY: 1,posZ: 0,integrity: 1.0f,showair: 0b,name: "pld:tjp3",showboundingbox: 1b}
setblock 3301 20 -260 redstone_block
fill 3296 22 -259 3301 22 -258 minecraft:bedrock
fill 3296 22 -248 3301 22 -247 minecraft:bedrock

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3264 17 -248 run function pld:npcs/zhan/guard2
execute positioned 3287 19 -241 run function pld:npcs/zhan/zhantong1
execute positioned 3286 20 -267 run function pld:npcs/zhan/zhantong2
execute positioned 3287 20 -267 run function pld:npcs/zhan/zhantong3
execute positioned 3299 19 -254 run function pld:npcs/zhan/zhanmain3
#区块卸载
forceload remove 3300 -250 3272 -250
forceload remove 3306 -257 3314 -253
forceload remove 3286 -267
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/199_-13 1t