#要做的事
setblock 61 44 113 minecraft:command_block{Command:"function pld:npcs/middle/tong21a"} replace 
setblock 60 42 117 minecraft:command_block{Command:"function pld:npcs/middle/chat57"} replace 
setblock 53 43 108 minecraft:command_block{Command:"function pld:npcs/middle/chat58"} replace 

data merge block 63 50 108 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle55.text2"}','{"translate":"pl.sign.middle55.text3"}','{"translate":""}']}}
data merge block 62 50 108 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle52.text2"}','{"translate":"pl.sign.middle52.text3"}','{"translate":""}']}}
data merge block 61 50 108 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle53.text2"}','{"translate":"pl.sign.middle53.text3"}','{"translate":""}']}}
data merge block 60 50 108 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle54.text2"}','{"translate":"pl.sign.middle54.text3"}','{"translate":""}']}}

kill @e[type=villager,tag=!panling]
execute positioned 61 44 113 run function pld:npcs/middle/tong21a
execute positioned 60 42 117 run function pld:npcs/middle/chat57
execute positioned 53 43 108 run function pld:npcs/middle/chat58
#区块卸载
forceload remove 59 109 59 117
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/3_9/pre 1t