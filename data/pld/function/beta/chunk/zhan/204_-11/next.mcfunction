
#要做的事
data merge block 3254 35 -163 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan10.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 3253 35 -164 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan11.text2"}','{"translate":""}','{"translate":""}']}}

setblock 3269 27 -166 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/guard2"}] replace 

execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3269 27 -166 run function pld:npcs/zhan/guard2
#区块卸载
forceload remove 3252 -164 3267 -163
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/204_-18/pre 1t