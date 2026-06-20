#要做的事
data merge block 314 45 57 {front_text:{messages:['{"translate":"pl.sign.middle44.text1"}','{"translate":""}','{"translate":"pl.sign.middle44.text3"}','{"translate":"pl.sign.middle44.text4"}']}}
data merge block 314 45 69 {front_text:{messages:['{"translate":"pl.sign.middle44.text1"}','{"translate":""}','{"translate":"pl.sign.middle44.text3"}','{"translate":"pl.sign.middle44.text4"}']}}

setblock 324 39 67 minecraft:command_block{Command:"function pld:npcs/middle/tong13a"} replace 
setblock 303 39 59 minecraft:command_block{Command:"function pld:npcs/middle/chat55"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 324 39 67 run function pld:npcs/middle/tong13a
execute positioned 303 39 59 run function pld:npcs/middle/chat55
#区块卸载
forceload remove 293 57 324 67
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/83_31/pre 1t