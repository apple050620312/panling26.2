#要做的事
setblock -351 210 -1547 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-350.5,216.0,-1546.5],Tags:["final_battle","skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock -351 209 -1556 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-350.5,215.0,-1555.5],Tags:["final_battle","skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

#-22_-97 -351 210 -1547
#-22_-98 -351 209 -1556

kill @e[type=endermite,tag=!panling]
execute as @e[type=wither_skeleton] run function pld:system/tp_and_kill_self
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute as @e[type=blaze] run function pld:system/tp_and_kill_self
execute as @e[type=creeper] run function pld:system/tp_and_kill_self
execute as @e[type=cave_spider] run function pld:system/tp_and_kill_self
#区块卸载
forceload remove -351 -1547 -351 -1556
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#tellraw yl_jiu_qiu [{"text":"-22 -97: "},{"score":{"name":"#system","objective": "alreadyload"}}]
#链接下一个chunk
schedule function pld:beta/chunk/final_battle/-23_-97/pre 1t