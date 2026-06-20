#要做的事
data merge block 3323 115 378 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.zhp"}','{"translate":""}','{"translate":""}']}}
data merge block 3319 115 373 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen11.text2"}','{"translate":"pl.sign.shen11.text3"}','{"translate":"pl.sign.shen11.text4"}']}}

setblock 3325 111 374 minecraft:command_block[custom_data={Command:"function pld:npcs/shen/tong5"}] replace 
setblock 3325 111 373 minecraft:command_block[custom_data={Command:"function pld:npcs/shen/tong6"}] replace 
setblock 3317 111 354 minecraft:command_block[custom_data={Command:"function pld:npcs/shen/sh1"}] replace 


kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3325 111 374 run function pld:npcs/shen/tong5
execute positioned 3325 111 373 run function pld:npcs/shen/tong6
execute positioned 3317 111 354 run function pld:npcs/shen/sh1
#区块卸载
forceload remove 3318 379 3318 359
forceload remove 3329 374
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/208_10/pre 1t