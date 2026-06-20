#区块强加载
forceload add 364 813
#要做的事
setblock 353 44 805 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[353.5,50.0,805.5],Tags:["south","blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 363 45 805 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[363.5,51.0,805.5],Tags:["south","magma_cube"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 364 44 813 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[364.5,50.0,813.5],Tags:["south","zombie_pigman"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy

forceload remove 364 813
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/24_49 1t