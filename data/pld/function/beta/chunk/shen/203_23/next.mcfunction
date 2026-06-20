#要做的事
setblock 3258 100 383 minecraft:command_block[custom_data={Command:"function pld:npcs/shen/guard"}] replace 

setblock 3259 111 376 minecraft:command_block[custom_data={Command:"function pld:npcs/shen/zh2"}] replace 


data merge block 3276 115 379 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen6.text2"}','{"translate":"pl.sign.shen6.text3"}','{"translate":"pl.sign.shen6.text4"}']}}
data merge block 3257 105 392 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen5.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 3277 115 378 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen7.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 3253 105 384 {front_text:{messages:['{"translate":"pl.sign.shen4.text1"}','{"translate":"pl.sign.shen1.text2"}','{"translate":"pl.sign.shen4.text3"}','{"translate":""}']}}
kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3258 100 383 run function pld:npcs/shen/guard
execute positioned 3259 111 376 run function pld:npcs/shen/zh2
#区块卸载
forceload remove 3255 373 3274 384
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/204_6/pre 1t