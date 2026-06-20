
#要做的事
setblock -6 34 -542 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-5.5,40.0,-541.5],Tags:["north","spider"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock -6 37 -553 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-5.5,43.0,-552.5],Tags:["north","spider"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock -1 43 -591 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-0.5,49.0,-590.5],Tags:["north","skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock -4 39 -571 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-3.5,45.0,-570.5],Tags:["north","cave_spider"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock -7 48 -608 minecraft:command_block[custom_data={Command:"function pld:npcs/north/te2"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned -7 48 -608 run function pld:npcs/north/te2
data merge block -9 45 -555 {front_text:{messages:['{"translate":"pl.sign.north1.text1"}','{"translate":"pl.sign.north13.text2"}','{"translate":""}','{"translate":"pl.sign.north13.text4"}']}}
data merge block -9 44 -555 {front_text:{messages:['{"translate":"pl.sign.north4.text3"}','{"translate":"pl.sign.north14.text2"}','{"translate":""}','{"translate":""}']}}
#区块卸载
forceload remove -4 -540 -6 -602
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-2_-38/pre 1t