
#要做的事
setblock 3349 116 359 minecraft:command_block{Command:"function pld:npcs/shen/shenmain4"} replace 
setblock 3349 115 360 minecraft:command_block{Command:"function pld:npcs/shen/shentong4"} replace 
data merge block 3350 120 359 {front_text:{messages:['{"translate":""}','{"text":"？？？","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.ldp_hidden.reads\\",\\"color\\":\\"gray\\"}"}}','{"translate":""}','{"translate":""}']}}

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3349 116 359 run function pld:npcs/shen/shenmain4
execute positioned 3349 115 360 run function pld:npcs/shen/shentong4
#区块卸载
forceload remove 3349 359
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/206_9 1t