#区块强加载
forceload add 2471 56 2472 26
#要做的事
setblock 2471 32 38 air
setblock 2471 30 57 minecraft:command_block[block_entity_data={Command:"tp @p[x=2471,y=33,z=57,distance=..3] 2471 35 38"}] replace 
setblock 2473 27 50 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2473.5,33.0,50.5],Tags:["south","bird_blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 2469 27 50 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2469.5,33.0,50.5],Tags:["south","bird_magma_cube"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 2469 27 26 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2469.5,33.0,26.5],Tags:["south","bird_blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 2473 27 26 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2473.5,33.0,26.5],Tags:["south","bird_magma_cube"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

#区块卸载
forceload remove 2471 56 2472 26
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/155_1 1t