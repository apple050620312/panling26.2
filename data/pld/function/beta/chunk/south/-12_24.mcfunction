#区块强加载
forceload add -185 390 
#要做的事
setblock -187 74 391 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-186.5,80.5,391.5],Tags:["south","bosscube"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:2000s,MinSpawnDelay:1200s,SpawnRange:4s,Delay:10s}] destroy


#区块卸载
forceload remove -185 390 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-12_30 1t