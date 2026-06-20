#要做的事
setblock -310 13 -702 minecraft:command_block[custom_data={Command:"function pld:npcs/north/chat1"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned -310 13 -702 run function pld:npcs/north/chat1
#区块卸载
forceload remove -311 -701
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-21_-28/pre 1t