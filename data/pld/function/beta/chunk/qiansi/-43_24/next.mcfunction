#要做的事
setblock -686 111 397 minecraft:command_block{Command:"function pld:npcs/qiansi/chat12"} replace 
setblock -687 111 397 minecraft:command_block{Command:"function pld:npcs/qiansi/chat13"} replace 

kill @e[type=villager,tag=!panling]
execute positioned -686 111 397 run function pld:npcs/qiansi/chat12
execute positioned -687 111 397 run function pld:npcs/qiansi/chat13
#区块卸载
forceload remove -682 400 -683 396
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-44_33/pre 1t