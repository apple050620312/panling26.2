tellraw @s [{"translate":"pl.info.pvp1_reward_atk1a"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.pvp1_reward_atk1b"}]
scoreboard players set @s honor_all 0
scoreboard players set @s honor_middle 15
scoreboard players operation @s honor_middle *= #system pvp1_event_min
scoreboard players operation @s honor_all += @s honor_middle
tellraw @s [{"translate":"pl.info.pvp1_reward_atk2a"},{"score":{"name": "#system","objective": "pvp1_event_min"}},{"translate":"pl.info.pvp1_reward_atk2b"},{"score":{"name": "@s","objective": "honor_middle"}},{"translate":"pl.info.pvp1_reward_atk2c"}]
tellraw @s {"translate":"pl.info.pvp1_reward_atk3"}
scoreboard players add @s honor_all 100
#胜负判断
execute if score #system pvp1_last_win matches 3 run scoreboard players add @s honor_all 50
execute if score #system pvp1_last_win matches 3 run tellraw @s {"translate":"pl.info.pvp1_reward_atk4"}
tellraw @s [{"translate":"pl.info.pvp1_reward_atk5a"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.pvp1_reward_atk5b"}]
tellraw @s [{"translate":"pl.info.pvp1_reward_atk6a"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.pvp1_reward_atk6b"},{"score":{"name": "@s","objective": "honor_all"}},{"translate":"pl.info.pvp1_reward_atk6c"}]
scoreboard players operation @s honor += @s honor_all
scoreboard players set @s honor_all 0
tellraw @s [{"translate":"pl.info.pvp1_reward_atk7a"},{"score":{"name": "@s","objective": "honor"}},{"translate":"pl.info.pvp1_reward_atk7b"}]
tellraw @s {"translate":"pl.info.pvp1_reward_atk8"}
scoreboard players add @s racefriend3 2
scoreboard players remove @s racefriend0 2
scoreboard players remove @s racefriend4 2

execute if score #system pvp1_last_win matches 3 run scoreboard players add @s racefriend3 2
execute if score #system pvp1_last_win matches 3 run scoreboard players remove @s racefriend0 2
execute if score #system pvp1_last_win matches 3 run scoreboard players remove @s racefriend4 2
#成就-战役胜利计数
execute if score #system pvp1_last_win matches 3 run function pld:pvp/adv_check

#开启属性
scoreboard players set @s[scores={race=0,racefriend0=-9..}] raceeffect 1
scoreboard players set @s[scores={race=1,racefriend1=-9..}] raceeffect 1
scoreboard players set @s[scores={race=2,racefriend2=-9..}] raceeffect 1
scoreboard players set @s[scores={race=3,racefriend3=-9..}] raceeffect 1
scoreboard players set @s[scores={race=4,racefriend4=-9..}] raceeffect 1

#重置玩家记分板
function pld:pvp/pvp_scb_reset

spawnpoint @s 205 54 -1771
tp @s 3267 20 -138 -86 10