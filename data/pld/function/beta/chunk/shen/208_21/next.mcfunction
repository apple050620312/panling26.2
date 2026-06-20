#要做的事
data merge block 3340 122 364 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.ldp0","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.ldp0.reads\\",\\"color\\":\\"gray\\"}"}}','{"translate":""}','{"translate":""}']}}
data merge block 3337 115 354 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen12.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 3339 115 348 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text2"}','{"translate":"pl.sign.shen13.text3"}','{"translate":""}']}}
setblock 3334 109 346 minecraft:command_block[custom_data={Command:"function pld:npcs/shen/chat6"}] replace 
setblock 3330 110 350 minecraft:command_block[custom_data={Command:"function pld:npcs/shen/guard"}] replace 

data merge block 3332 115 362 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen22.text2"}','{"translate":"pl.sign.shen22.text3"}','{"translate":"pl.sign.shen22.text4"}']}}


kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3334 109 346 run function pld:npcs/shen/chat6
execute positioned 3330 110 350 run function pld:npcs/shen/guard
#区块卸载
forceload remove 3337 348 3337 374
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/209_7/pre 1t
