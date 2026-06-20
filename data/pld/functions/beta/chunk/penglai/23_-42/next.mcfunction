
#要做的事
data merge block 370 48 -661 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.penglai3.text2"}','{"translate":"pl.sign.penglai3.text3"}','{"translate":""}']}}

setblock 386 40 -661 minecraft:command_block{Command:"function pld:npcs/penglai/chat3"} replace 
setblock 378 41 -666 minecraft:command_block{Command:"function pld:npcs/penglai/chat4"} replace
setblock 369 47 -668 minecraft:command_block{Command:"function pld:npcs/penglai/te32"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 386 40 -661 run function pld:npcs/penglai/chat3
execute positioned 378 41 -666 run function pld:npcs/penglai/chat4
execute positioned 369 47 -668 run function pld:npcs/penglai/te32
#区块卸载
forceload remove 371 -659 387 -659
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/23_-44/pre 1t