#区块强加载
forceload add 525 332
#要做的事
data merge block 826 42 95 {front_text:{messages:['{"translate":"pl.sign.east6.text1"}','{"translate":"pl.spsign.east6.text2"}','{"text":""}','{"text":""}']}}

setblock 525 32 330 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[525.5,38.5,330.5],Tags:["east","spider2"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
#区块卸载
forceload remove 525 332
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/33_19 1t