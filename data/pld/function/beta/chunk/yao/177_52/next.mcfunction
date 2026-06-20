
#要做的事
setblock 2849 51 830 air
setblock 2850 49 833 minecraft:command_block[block_entity_data={Command:"function pld:npcs/yao/guard"}] replace 
setblock 2846 50 840 minecraft:command_block[block_entity_data={Command:"function pld:npcs/yao/guard"}] replace 
setblock 2850 49 827 minecraft:command_block[block_entity_data={Command:"function pld:npcs/yao/guard"}] replace 
setblock 2841 49 829 minecraft:command_block[block_entity_data={Command:"function pld:npcs/yao/chat1"}] replace 

setblock 2855 50 830 minecraft:command_block[block_entity_data={Command:"execute as @p[x=2853,y=53,z=830,distance=..5] run function pld:system/race_tp/race1_out"}] replace 
data merge block 2844 55 828 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.yao1.text2"}','{"translate":"pl.sign.yao1.text3"}','{"translate":""}']}}

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 2850 49 833 run function pld:npcs/yao/guard
execute positioned 2846 50 840 run function pld:npcs/yao/guard
execute positioned 2850 49 827 run function pld:npcs/yao/guard
execute positioned 2841 49 829 run function pld:npcs/yao/chat1
#区块卸载
forceload remove 2850 829 2841 836
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/yao/178_55/pre 1t
