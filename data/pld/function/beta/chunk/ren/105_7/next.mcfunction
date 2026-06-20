
#要做的事
data merge block 1689 143 113 {front_text:{messages:['{"translate":"pl.sign.ren3.text1"}','{"translate":"pl.sign.ren3.text2"}','{"translate":"pl.sign.ren3.text3"}','{"translate":"pl.sign.ren3.text4"}']}}
data merge block 1693 146 114 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren3.text2"}','{"translate":""}','{"translate":""}']}}

setblock 1684 139 112 minecraft:command_block{Command:"function pld:npcs/ren/guard"} replace 

execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 1684 139 112 run function pld:npcs/ren/guard
#区块卸载
forceload remove 1689 113
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/105_12/pre 1t