
#要做的事
data merge block 2647 95 870 {front_text:{messages:['{"translate":"pl.sign.yao12.text1"}','{"translate":"pl.sign.yao12.text2"}','{"translate":"pl.sign.yao12.text3"}','{"translate":""}']}}
setblock 2645 93 864 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/yaomain3"}] replace 
setblock 2645 92 864 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/yaotong1"}] replace 
setblock 2644 92 864 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/yaotong2"}] replace 
setblock 2645 92 863 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/yaotong3"}] replace 

fill 2647 98 859 2647 96 859 air

fill 2647 96 857 2647 97 857 black_wool
setblock 2647 97 859 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"translate":""}','{"translate":"pl.sign.yao16.text2"}','{"translate":"pl.sign.yao16.text3"}','{"translate":""}']}}

setblock 2647 96 858 minecraft:stone_pressure_plate
fill 2648 97 857 2648 96 857 minecraft:brown_mushroom_block
setblock 2646 97 857 minecraft:brown_mushroom_block
setblock 2647 95 858 minecraft:oak_planks
setblock 2647 94 858 minecraft:command_block[custom_data={Command:"tp @p[distance=..3] 2647 84 861 0 0"}] replace 
setblock 2647 95 857 minecraft:repeating_command_block[custom_data={Command:"tp @e[x=2647,y=96,z=858,distance=..3,type=!player] ~ ~-1000 ~"}] replace 

setblock 2642 81 857 structure_block{metadata: "",mirror: "NONE",ignoreEntities: 0b,powered: 0b,seed: 0L,author: "?",rotation: "NONE",posX: 0,mode: "LOAD",posY: 1,posZ: 0,integrity: 1.0f,showair: 0b,name: "pld:tjp1",showboundingbox: 1b}
setblock 2642 82 857 redstone_block
data merge block 2645 84 863 {CustomName:'{"translate":"pl.name.dzt"}'}

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 2645 93 864 run function pld:npcs/yao/yaomain3
execute positioned 2645 92 864 run function pld:npcs/yao/yaotong1
execute positioned 2644 92 864 run function pld:npcs/yao/yaotong2
execute positioned 2645 92 863 run function pld:npcs/yao/yaotong3
#区块卸载
forceload remove 2651 858 2649 864
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/yao/165_55/pre 1t