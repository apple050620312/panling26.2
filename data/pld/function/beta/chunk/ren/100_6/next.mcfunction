
#要做的事
data merge block 1601 141 108 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.supply.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1614 138 109 {front_text:{messages:['{"translate":"pl.sign.ren20.text1"}','{"translate":"pl.sign.ren20.text2"}','{"translate":""}','{"translate":""}']}}


setblock 1600 139 108 minecraft:command_block{Command:"function pld:system/supply/supplymain"} replace

setblock 1627 133 97 minecraft:command_block{Command:"function pld:npcs/ren/tong5"} replace
setblock 1628 133 97 minecraft:command_block{Command:"function pld:npcs/ren/tong6"} replace
setblock 1625 131 105 minecraft:command_block{Command:"function pld:npcs/ren/chat12"} replace


kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 1627 133 97 run function pld:npcs/ren/tong5
execute positioned 1628 133 97 run function pld:npcs/ren/tong6
execute positioned 1625 131 105 run function pld:npcs/ren/chat12
#区块卸载
forceload remove 1601 108 1625 121
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/101_9/pre 1t