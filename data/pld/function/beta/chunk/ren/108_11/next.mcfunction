#要做的事
data merge block 1732 123 181 {front_text:{messages:['{"translate":"pl.sign.ren23.text1"}','{"translate":""}','{"translate":""}','{"translate":""}']}}
setblock 1730 119 175 minecraft:command_block{Command:"function pld:npcs/ren/guard"} replace 
setblock 1736 119 175 minecraft:command_block{Command:"function pld:npcs/ren/guard"} replace 
data merge block 1730 49 178 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren24.text2"}','{"translate":""}','{"translate":""}']}}

setblock 1731 49 180 minecraft:command_block{Command:"tp @p[distance=..10] 1732 124 176"} replace 

execute as @e[type=skeleton] run function pld:system/tp_and_kill_self

execute positioned 1730 119 175 run function pld:npcs/ren/guard
execute positioned 1736 119 175 run function pld:npcs/ren/guard
#区块卸载
forceload remove 1732 183 1732 173
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/109_12/pre 1t