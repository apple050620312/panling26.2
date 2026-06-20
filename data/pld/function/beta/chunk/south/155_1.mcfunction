#区块强加载
forceload add 2483 27 2484 36
#要做的事

setblock 2480 27 29 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2480.5,33.0,29.5],Tags:["south","bird_zombie"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 2483 27 36 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2483.5,33.0,36.5],Tags:["south","bird_blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 2483 27 40 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2483.5,33.0,40.5],Tags:["south","bird_magma_cube"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

setblock 2480 26 47 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2480.5,33.0,47.5],Tags:["south","bird_zombie"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
#区块卸载
forceload remove 2483 27 2484 36
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/203_-47 1t