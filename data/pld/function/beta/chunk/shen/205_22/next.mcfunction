#要做的事
data merge block 3283 116 363 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.tjp0"}','{"translate":""}','{"translate":""}']}}
data merge block 3288 116 363 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.tjp0"}','{"translate":""}','{"translate":""}']}}
data merge block 3280 115 383 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen8.text2"}','{"translate":"pl.sign.shen8.text3"}','{"translate":""}']}}
setblock 3285 111 362 minecraft:command_block{Command:"function pld:npcs/shen/shenmain3"} replace 
setblock 3283 111 359 minecraft:command_block{Command:"function pld:npcs/shen/shentong1"} replace 
setblock 3291 111 360 minecraft:command_block{Command:"function pld:npcs/shen/shentong2"} replace 
setblock 3291 111 359 minecraft:command_block{Command:"function pld:npcs/shen/shentong3"} replace 

setblock 3293 111 376 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace

setblock 3267 96 342 structure_block{metadata: "",mirror: "NONE",ignoreEntities: 0b,powered: 0b,seed: 0L,author: "?",rotation: "NONE",posX: 0,mode: "LOAD",posY: 1,posZ: 0,integrity: 1.0f,showair: 0b,name: "pld:tjp0",showboundingbox: 1b}
setblock 3267 97 342 redstone_block
data merge block 3273 99 349 {CustomName:'{"translate":"pl.name.dzt"}'}

setblock 3273 115 362 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen24.text2"}','{"translate":""}','{"translate":""}']}}
setblock 3271 114 359 minecraft:stone_pressure_plate
setblock 3271 112 359 minecraft:command_block{Command:"tp @p[distance=..3] 3276 99 356 180 0"} replace 
kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3293 111 376 run function pld:npcs/shen/guard
execute positioned 3285 111 362 run function pld:npcs/shen/shenmain3
execute positioned 3283 111 359 run function pld:npcs/shen/shentong1
execute positioned 3291 111 360 run function pld:npcs/shen/shentong2
execute positioned 3291 111 359 run function pld:npcs/shen/shentong3
setblock 3267 96 342 air
#区块卸载
forceload remove 3286 360 3266 341
forceload remove 3283 376
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/206_11/pre 1t