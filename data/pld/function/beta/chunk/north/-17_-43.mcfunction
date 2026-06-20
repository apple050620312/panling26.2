#区块强加载
forceload add -258 -674
#要做的事
data merge block -258 34 -674 {front_text:{messages:['{"translate":"pl.sign.north1.text1"}','{"translate":"pl.sign.north3.text2"}','{"translate":""}','{"translate":""}']}}
setblock -261 28 -683 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-260.5,34.0,-682.5],Tags:["north","skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy

#区块卸载
forceload remove -258 -674
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-18_-30 1t