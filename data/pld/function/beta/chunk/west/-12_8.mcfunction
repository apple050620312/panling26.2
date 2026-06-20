#区块强加载
forceload add -184 146 -204 132
#要做的事
setblock -188 52 139 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-187.5,58.0,139.5],Tags:["west","box_zombie"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock -181 52 144 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-180.5,58.0,144.5],Tags:["west","box_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock -202 50 131 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-201.5,56.0,131.5],Tags:["west","box_cave_spider"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
#区块卸载
forceload remove -184 146 -204 132
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-13_5 1t