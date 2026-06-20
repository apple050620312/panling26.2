#要做的事
data merge block 3206 74 383 {front_text:{messages:['{"translate":"pl.sign.shen1.text1"}','{"translate":"pl.sign.shen1.text2"}','{"translate":"pl.sign.shen1.text3"}','{"translate":""}']}}
data merge block 3192 75 380 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.get_menu.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.get_menu.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.get_menu.text3"}','{"translate":""}']}}

setblock 3191 73 380 minecraft:command_block[block_entity_data={Command:"execute as @p[x=3192,y=74,z=380,distance=..5] run function pld:system/menubook/update/main"}] replace 

data merge block 3206 74 378 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen23.text2"}','{"translate":"pl.sign.shen23.text3"}','{"translate":""}']}}

setblock 3195 71 373 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/shenmain1"}] replace 
setblock 3205 72 378 minecraft:command_block[block_entity_data={Command:"tp @p[level=10..,scores={race=0},distance=..10] 3336 128 222 180 -20"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3195 71 373 run function pld:npcs/shen/shenmain1
#区块卸载
forceload remove 3197 379 3210 380
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/201_17/pre 1t