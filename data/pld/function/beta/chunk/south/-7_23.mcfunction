#区块强加载
forceload add -107 371 -115 374
#要做的事
data merge block -110 60 369 {front_text:{messages:['{"translate":"pl.sign.south1.text1"}','{"translate":"pl.sign.south1.text2"}','{"translate":""}','{"translate":""}']}}
setblock -121 60 379 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-120.5,66.5,379.5],Tags:["south","blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock -117 59 380 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-166.5,65.5,380.5],Tags:["south","magma_cube"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock -122 60 375 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-121.5,66.5,375.5],Tags:["south","zombie_pigman"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
#区块卸载
forceload remove -107 371 -115 374
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-8_36 1t