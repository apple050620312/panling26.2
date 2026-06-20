
#要做的事
data merge block -705 103 533 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.qz"}','{"translate":""}','{"translate":""}']}}
setblock -704 97 535 minecraft:command_block[block_entity_data={Command:"function pld:npcs/qiansi/tong7"}] replace 
setblock -702 100 531 minecraft:command_block[block_entity_data={Command:"/particle enchant ~ ~3 ~ 0.2 0.2 0.2 0.0 4"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned -704 97 535 run function pld:npcs/qiansi/tong7
#区块卸载
forceload remove -702 534 -709 534
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-45_31/pre 1t