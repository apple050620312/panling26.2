
#要做的事
data merge block -718 103 511 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.tjp"}','{"translate":""}','{"translate":""}']}}
data merge block -711 103 526 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.zhp"}','{"translate":""}','{"translate":""}']}}


setblock -715 99 508 minecraft:command_block{Command:"function pld:npcs/qiansi/tong2"} replace
setblock -715 99 509 minecraft:command_block{Command:"function pld:npcs/qiansi/tong3"} replace 
setblock -713 99 522 minecraft:command_block{Command:"function pld:npcs/qiansi/tong5"} replace 
setblock -714 99 522 minecraft:command_block{Command:"function pld:npcs/qiansi/tong6"} replace 


kill @e[type=villager,tag=!panling]
execute positioned -715 99 508 run function pld:npcs/qiansi/tong2
execute positioned -715 99 509 run function pld:npcs/qiansi/tong3
execute positioned -713 99 522 run function pld:npcs/qiansi/tong5
execute positioned -714 99 522 run function pld:npcs/qiansi/tong6
#区块卸载
forceload remove -717 510 -714 525
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-46_31/pre 1t