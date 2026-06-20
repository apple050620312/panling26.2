
#要做的事
data merge block 1716 151 116 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren3.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1717 151 118 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren7.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 1711 154 117 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren8.text2"}','{"translate":"pl.sign.ren8.text3"}','{"translate":""}']}}
data merge block 1700 154 116 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren12.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1703 154 119 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren6.text2"}','{"translate":""}','{"translate":""}']}}

setblock 1716 147 112 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/guard"}] replace 

execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 1716 147 112 run function pld:npcs/ren/guard

#区块卸载
forceload remove 1708 121 1717 112
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/106_11/pre 1t