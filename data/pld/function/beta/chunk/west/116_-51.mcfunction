#区块强加载
forceload add 1857 -804 1842 -802
#要做的事
setblock 1859 71 -806 minecraft:command_block{Command:"execute as @p[x=1857,y=73,z=-806,distance=..5] run function pld:system/altars/tiger/outtigertest"} replace 
setblock 1841 65 -802 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1852.0,72.0,-811.0],Tags:["west","tiger_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:400s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 1851 45 -812 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1858.0,53.0,-801.0],Tags:["west","tiger_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:400s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

setblock 1850 23 -809 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1842.0,23.0,-789.0],Tags:["west","tiger_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:400s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

setblock 1844 43 -812 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1858.0,53.0,-801.0],Tags:["west","tiger_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:400s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

kill @e[type=minecraft:item]
#区块卸载
forceload remove 1857 -804 1842 -802
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/136_-57 1t