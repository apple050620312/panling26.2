#要做的事
setblock 633 49 385 minecraft:command_block[custom_data={Command:"function pld:npcs/east/ye1"}] replace

kill @e[type=villager,tag=!panling]
execute positioned 633 49 385 run function pld:npcs/east/ye1
#区块卸载
forceload remove 637 387
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/47_-2/pre 1t