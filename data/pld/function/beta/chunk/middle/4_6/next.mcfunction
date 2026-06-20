#要做的事
data merge block 64 50 111 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle47.text2"}','{"translate":"pl.sign.middle47.text3"}','{"translate":""}']}}
data merge block 64 50 110 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle48.text2"}','{"translate":"pl.sign.middle48.text3"}','{"translate":""}']}}
data merge block 64 50 109 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle49.text2"}','{"translate":"pl.sign.middle49.text3"}','{"translate":""}']}}

data merge block 82 48 116 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle46.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 83 48 117 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle46.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 91 48 117 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle46.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 92 48 116 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle46.text2"}','{"translate":""}','{"translate":""}']}}
setblock 87 43 110 minecraft:command_block{Command:"function pld:npcs/middle/tong14"} replace 
setblock 87 44 109 minecraft:command_block{Command:"function pld:npcs/middle/tong15"} replace 
setblock 87 45 110 minecraft:command_block{Command:"function pld:npcs/middle/tong16"} replace 
setblock 77 42 102 minecraft:command_block{Command:"function pld:npcs/middle/tong17"} replace 

execute positioned 87 43 110 run function pld:npcs/middle/tong14
execute positioned 87 44 109 run function pld:npcs/middle/tong15
execute positioned 87 45 110 run function pld:npcs/middle/tong16
execute positioned 77 42 102 run function pld:npcs/middle/tong17

kill @e[type=villager,tag=!panling]

#区块卸载
forceload remove 77 107 87 117
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/4_9/pre 1t