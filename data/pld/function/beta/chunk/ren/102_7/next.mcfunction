#要做的事
data merge block 1642 140 125 {front_text:{messages:['{"translate":"pl.sign.ren2.text3"}','{"translate":"pl.sign.ren2.text2"}','{"translate":"pl.sign.ren17.text3"}','{"translate":"pl.sign.ren17.text4"}']}}
data merge block 1643 148 141 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren19.text2"}','{"translate":""}','{"translate":""}']}}


setblock 1643 132 112 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/guard"}] replace 

execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 1643 132 112 run function pld:npcs/ren/guard
#区块卸载
forceload remove 1642 125 1641 134
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/103_6/pre 1t