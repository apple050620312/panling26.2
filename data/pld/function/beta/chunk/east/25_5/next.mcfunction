#要做的事
data merge block 404 51 80 {front_text:{messages:['{"text":"","clickEvent":{"action":"run_command","value":"/tellraw @p[distance=..5] {\\"translate\\":\\"pl.spsign.east1.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.east1.text2"}','{"translate":"pl.spsign.east1.text3"}','{"text":""}']}}

setblock 408 57 80 minecraft:command_block[block_entity_data={Command:"execute as @p[x=408,y=60,z=82,distance=..3] run function pld:system/race_tp/race1"}] replace 
setblock 405 49 80 minecraft:command_block[block_entity_data={Command:"execute as @p[x=404,y=50,z=80,distance=..5] run function pld:pvp/2/pre/sign/sign_up_def"}] replace 
setblock 401 46 79 minecraft:command_block[block_entity_data={Command:"function pld:npcs/east/pvp2_def"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 401 46 79 run function pld:npcs/east/pvp2_def

#区块卸载
forceload remove 404 80 401 79
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/31_2/pre 1t
