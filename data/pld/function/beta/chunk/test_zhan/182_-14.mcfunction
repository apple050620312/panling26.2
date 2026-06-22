#区块强加载
forceload add 2919 -211 2939 -182
#要做的事
setblock 2918 20 -197 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2918.5,26.0,-196.5],Tags:["test_zhan","magma_cube"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s} destroy
setblock 2918 20 -192 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2918.5,26.0,-191.5],Tags:["test_zhan","spider"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s} destroy
setblock 2925 20 -185 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2925.5,26.0,-184.5],Tags:["test_zhan","wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s} destroy
setblock 2935 20 -185 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2935.5,26.0,-184.5],Tags:["test_zhan","spider"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s} destroy
setblock 2925 20 -209 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2925.5,26.0,-208.5],Tags:["test_zhan","spider"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s} destroy
setblock 2935 20 -209 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2935.5,26.0,-208.5],Tags:["test_zhan","wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s} destroy
setblock 2942 20 -197 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2942.5,26.0,-196.5],Tags:["test_zhan","magma_cube"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s} destroy
setblock 2942 20 -202 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2942.5,26.0,-201.5],Tags:["test_zhan","spider"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s} destroy

#区块卸载
forceload remove 2919 -211 2939 -182
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_zhan/182_-18 1t