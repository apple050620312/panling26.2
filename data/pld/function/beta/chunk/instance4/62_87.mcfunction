#区块强加载
forceload add 1001 1399
#要做的事
setblock 1004 51 1404 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1004.0,88.0,1395.5],Tags:["instance4","ghast1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

#区块卸载
forceload remove 1001 1399
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/62_89 1t