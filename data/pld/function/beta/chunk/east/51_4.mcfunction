#区块强加载
forceload add 828 77 823 86
#要做的事
data merge block 826 42 95 {front_text:{messages:['{"translate":"pl.sign.east6.text1"}','{"translate":"pl.sign.east6.text2"}','{"text":""}','{"text":""}']}}
setblock 829 40 76 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[829.5,46.5,76.5],Tags:["east","spider"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
#区块卸载
forceload remove 828 77 823 86
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/52_-4 1t