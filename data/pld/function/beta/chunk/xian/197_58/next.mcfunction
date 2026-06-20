#要做的事
data merge block 3175 53 941 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian5.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 3173 53 937 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian17.text2"}','{"translate":"pl.sign.xian17.text3"}','{"translate":""}']}}
data merge block 3173 53 941 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian17.text2"}','{"translate":"pl.sign.xian17.text3"}','{"translate":""}']}}
data merge block 3156 64 939 {front_text:{messages:['{"translate":"pl.spsign.xian2.text1","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.xian2.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":""}','{"translate":""}','{"translate":""}']}}



setblock 3168 48 945 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/guard"}] replace 
setblock 3168 48 933 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/guard"}] replace 
setblock 3178 49 940 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/chat1"}] replace 
setblock 3177 49 940 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/chat2"}] replace 

setblock 3167 50 937 minecraft:command_block[block_entity_data={Command:"execute as @p[x=3169,y=52,z=939,distance=..5] run function pld:system/race_tp/race2_out"}] destroy
setblock 3171 50 939 air
kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3168 48 945 run function pld:npcs/xian/guard
execute positioned 3168 48 933 run function pld:npcs/xian/guard
execute positioned 3178 49 940 run function pld:npcs/xian/chat1
execute positioned 3177 49 940 run function pld:npcs/xian/chat2
#区块卸载
forceload remove 3161 937 3174 950
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/198_55/pre 1t