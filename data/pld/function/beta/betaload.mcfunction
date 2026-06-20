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
gamerule minecraft:command_block_output false
gamerule minecraft:log_admin_commands false
gamerule minecraft:send_command_feedback false
gamerule minecraft:fire_spread_radius_around_player false
gamerule minecraft:spawn_mobs false
gamerule minecraft:drop_tiles false
gamerule minecraft:advance_weather false
gamerule minecraft:keep_inventory false
gamerule minecraft:mob_griefing false
gamerule minecraft:respawn_radius 0
gamerule minecraft:keep_inventory true
gamerule minecraft:spawn_patrols false
gamerule minecraft:spawn_traders false
gamerule minecraft:do_limited_crafting true
gamerule minecraft:do_immediate_respawn true
gamerule minecraft:drop_tiles false
gamerule minecraft:max_command_chain_length 10000000
gamerule minecraft:spawn_wardens false
#加载核心加载文件
schedule function pld:beta/loadinfo 5s

