#要做的事
data merge block 1663 148 138 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren12.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1655 150 148 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren7.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1654 149 151 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren12.text2"}','{"translate":"pl.sign.ren13.text3"}','{"translate":"pl.sign.ren13.text4"}']}}

setblock 1654 145 148 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/guard"}] replace 

execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 1654 145 148 run function pld:npcs/ren/guard
#区块卸载
forceload remove 1656 148 1659 141
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/103_10/pre 1t