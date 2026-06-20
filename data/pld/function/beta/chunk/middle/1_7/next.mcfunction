#要做的事
data merge block 31 48 118 {front_text:{messages:['{"translate":"pl.sign.middle45.text1"}','{"translate":""}','{"translate":"pl.sign.middle45.text3"}','{"translate":"pl.sign.middle45.text4"}']}}

data merge block 31 48 130 {front_text:{messages:['{"translate":"pl.sign.middle45.text1"}','{"translate":""}','{"translate":"pl.sign.middle45.text3"}','{"translate":"pl.sign.middle45.text4"}']}}

setblock 21 41 128 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/tong13c"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 21 41 128 run function pld:npcs/middle/tong13c
#区块卸载
forceload remove 26 129 26 119
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/2_3/pre 1t