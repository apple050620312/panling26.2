#区块强加载
forceload add 2860 -421 2870 -422
#要做的事
setblock 2858 25 -419 minecraft:command_block[custom_data={Command:"tp @p[x=2858,y=28,z=-419,distance=..2] 2854 29 -418"}] replace 

setblock 2879 17 -420 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2879.5,23.0,-419.5],Tags:["instance1","zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2873 19 -420 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2873.5,25.0,-419.5],Tags:["instance1","husk"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2876 18 -420 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2876.5,24.0,-419.5],Tags:["instance1","skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2870 20 -420 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2870.5,26.0,-419.5],Tags:["instance1","zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2863 22 -420 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2863.5,28.0,-419.5],Tags:["instance1","husk"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2867 21 -420 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2867.5,27.0,-419.5],Tags:["instance1","skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy

#区块卸载
forceload remove 2860 -421 2870 -422
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance1/178_-31 1t