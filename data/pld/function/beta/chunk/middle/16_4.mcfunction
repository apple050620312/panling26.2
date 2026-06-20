#区块强加载
forceload add 261 69 288 68
forceload add 264 80
#要做的事
data merge block 288 45 68 {front_text:{messages:['{"translate":"pl.sign.middle60.text1"}','{"translate":"pl.sign.middle60.text2"}','{"translate":"pl.sign.middle60.text3"}','{"translate":""}']}}
data merge block 288 45 70 {front_text:{messages:['{"translate":"pl.sign.middle60.text1"}','{"translate":""}','{"translate":"pl.sign.middle60.text3"}','{"translate":"pl.sign.middle60.text4"}']}}

data merge block 261 47 69 {front_text:{messages:['{"translate":"pl.sign.middle61.text1"}','{"translate":"pl.sign.middle61.text2"}','{"translate":"pl.sign.middle61.text3"}','{"translate":"pl.sign.middle61.text4"}']}}
data merge block 261 47 71 {front_text:{messages:['{"translate":"pl.sign.middle61.text1"}','{"translate":""}','{"translate":"pl.sign.middle61.text3"}','{"translate":"pl.sign.middle61.text4"}']}}

data merge block 288 44 68 {Lock:"§b城东乾府的钥匙",CustomName:'{"translate":"pl.chest.home_open_chest"}'}
data merge block 288 44 70 {Lock:"§b城东乾府的钥匙",CustomName:'{"translate":"pl.chest.home_open_chest"}'}

data merge block 261 46 71 {Lock:"§b城东坤府的钥匙",CustomName:'{"translate":"pl.chest.home_open_chest"}'}
data merge block 261 46 69 {Lock:"§b城东坤府的钥匙",CustomName:'{"translate":"pl.chest.home_open_chest"}'}

setblock 264 47 80 air
setblock 258 47 80 air
fill 260 48 70 259 49 70 minecraft:spruce_planks
fill 263 49 70 262 48 70 minecraft:spruce_planks

fill 261 44 71 261 44 68 air
fill 261 43 67 261 43 64 air
fill 288 42 67 288 42 66 air
setblock 288 42 69 air
setblock 288 42 65 minecraft:redstone_block
setblock 261 43 64 minecraft:redstone_block

setblock 288 42 68 minecraft:command_block[block_entity_data={Command:"function pld:system/house/sky"}] replace 
setblock 288 42 70 minecraft:command_block[block_entity_data={Command:"function pld:system/house/sky"}] replace 

setblock 261 44 69 minecraft:command_block[block_entity_data={Command:"function pld:system/house/earth"}] replace 
setblock 261 44 71 minecraft:command_block[block_entity_data={Command:"function pld:system/house/earth"}] replace 

setblock 288 53 70 minecraft:stone_pressure_plate destroy
setblock 261 54 70 minecraft:stone_pressure_plate destroy

#区块卸载
forceload remove 261 69 288 68
forceload remove 264 80
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/17_-10 1t