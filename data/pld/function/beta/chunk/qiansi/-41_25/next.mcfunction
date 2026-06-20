
#要做的事
data merge block -671 113 407 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.qiansi4.text2"}','{"translate":""}','{"translate":""}']}}
data merge block -652 115 409 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.qiansi3.text2"}','{"translate":""}','{"translate":""}']}}

setblock -674 108 411 minecraft:command_block{Command:"function pld:npcs/qiansi/chat6"} replace 
kill @e[type=villager,tag=!panling]
execute positioned -674 108 411 run function pld:npcs/qiansi/chat6
#区块卸载
forceload remove -648 411 -674 406
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-41_28/pre 1t