
#要做的事
data merge block 260 45 52 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle42.text2"}','{"translate":"pl.sign.middle42.text3"}','{"translate":""}']}}
data merge block 263 45 52 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle42.text2"}','{"translate":"pl.sign.middle42.text3"}','{"translate":""}']}}
setblock 257 46 32 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/tong12"}] replace 
setblock 265 25 32 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "yl_jiu_qiu", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 23, posZ: 0, integrity: 1.0f, showair: 0b,  name: "pld:ldf", sizeY: 11, sizeZ: 22, showboundingbox: 1b}
setblock 265 26 32 minecraft:redstone_block

data merge block 284 26 36 {SpawnPotentials:[{data:{entity:{Pos:[284.5d, 28.0d, 36.5d],Motion:[0.0d,0.0d,0.0d],BlockState:{Name:"minecraft:redstone_block"}, Block: "minecraft:redstone_block", Time: 1, id: "minecraft:falling_block", DropItem: 0}}, weight: 1}],SpawnData: {Pos: [284.5d, 28.0d, 36.5d],Motion: [0.0d, 0.0d, 0.0d], BlockState: {Name: "minecraft:redstone_block"}, Block: "minecraft:redstone_block", Time: 1, id: "minecraft:falling_block", DropItem: 0}}
data merge block 284 26 49 {SpawnPotentials:[{data:{entity:{Pos:[284.5d, 28.0d, 49.5d],Motion:[0.0d,0.0d,0.0d],BlockState:{Name:"minecraft:redstone_block"}, Block: "minecraft:redstone_block", Time: 1, id: "minecraft:falling_block", DropItem: 0}}, weight: 1}],SpawnData: {Pos: [284.5d, 28.0d, 49.5d],Motion: [0.0d, 0.0d, 0.0d], BlockState: {Name: "minecraft:redstone_block"}, Block: "minecraft:redstone_block", Time: 1, id: "minecraft:falling_block", DropItem: 0}}
data merge block 268 26 49 {SpawnPotentials:[{data:{entity:{Pos:[268.5d, 28.0d, 49.5d],Motion:[0.0d,0.0d,0.0d],BlockState:{Name:"minecraft:redstone_block"}, Block: "minecraft:redstone_block", Time: 1, id: "minecraft:falling_block", DropItem: 0}}, weight: 1}],SpawnData: {Pos: [268.5d, 28.0d, 49.5d],Motion: [0.0d, 0.0d, 0.0d], BlockState: {Name: "minecraft:redstone_block"}, Block: "minecraft:redstone_block", Time: 1, id: "minecraft:falling_block", DropItem: 0}}
data merge block 268 26 36 {SpawnPotentials:[{data:{entity:{Pos:[268.5d, 28.0d, 36.5d],Motion:[0.0d,0.0d,0.0d],BlockState:{Name:"minecraft:redstone_block"}, Block: "minecraft:redstone_block", Time: 1, id: "minecraft:falling_block", DropItem: 0}}, weight: 1}],SpawnData: {Pos: [268.5d, 28.0d, 36.5d],Motion: [0.0d, 0.0d, 0.0d], BlockState: {Name: "minecraft:redstone_block"}, Block: "minecraft:redstone_block", Time: 1, id: "minecraft:falling_block", DropItem: 0}}



kill @e[type=villager,tag=!panling]
execute positioned 257 46 32 run function pld:npcs/middle/tong12
#区块卸载
forceload remove 283 52 262 41
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/16_8/pre 1t