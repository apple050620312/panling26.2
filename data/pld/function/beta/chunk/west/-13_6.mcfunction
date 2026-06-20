#区块强加载
forceload add -202 97 -211 120
#要做的事
setblock -211 47 122 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-210.5,53.0,122.5],Tags:["west","box_zombie"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock -198 46 119 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-197.5,52.0,119.5],Tags:["west","box_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock -200 48 124 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-199.5,54.0,124.5],Tags:["west","box_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy

setblock -203 52 99 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-202.5,58.0,99.5],Tags:["west","box_cave_spider"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
#区块卸载
forceload remove -202 97 -211 120
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-23_6 1t