#区块强加载
forceload add 1845 -796 1836 -792
#要做的事
setblock 1837 63 -791 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1852.0,72.0,-811.0],Tags:["west","tiger_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:400s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock 1841 18 -798 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1842.0,23.0,-789.0],Tags:["west","tiger_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:400s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

setblock 1829 28 -787 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1832.0,42.0,-811.0],Tags:["west","tiger_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:400s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

setblock 1854 59 -786 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1846.0,67.0,-795.0],Tags:["west","tiger_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:400s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

kill @e[type=minecraft:item]

#区块卸载
forceload remove 1845 -796 1836 -792
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/115_-52 1t