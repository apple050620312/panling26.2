#要做的事
setblock -44 43 858 minecraft:command_block[block_entity_data={Command:"function pld:npcs/south/tong7"}] replace 
setblock -45 46 859 minecraft:command_block[block_entity_data={Command:"/particle enchant ~ ~3 ~ 0.2 0.2 0.2 0.0 4"}] replace 


kill @e[type=villager,tag=!panling]
execute positioned -44 43 858 run function pld:npcs/south/tong7
#区块卸载
forceload remove -41 855
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-4_20/pre 1t