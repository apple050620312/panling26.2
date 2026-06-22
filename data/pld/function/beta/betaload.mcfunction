#清楚附近方块以及定时红石沙刷怪笼
fill 184 191 -1768 183 191 -1769 minecraft:air hollow
setblock 184 190 -1765 air
setblock 183 190 -1765 air
setblock 187 190 -1768 air
setblock 187 190 -1769 air
setblock 184 190 -1772 air
setblock 183 190 -1772 air
setblock 180 190 -1769 air
setblock 180 190 -1768 air

setblock 177 64 -1775 air
setblock 177 101 -1775 minecraft:air

setblock 177 9 -1764 minecraft:air
setblock 177 9 -1766 minecraft:air
setblock 177 9 -1768 minecraft:air
setblock 177 9 -1770 minecraft:air
setblock 177 9 -1772 minecraft:air
setblock 177 9 -1774 minecraft:air

time set day

setblock 184 188 -1768 minecraft:air

#基础记分板创建
scoreboard objectives add begin trigger
scoreboard objectives add alreadyload dummy 
scoreboard objectives add totalload dummy 

#gamerule预设
gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule sendCommandFeedback false
#gamerule minecraft:fire_spread_radius_around_player false
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule keepInventory false
gamerule mobGriefing false
gamerule spawnRadius 0
gamerule keepInventory true
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doLimitedCrafting true
gamerule doImmediateRespawn true
gamerule doTileDrops false
gamerule maxCommandChainLength 10000000
gamerule doWardenSpawning false
#加载核心加载文件
schedule function pld:beta/loadinfo 5s

