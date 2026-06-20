#要做的事
data merge block 517 41 11 {front_text:{messages:['{"text":""}','{"translate":"pl.spsign.east2.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.east2.reads\\",\\"color\\":\\"gray\\"}"}}','{"translate":"pl.spsign.east2.text3"}','{"text":""}']}}
setblock 526 31 18 minecraft:command_block{Command:"particle enchant ~ ~3 ~ 0.2 0.2 0.2 0.0 4"} replace 
setblock 527 29 17 minecraft:command_block{Command:"function pld:npcs/east/rentong7"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 527 29 17 run function pld:npcs/east/rentong7
#区块卸载
forceload remove 517 11 524 24
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/32_3/pre 1t