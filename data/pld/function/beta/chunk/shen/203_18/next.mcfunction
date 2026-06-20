#要做的事
data merge block 3251 105 289 {front_text:{messages:['{"translate":"pl.sign.shen1.text1"}','{"translate":"pl.sign.shen1.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 3253 105 301 {front_text:{messages:['{"translate":"pl.sign.shen3.text1"}','{"translate":"pl.sign.shen3.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 3256 105 286 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.shen1.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.shen1.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":""}','{"translate":""}']}}

setblock 3258 100 289 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/guard"}] replace 
setblock 3249 96 278 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/guard"}] replace 
setblock 3251 93 260 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/guard"}] replace 


kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3258 100 289 run function pld:npcs/shen/guard
execute positioned 3249 96 278 run function pld:npcs/shen/guard
execute positioned 3251 93 260 run function pld:npcs/shen/guard
#区块卸载
forceload remove 3253 296 3253 260
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/203_23/pre 1t