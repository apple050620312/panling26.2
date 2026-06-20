#区块强加载
forceload add -266 362
#要做的事
setblock -266 45 362 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-265.5,49.5,362.5],Tags:["south","bosspigman"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1200s,MinSpawnDelay:600s,SpawnRange:4s,Delay:10s}] destroy

#区块卸载
forceload remove -266 362
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-17_39 1t