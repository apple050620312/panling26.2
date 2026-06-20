#区块强加载 -23_-86 -23_-87 -23_-88 -24_-87
forceload add -367 -1372 -353 -1394
forceload add -369 -1383
#要做的事
#-23_-86
setblock -367 157 -1372 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-366.5,163.0,-1371.5],Tags:["final_battle","skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock -368 157 -1368 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-367.5,163.0,-1367.5],Tags:["final_battle","blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

#-23_-87
setblock -360 155 -1392 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-359.5,161.0,-1391.5],Tags:["final_battle","creeper"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock -364 155 -1389 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-363.5,161.0,-1388.5],Tags:["final_battle","creeper"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock -360 154 -1378 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-359.5,160.0,-1377.5],Tags:["final_battle","skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock -354 155 -1377 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-353.5,161.0,-1376.5],Tags:["final_battle","blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

#-23_-88
setblock -353 157 -1394 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-352.5,163.0,-1393.5],Tags:["final_battle","creeper"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

#-24_-87
setblock -369 155 -1383 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-368.5,161.0,-1382.5],Tags:["final_battle","creeper"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock -375 158 -1378 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-374.5,164.0,-1377.5],Tags:["final_battle","cave_spider"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock -381 158 -1379 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-380.5,164.0,-1378.5],Tags:["final_battle","endermite"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy



#区块卸载
forceload remove -367 -1372 -353 -1394
forceload remove -369 -1383
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#tellraw yl_jiu_qiu [{"text":"-23 -86: "},{"score":{"name":"#system","objective": "alreadyload"}}]
#链接下一个chunk
schedule function pld:beta/chunk/final_battle/-23_-95 1t