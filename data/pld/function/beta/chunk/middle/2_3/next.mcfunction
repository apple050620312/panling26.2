#要做的事
setblock 33 44 52 minecraft:command_block{Command:"function pld:npcs/middle/chat56"} replace
setblock 42 44 51 minecraft:command_block{Command:"function pld:npcs/middle/tong21b"} replace
setblock 45 44 47 minecraft:command_block{Command:"function pld:npcs/middle/chat60"} replace
setblock 38 43 56 minecraft:command_block{Command:"function pld:npcs/middle/chat61"} replace
data merge block 43 52 48 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle55.text2"}','{"translate":"pl.sign.middle55.text3"}','{"translate":""}']}}
data merge block 42 52 48 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle52.text2"}','{"translate":"pl.sign.middle52.text3"}','{"translate":""}']}}
data merge block 41 52 48 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle53.text2"}','{"translate":"pl.sign.middle53.text3"}','{"translate":""}']}}
data merge block 40 52 48 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle54.text2"}','{"translate":"pl.sign.middle54.text3"}','{"translate":""}']}}
data merge block 44 52 51 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle47.text2"}','{"translate":"pl.sign.middle47.text3"}','{"translate":""}']}}
data merge block 44 52 50 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle48.text2"}','{"translate":"pl.sign.middle48.text3"}','{"translate":""}']}}
data merge block 44 52 49 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle49.text2"}','{"translate":"pl.sign.middle49.text3"}','{"translate":""}']}}
kill @e[type=villager,tag=!panling]
execute positioned 33 44 52 run function pld:npcs/middle/chat56
execute positioned 42 44 51 run function pld:npcs/middle/tong21b
execute positioned 45 44 47 run function pld:npcs/middle/chat60
execute positioned 38 43 56 run function pld:npcs/middle/chat61
#区块卸载
forceload remove 36 51 37 40
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/2_7/pre 1t