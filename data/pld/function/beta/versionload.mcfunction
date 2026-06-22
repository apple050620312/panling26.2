#gamerule maxCommandChainLength 100000
scoreboard objectives add finish dummy "加载完成标识"
execute unless score #system finish matches 1 run scoreboard players set #system finish 0
execute if score #system finish matches 0 run schedule function pld:beta/betaload 1t
function pld:beta/set_newest_version

#更新:1.0.1 -> 1.0.3
execute if score #system finish matches 1 unless score #updating int matches 1 if score #version int matches 10001 run function pld:beta/update/10003/start
#更新:1.0.3 -> 1.0.4
execute if score #system finish matches 1 unless score #updating int matches 1 if score #version int matches 10003 run function pld:beta/update/10004/start 
#更新:1.0.4 -> 1.0.5
execute if score #system finish matches 1 unless score #updating int matches 1 if score #version int matches 10004 run function pld:beta/update/10005/start 
#更新:1.0.5 -> 1.1.0
execute if score #system finish matches 1 unless score #updating int matches 1 if score #version int matches 10005 run function pld:beta/update/10100/start 

#更新检修：为1.0.1版本玩家提供内容
execute if score #version int matches 10001 run scoreboard players set #version_p1 int 1
execute if score #version int matches 10001 run scoreboard players set #version_p2 int 0
execute if score #version int matches 10001 run scoreboard players set #version_p3 int 1
