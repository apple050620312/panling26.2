#区块强加载 -18_-93 -19_-93 -20_-93 -21_-93 -19_-92
forceload add -287 -1487 -326 -1477
forceload add -301 -1468
#要做的事
#-19_-92
setblock -301 146 -1468 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-300.5,152.5,-1467.5],Tags:["final_battle","wither_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock -296 146 -1469 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-295.5,152.5,-1468.5],Tags:["final_battle","creeper"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

#-18_-93
setblock -287 149 -1487 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-286.5,155.5,-1486.5],Tags:["final_battle","creeper"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

#-19_-93
setblock -291 146 -1476 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-290.5,152.5,-1475.5],Tags:["final_battle","endermite"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock -291 149 -1484 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-290.5,155.5,-1483.5],Tags:["final_battle","blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

#-20_-93
setblock -308 147 -1482 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-307.5,153.5,-1481.5],Tags:["final_battle","endermite"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock -312 147 -1482 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-311.5,153.5,-1481.5],Tags:["final_battle","blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock -311 147 -1487 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-310.5,153.5,-1486.5],Tags:["final_battle","cave_spider"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock -315 147 -1487 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-314.5,153.5,-1486.5],Tags:["final_battle","skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

#-21_-93
setblock -326 147 -1477 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-325.5,153.5,-1476.5],Tags:["final_battle","creeper"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock -327 148 -1486 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-326.5,154.5,-1485.5],Tags:["final_battle","endermite"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

#区块卸载
forceload remove -287 -1487 -326 -1477
forceload remove -301 -1468
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#tellraw yl_jiu_qiu [{"text":"-18 -93: "},{"score":{"name":"#system","objective": "alreadyload"}}]
#链接下一个chunk
schedule function pld:beta/chunk/final_battle/-20_-88 1t