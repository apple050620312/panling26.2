#要做的事
data merge block 3285 73 946 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian13.text3"}','{"translate":""}','{"translate":""}']}}
data merge block 3277 72 938 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian13.text2"}','{"translate":"pl.sign.xian13.text3"}','{"translate":""}']}}
data merge block 3277 72 944 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian13.text2"}','{"translate":"pl.sign.xian13.text3"}','{"translate":""}']}}

setblock 3289 68 941 minecraft:command_block{Command:"function pld:npcs/xian/guard"} replace 
setblock 3291 85 956 minecraft:command_block{Command:"function pld:npcs/xian/chat7"} replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3291 85 956 run function pld:npcs/xian/chat7
execute positioned 3289 68 941 run function pld:npcs/xian/guard
#区块卸载
forceload remove 3275 937 3284 948
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/205_60/pre 1t