execute unless block 261 43 64 minecraft:redstone_block run scoreboard players set #system house_earth_open 1
execute if block 261 43 64 minecraft:redstone_block run scoreboard players set #system house_earth_open -1
execute if score #system house_earth_open matches 1 run setblock 261 43 64 redstone_block
execute if score #system house_earth_open matches -1 run setblock 261 43 64 air

