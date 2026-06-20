execute unless block 288 42 65 minecraft:redstone_block run scoreboard players set #system house_sky_open 1
execute if block 288 42 65 minecraft:redstone_block run scoreboard players set #system house_sky_open -1
execute if score #system house_sky_open matches 1 run setblock 288 42 65 redstone_block
execute if score #system house_sky_open matches -1 run setblock 288 42 65 air

