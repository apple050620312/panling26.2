#要做的事
data merge block 317 46 -670 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.penglai9.text2"}','{"translate":"pl.sign.penglai9.text3"}','{"translate":""}']}}

setblock 313 40 -685 minecraft:command_block{Command:"function pld:npcs/penglai/shenmain6"} replace 
setblock 318 40 -691 minecraft:command_block{Command:"function pld:npcs/penglai/zhanmain8"} replace 
setblock 318 40 -684 minecraft:command_block{Command:"function pld:npcs/penglai/tong6"} replace
setblock 311 44 -689 minecraft:command_block{Command:"function pld:system/spawnpoint/spawnpointset"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 313 40 -685 run function pld:npcs/penglai/shenmain6
execute positioned 318 40 -691 run function pld:npcs/penglai/zhanmain8
execute positioned 318 40 -684 run function pld:npcs/penglai/tong6
#区块卸载
forceload remove 315 -668 312 -692
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/20_-41/pre 1t