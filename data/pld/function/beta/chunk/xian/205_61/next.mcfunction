
#要做的事
data merge block 3278 87 984 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian10.text2"}','{"translate":"pl.sign.xian14.text2"}','{"translate":"pl.frame.bjc"}']}}
data merge block 3280 89 985 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian15.text2"}','{"translate":"pl.frame.bjc"}','{"translate":""}']}}

data merge block 3285 89 988 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.supply.text2"}','{"translate":""}','{"translate":""}']}}

setblock 3286 87 988 minecraft:command_block{Command:"function pld:system/supply/supplymain"} replace 
setblock 3285 84 980 minecraft:command_block{Command:"function pld:npcs/xian/guard"} replace 
setblock 3281 84 984 minecraft:command_block{Command:"function pld:npcs/xian/guard"} replace 
setblock 3281 84 989 minecraft:command_block{Command:"function pld:npcs/xian/guard"} replace 
setblock 3271 80 986 minecraft:command_block{Command:"function pld:npcs/xian/chat8"} replace 
setblock 3285 83 985 minecraft:command_block{Command:"function pld:npcs/xian/supply2"} replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3285 84 980 run function pld:npcs/xian/guard
execute positioned 3281 84 984 run function pld:npcs/xian/guard
execute positioned 3281 84 989 run function pld:npcs/xian/guard
execute positioned 3271 80 986 run function pld:npcs/xian/chat8
execute positioned 3285 83 985 run function pld:npcs/xian/supply2
#区块卸载
forceload remove 3284 979 3272 981
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/206_58/pre 1t