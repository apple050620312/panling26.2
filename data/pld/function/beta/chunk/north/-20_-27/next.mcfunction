#要做的事
setblock -324 113 -424 minecraft:repeating_command_block{Command:"execute as @p[x=-321,y=115,z=-424,distance=..10] run function pld:system/te16_check"} replace 
setblock -319 110 -423 minecraft:command_block{Command:"function pld:npcs/north/te16"} replace 
setblock -324 92 -424 minecraft:command_block{Command:"function pld:npcs/north/te18"} replace 
data merge block -318 98 -426 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.te32.text2"}','{"translate":"pl.sign.te32.text3"}','{"translate":""}']}}

setblock -316 98 -425 minecraft:command_block{Command:"execute as @p[x=-318,y=98,z=-425,distance=..10] run function pld:system/te32/reward"} replace 

setblock -336 98 -417 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-335.5,104.0,-416.5],Tags:["te17","skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock -336 98 -421 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-335.5,104.0,-420.5],Tags:["te17","zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock -329 98 -415 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-328.5,104.0,-414.5],Tags:["te17","wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy

setblock -334 98 -425 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-333.5,104.0,-424.5],Tags:["te17","wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock -335 98 -428 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-334.5,104.0,-427.5],Tags:["te17","skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy

data merge block -321 114 -424 {Items:}
kill @e[type=villager,tag=!panling]
execute positioned -319 110 -423 run function pld:npcs/north/te16
execute positioned -324 92 -424 run function pld:npcs/north/te18
#区块卸载
forceload remove -327 -410 -313 -422
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-20_-44/pre 1t