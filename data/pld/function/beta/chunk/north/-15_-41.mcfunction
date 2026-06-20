#区块强加载
forceload add -238 -647
#要做的事
setblock -240 35 -646 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-239.5,41.0,-645.5],Tags:["north","cave_spider"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
#区块卸载
forceload remove -238 -647
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-16_-20 1t