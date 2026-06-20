#要做的事
data merge block 3293 155 110 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text3"}','{"translate":""}','{"translate":""}']}}
data merge block 3269 147 109 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text3"}','{"translate":""}','{"translate":""}']}}
data merge block 3279 146 97 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text3"}','{"translate":""}','{"translate":""}']}}
data merge block 3267 147 109 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen17.text2"}','{"translate":"pl.sign.shen17.text3"}','{"translate":""}']}}
data merge block 3281 147 110 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen17.text2"}','{"translate":"pl.sign.shen17.text3"}','{"translate":""}']}}

setblock 3299 151 109 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3299 151 109 run function pld:npcs/shen/guard
#区块卸载
forceload remove 3270 103 3305 103
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/204_16/pre 1t