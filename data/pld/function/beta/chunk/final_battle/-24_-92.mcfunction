#区块强加载 -24_-92 -24_-93 -25_-92 -25_-93 -23_-91
forceload add -374 -1463 -386 -1479
forceload add -368 -1453
#要做的事
#-24_-92 x
setblock -374 96 -1463 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-373.5,102.0,-1462.5],Tags:["final_battle","endermite"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock -382 95 -1463 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-381.5,101.0,-1462.5],Tags:["final_battle","blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

#-24_-93 x
setblock -371 95 -1476 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-370.5,101.0,-1475.5],Tags:["final_battle","endermite"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock -370 95 -1481 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-369.5,101.0,-1480.5],Tags:["final_battle","blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock -380 97 -1475 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-379.5,103.0,-1474.5],Tags:["final_battle","skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock -382 96 -1484 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-381.5,102.0,-1483.5],Tags:["final_battle","blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock -377 96 -1486 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-376.5,102.0,-1485.5],Tags:["final_battle","skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

#-25_-92 x
setblock -385 95 -1469 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-384.5,101.0,-1468.5],Tags:["final_battle","skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

#-25_-93 x
setblock -386 96 -1479 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-385.5,102.0,-1478.5],Tags:["final_battle","creeper"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

#-23_-91
setblock -368 95 -1453 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-367.5,101.0,-1452.5],Tags:["final_battle","creeper"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy




#区块卸载
forceload remove -368 -1453
forceload remove -374 -1463 -386 -1479
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#tellraw yl_jiu_qiu [{"text":"-24 -92: "},{"score":{"name":"#system","objective": "alreadyload"}}]
#链接下一个chunk
schedule function pld:beta/chunk/final_battle/-25_-99 1t