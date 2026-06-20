#区块强加载
forceload add 86 -516
#要做的事
setblock 85 37 -518 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[85.5,43.0,-517.5],Tags:["north","cave_spider"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
data merge block 90 46 -516 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.north10.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 89 46 -517 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.north10.text2"}','{"translate":""}','{"translate":""}']}}


#区块卸载
forceload remove 86 -516
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/6_-32 1t