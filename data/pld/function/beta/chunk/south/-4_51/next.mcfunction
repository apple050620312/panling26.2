
#要做的事
setblock -51 42 831 minecraft:command_block[custom_data={Command:"function pld:npcs/south/te22"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned -51 42 831 run function pld:npcs/south/te22
#区块卸载
forceload remove -51 830
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-13_40/pre 1t