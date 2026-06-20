#区块强加载
forceload add -850 -74 -866 -85
#要做的事
setblock -850 143 -82 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-849.5,149.0,-81.5],Tags:["west","zombie"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock -852 142 -73 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-851.5,148.0,-72.5],Tags:["west","skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock -867 142 -85 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-866.5,148.0,-84.5],Tags:["west","cave_spider"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
#区块卸载
forceload remove -850 -74 -866 -85
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-54_-8 1t