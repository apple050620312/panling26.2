#区块强加载
forceload add 1280 917 1274 917
#要做的事
setblock 1273 10 917 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1273.5,16.0,917.5],Tags:["instance2","blaze"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 1281 10 916 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1281.5,16.0,916.5],Tags:["instance2","husk"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 1277 10 917 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1277.5,16.0,917.5],Tags:["instance2","magma_cube"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy

#区块卸载
forceload remove 1280 917 1274 917
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance2/instance2_end 1t