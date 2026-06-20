#区块强加载
forceload add 940 1318 940 1329
#要做的事
setblock 940 116 1330 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[926.0,121.0,1332.5],Tags:["instance4","ghast1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 940 94 1330 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[962.0,91.0,1330.5],Tags:["instance4","ghast1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 940 158 1315 minecraft:command_block[custom_data={Command:"function pld:instances/instance4/check"}] replace
data merge block 940 160 1316 {front_text:{messages:['{"translate":"pl.sign.instance4.3.text1"}','{"translate":"pl.sign.instance4.3.text2"}','{"translate":"pl.sign.instance4.3.text3"}','{"text":""}']}}
data merge block 941 160 1316 {front_text:{messages:['{"translate":"pl.sign.instance.a6.text1"}','{"translate":"pl.sign.instance.a6.text2"}','{"translate":"pl.sign.instance.a6.text3"}','{"translate":"pl.sign.instance.a6.text4"}']}}


#区块卸载
forceload remove 940 1318 940 1329
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/59_74 1t