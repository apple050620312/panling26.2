
#要做的事
data merge block 3262 20 -267 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan6.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 3258 18 -264 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan6.text2"}','{"translate":"pl.sign.zhan2.text2"}','{"translate":""}']}}
data merge block 3249 21 -269 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan6.text2"}','{"translate":"pl.sign.zhan2.text2"}','{"translate":""}']}}


setblock 3274 15 -262 minecraft:command_block{Command:"function pld:npcs/zhan/guard2"} replace 

setblock 3259 18 -276 minecraft:command_block{Command:"function pld:npcs/zhan/zhantong5"} replace 
setblock 3272 18 -278 minecraft:command_block{Command:"function pld:npcs/zhan/zhantong6"} replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3274 15 -262 run function pld:npcs/zhan/guard2
execute positioned 3259 18 -276 run function pld:npcs/zhan/zhantong5
execute positioned 3272 18 -278 run function pld:npcs/zhan/zhantong6
#区块卸载
#区块卸载
forceload remove 3257 -263 3267 -276
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/204_-19/pre 1t