#要做的事
data merge block -341 209 -1440 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.final_battle_plan.text2"}','{"translate":"pl.sign.final_battle_plan.text3"}','{"text":""}']}}
data merge block -342 209 -1441 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.final_battle_plan.text2"}','{"translate":"pl.sign.final_battle_plan.text3"}','{"text":""}']}}
setblock -342 207 -1440 minecraft:command_block[block_entity_data={Command:"function pld:instances/ture_pangu/final_battle_plan"}] replace
setblock -347 202 -1448 minecraft:command_block[block_entity_data={Command:"function pld:npcs/final_story/1"}] replace
setblock -346 202 -1449 minecraft:command_block[block_entity_data={Command:"function pld:npcs/final_story/2"}] replace
setblock -345 202 -1449 minecraft:command_block[block_entity_data={Command:"function pld:npcs/final_story/3"}] replace
setblock -346 202 -1448 minecraft:command_block[block_entity_data={Command:"function pld:npcs/final_story/4"}] replace
setblock -345 202 -1448 minecraft:command_block[block_entity_data={Command:"function pld:npcs/final_story/5"}] replace
setblock -344 202 -1448 minecraft:command_block[block_entity_data={Command:"function pld:npcs/final_story/6"}] replace
setblock -345 202 -1447 minecraft:command_block[block_entity_data={Command:"function pld:npcs/final_story/7"}] replace
setblock -344 202 -1447 minecraft:command_block[block_entity_data={Command:"function pld:npcs/final_story/8"}] replace
setblock -344 202 -1446 minecraft:command_block[block_entity_data={Command:"function pld:npcs/final_story/9"}] replace
setblock -343 202 -1447 minecraft:command_block[block_entity_data={Command:"function pld:npcs/final_story/10"}] replace
setblock -342 202 -1446 minecraft:command_block[block_entity_data={Command:"function pld:npcs/final_story/11"}] replace
setblock -343 202 -1446 minecraft:command_block[block_entity_data={Command:"function pld:npcs/final_story/12"}] replace
#-23_-92
setblock -361 197 -1462 minecraft:command_block[block_entity_data={Command:"function pld:instances/ture_pangu/in_stage_check"}] replace
setblock -368 95 -1464 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-367.5,101.0,-1463.5],Tags:["final_battle","wither_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

kill @e[type=villager,tag=!panling]
execute positioned -347 202 -1448 run function pld:npcs/final_story/1
execute positioned -346 202 -1449 run function pld:npcs/final_story/2
execute positioned -345 202 -1449 run function pld:npcs/final_story/3
execute positioned -346 202 -1448 run function pld:npcs/final_story/4
execute positioned -345 202 -1448 run function pld:npcs/final_story/5
execute positioned -344 202 -1448 run function pld:npcs/final_story/6
execute positioned -345 202 -1447 run function pld:npcs/final_story/7
execute positioned -344 202 -1447 run function pld:npcs/final_story/8
execute positioned -344 202 -1446 run function pld:npcs/final_story/9
execute positioned -343 202 -1447 run function pld:npcs/final_story/10
execute positioned -342 202 -1446 run function pld:npcs/final_story/11
execute positioned -343 202 -1446 run function pld:npcs/final_story/12
#区块卸载
forceload remove -341 -1440 -347 -1448
forceload remove -361 -1462
forceload remove -354 -1448
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#tellraw yl_jiu_qiu [{"text":"-22 -90: "},{"score":{"name":"#system","objective": "alreadyload"}}]
#链接下一个chunk
schedule function pld:beta/chunk/final_battle/-22_-97/pre 1t