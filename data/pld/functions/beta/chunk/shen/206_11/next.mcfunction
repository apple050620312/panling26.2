#要做的事
data merge block 3303 147 176 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen16.text2"}','{"translate":"pl.sign.shen15.text3"}','{"translate":""}']}}
data merge block 3326 147 177 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen8.text2"}','{"translate":"pl.sign.shen17.text3"}','{"translate":""}']}}

setblock 3310 142 181 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
#区块卸载
forceload remove 3306 180 3324 179
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/206_21/pre 1t