#要做的事
data merge block 3336 147 177 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text2"}','{"translate":"pl.sign.shen13.text3"}','{"translate":""}']}}
data merge block 3336 138 195 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text2"}','{"translate":"pl.sign.shen13.text3"}','{"translate":""}']}}
data merge block 3336 129 213 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text2"}','{"translate":"pl.sign.shen13.text3"}','{"translate":""}']}}
data merge block 3334 129 242 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text2"}','{"translate":"pl.sign.shen13.text3"}','{"translate":""}']}}
data merge block 3334 129 230 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen14.text2"}','{"translate":""}','{"translate":""}']}}

setblock 3344 151 162 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace 
setblock 3344 142 182 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace 
setblock 3343 133 197 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace 
setblock 3331 124 215 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace 
setblock 3343 124 215 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace 
setblock 3331 133 197 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace 
setblock 3330 142 182 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace 
setblock 3330 151 162 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3344 151 162 run function pld:npcs/shen/guard
execute positioned 3344 142 182 run function pld:npcs/shen/guard
execute positioned 3343 133 197 run function pld:npcs/shen/guard
execute positioned 3331 124 215 run function pld:npcs/shen/guard
execute positioned 3343 124 215 run function pld:npcs/shen/guard
execute positioned 3331 133 197 run function pld:npcs/shen/guard
execute positioned 3330 142 182 run function pld:npcs/shen/guard
execute positioned 3330 151 162 run function pld:npcs/shen/guard
#区块卸载
forceload remove 3334 244 3351 168
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/208_16/pre 1t