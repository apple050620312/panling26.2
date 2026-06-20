
#要做的事
setblock -633 109 423 minecraft:command_block[custom_data={Command:"function pld:npcs/qiansi/chat3"}] replace 
setblock -629 111 419 minecraft:command_block[custom_data={Command:"function pld:npcs/qiansi/chat4"}] replace 
setblock -629 111 420 minecraft:command_block[custom_data={Command:"function pld:npcs/qiansi/chat5"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned -633 109 423 run function pld:npcs/qiansi/chat3
execute positioned -629 111 419 run function pld:npcs/qiansi/chat4
execute positioned -629 111 420 run function pld:npcs/qiansi/chat5
#区块卸载
forceload remove -633 423
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-41_25/pre 1t