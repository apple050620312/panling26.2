#要做的事
setblock -301 18 -659 minecraft:command_block[block_entity_data={Command:"function pld:npcs/north/northtong"}] replace 
setblock -301 14 -677 minecraft:command_block[block_entity_data={Command:"function pld:npcs/north/northmain1"}] replace
setblock -289 17 -666 minecraft:command_block[block_entity_data={Command:"function pld:npcs/north/chat2"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned -301 18 -659 run function pld:npcs/north/northtong
execute positioned -301 14 -677 run function pld:npcs/north/northmain1
execute positioned -289 17 -666 run function pld:npcs/north/chat2
#区块卸载
forceload remove -295 -664 -297 -675
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-20_-27/pre 1t