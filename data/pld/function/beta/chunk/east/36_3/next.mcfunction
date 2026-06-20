#要做的事
setblock 587 28 61 minecraft:command_block[custom_data={Command:"function pld:npcs/east/tong2"}] replace 
setblock 587 28 59 minecraft:command_block[custom_data={Command:"function pld:npcs/east/tong3"}] replace 
setblock 589 29 100 minecraft:command_block[custom_data={Command:"function pld:npcs/east/tong4"}] replace 
setblock 585 28 68 minecraft:command_block[custom_data={Command:"function pld:npcs/east/tong5"}] replace 
setblock 585 28 69 minecraft:command_block[custom_data={Command:"function pld:npcs/east/tong6"}] replace 


kill @e[type=villager,tag=!panling]
execute positioned 587 28 61 run function pld:npcs/east/tong2
execute positioned 587 28 59 run function pld:npcs/east/tong3
execute positioned 589 29 100 run function pld:npcs/east/tong4
execute positioned 585 28 68 run function pld:npcs/east/tong5
execute positioned 585 28 69 run function pld:npcs/east/tong6
#区块卸载
forceload remove 585 49 589 101
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/39_24/pre 1t