#要做的事
setblock -844 96 440 minecraft:command_block[custom_data={Command:"function pld:npcs/qiansi/chat8"}] replace
setblock -833 78 438 minecraft:command_block[custom_data={Command:"function pld:npcs/qiansi/chat9"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned -844 96 440 run function pld:npcs/qiansi/chat8
execute positioned -833 78 438 run function pld:npcs/qiansi/chat9
#区块卸载
forceload remove -841 445
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-54_30/pre 1t