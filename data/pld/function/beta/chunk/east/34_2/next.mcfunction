#要做的事
setblock 548 17 49 air
setblock 551 32 39 minecraft:command_block[block_entity_data={Command:"function pld:npcs/east/te19"}] replace
setblock 557 31 37 minecraft:command_block[block_entity_data={Command:"function pld:npcs/east/fishbuy"}] replace

kill @e[type=villager,tag=!panling]
execute positioned 551 32 39 run function pld:npcs/east/te19
execute positioned 557 31 37 run function pld:npcs/east/fishbuy
#区块卸载
forceload remove 553 42 552 51
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/35_4/pre 1t