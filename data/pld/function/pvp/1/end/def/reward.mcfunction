tellraw @s [{"translate":"pl.info.pvp1_reward_def1a"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.pvp1_reward_def1b"}]
scoreboard players set @s honor_all 0
scoreboard players set @s honor_middle 110
scoreboard players operation @s honor_middle *= #system pvp1_delivered
scoreboard players operation @s honor_all += @s honor_middle
tellraw @s [{"translate":"pl.info.pvp1_reward_def2a"},{"score":{"name": "#system","objective": "pvp1_delivered"}},{"translate":"pl.info.pvp1_reward_def2b"},{"score":{"name": "@s","objective": "honor_middle"}},{"translate":"pl.info.pvp1_reward_def2c"}]
tellraw @s {"translate":"pl.info.pvp1_reward_def3"}
scoreboard players add @s honor_all 100
#胜负判断
execute if score #system pvp1_last_win matches 4 run scoreboard players add @s honor_all 50
execute if score #system pvp1_last_win matches 4 run tellraw @s {"translate":"pl.info.pvp1_reward_def4"}
tellraw @s [{"translate":"pl.info.pvp1_reward_def5a"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.pvp1_reward_def5b"}]
tellraw @s [{"translate":"pl.info.pvp1_reward_def6a"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.pvp1_reward_def6b"},{"score":{"name": "@s","objective": "honor_all"}},{"translate":"pl.info.pvp1_reward_def6c"}]
scoreboard players operation @s honor += @s honor_all
scoreboard players set @s honor_all 0
tellraw @s [{"translate":"pl.info.pvp1_reward_def7a"},{"score":{"name": "@s","objective": "honor"}},{"translate":"pl.info.pvp1_reward_def7b"}]
tellraw @s {"translate":"pl.info.pvp1_reward_def8"}
scoreboard players add @s racefriend0 1
scoreboard players add @s racefriend4 1
scoreboard players remove @s racefriend3 4

execute if score #system pvp1_last_win matches 4 run scoreboard players add @s racefriend0 1
execute if score #system pvp1_last_win matches 4 run scoreboard players add @s racefriend4 1
execute if score #system pvp1_last_win matches 4 run scoreboard players remove @s racefriend3 4
#成就-战役胜利计数
execute if score #system pvp1_last_win matches 4 run function pld:pvp/adv_check

#开启屬性
scoreboard players set @s[scores={race=0,racefriend0=-9..}] raceeffect 1
scoreboard players set @s[scores={race=1,racefriend1=-9..}] raceeffect 1
scoreboard players set @s[scores={race=2,racefriend2=-9..}] raceeffect 1
scoreboard players set @s[scores={race=3,racefriend3=-9..}] raceeffect 1
scoreboard players set @s[scores={race=4,racefriend4=-9..}] raceeffect 1

#重置玩家记分板
function pld:pvp/pvp_scb_reset


spawnpoint @s 205 54 -1771
tp @s 123 59 -143 146 6

