#区块强加载
forceload add 72 166 82 146

#要做的事
setblock 69 42 172 minecraft:command_block{Command:'tellraw @a[distance=..6] {"translate":"pl.info.armor_stand2"}'} replace 
setblock 83 42 171 minecraft:command_block{Command:'tellraw @a[x=84,y=45,z=170,distance=..5] {"translate":"pl.info.armor_stand5a"}'} replace 
setblock 82 44 170 minecraft:repeating_command_block{Command:"execute as @p[x=84,y=45,z=170,distance=..10] run function pld:npcs/middle/armstand3"} replace 
setblock 69 42 164 minecraft:command_block{Command:"execute as @p[x=72,y=46,z=159,distance=..1] at @s run function pld:npcs/middle/armstand5"} replace 
data merge block 84 44 170 {Items:[]}

setblock 86 29 145 structure_block{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"CLOCKWISE_90",posX:0,mode:"LOAD",posY:1,sizeX:23,posZ:0,integrity:1.0f,showair:0b,name:"pld:dzs",sizeY:11,sizeZ:9,showboundingbox:1b}
setblock 86 30 145 minecraft:redstone_block
data merge block 81 33 149 {CustomName:'{"translate":"pl.name.dzt"}'}
data merge block 81 33 163 {CustomName:'{"translate":"pl.name.dzt"}'}

setblock 78 35 163 minecraft:chest
setblock 78 35 149 minecraft:chest

setblock 84 43 168 air

#区块卸载
forceload remove 72 166 82 146
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/5_0 1t