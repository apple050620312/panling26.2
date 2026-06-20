
#要做的事
data merge block 1728 161 175 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren22.text2"}','{"translate":"pl.sign.ren22.text3"}','{"translate":""}']}}
setblock 1725 156 183 minecraft:command_block{Command:"function pld:npcs/ren/guard"} replace 
setblock 1722 158 171 minecraft:command_block{Command:"function pld:npcs/ren/tong17"} replace 
data merge block 1729 161 174 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.ren1.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.ren1.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":""}','{"translate":""}']}}
data merge block 1724 161 174 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.ren1.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.ren1.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":""}','{"translate":""}']}}

setblock 1745 43 125 minecraft:mossy_stone_bricks
kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 1725 156 183 run function pld:npcs/ren/guard
#区块卸载
forceload remove 1724 170 1729 179
forceload remove 1745 125
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/108_11/pre 1t