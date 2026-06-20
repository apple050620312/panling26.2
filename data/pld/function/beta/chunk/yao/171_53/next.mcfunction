
#要做的事
data merge block 2727 45 848 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.yao8.text2"}','{"translate":"pl.sign.yao5.text3"}','{"translate":""}']}}

setblock 2728 37 857 minecraft:command_block[block_entity_data={Command:"function pld:npcs/yao/guard"}] replace 
setblock 2720 38 851 minecraft:command_block[block_entity_data={Command:"function pld:npcs/yao/guard"}] replace 

setblock 2735 39 849 minecraft:command_block[block_entity_data={Command:"function pld:npcs/yao/chat3"}] replace 
setblock 2739 39 863 minecraft:command_block[block_entity_data={Command:"function pld:npcs/yao/chat4"}] replace 
setblock 2723 36 855 minecraft:command_block[block_entity_data={Command:"function pld:npcs/yao/supply1"}] replace 

data merge block 2723 42 857 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.supply.text2"}','{"translate":""}','{"translate":""}']}}

setblock 2723 40 858 minecraft:command_block[block_entity_data={Command:"function pld:system/supply/supplymain"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 2735 39 849 run function pld:npcs/yao/chat3
execute positioned 2739 39 863 run function pld:npcs/yao/chat4
execute positioned 2723 36 855 run function pld:npcs/yao/supply1
execute positioned 2728 37 857 run function pld:npcs/yao/guard
execute positioned 2720 38 851 run function pld:npcs/yao/guard
#区块卸载
forceload remove 2713 853 2741 853
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/yao/171_54/pre 1t