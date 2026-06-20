#区块强加载
forceload add 1865 -794 1860 -771
#要做的事
setblock 1859 24 -769 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1846.0,27.0,-775.0],Tags:["west","tiger_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:400s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

setblock 1841 27 -770 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1832.0,42.0,-811.0],Tags:["west","tiger_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:400s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 1851 18 -779 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1846.0,27.0,-775.0],Tags:["west","tiger_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:400s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

kill @e[type=minecraft:item]

#区块卸载
forceload remove 1865 -794 1860 -771
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/115_-50 1t