tellraw @s [{"translate":"pl.info.pvp2_reward_atk1a"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.pvp2_reward_atk1b"}]
scoreboard players set @s honor_all 0
scoreboard players set @s honor_middle 20
scoreboard players operation @s honor_middle *= #system pvp2_kill_tree
scoreboard players operation @s honor_all += @s honor_middle
tellraw @s [{"translate":"pl.info.pvp2_reward_atk2a"},{"score":{"name": "#system","objective": "pvp2_kill_tree"}},{"translate":"pl.info.pvp2_reward_atk2b"},{"score":{"name": "@s","objective": "honor_middle"}},{"translate":"pl.info.pvp2_reward_atk2c"}]
tellraw @s {"translate":"pl.info.pvp2_reward_atk3"}
scoreboard players add @s honor_all 100
#胜负判断
execute if score #system pvp2_last_win matches 4 run scoreboard players add @s honor_all 50
execute if score #system pvp2_last_win matches 4 run tellraw @s {"translate":"pl.info.pvp2_reward_atk4"}
tellraw @s [{"translate":"pl.info.pvp2_reward_atk5a"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.pvp2_reward_atk5b"}]
tellraw @s [{"translate":"pl.info.pvp2_reward_atk6a"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.pvp2_reward_atk6b"},{"score":{"name": "@s","objective": "honor_all"}},{"translate":"pl.info.pvp2_reward_atk6c"}]
scoreboard players operation @s honor += @s honor_all
scoreboard players set @s honor_all 0
tellraw @s [{"translate":"pl.info.pvp2_reward_atk7a"},{"score":{"name": "@s","objective": "honor"}},{"translate":"pl.info.pvp2_reward_atk7b"}]
tellraw @s {"translate":"pl.info.pvp2_reward_atk8"}
scoreboard players add @s racefriend4 2
scoreboard players remove @s racefriend1 4

execute if score #system pvp2_last_win matches 4 run scoreboard players add @s racefriend4 2
execute if score #system pvp2_last_win matches 4 run scoreboard players remove @s racefriend1 4
#成就-战役胜利计数
execute if score #system pvp2_last_win matches 4 run function pld:pvp/adv_check

#开启屬性
scoreboard players set @s[scores={race=0,racefriend0=-9..}] raceeffect 1
scoreboard players set @s[scores={race=1,racefriend1=-9..}] raceeffect 1
scoreboard players set @s[scores={race=2,racefriend2=-9..}] raceeffect 1
scoreboard players set @s[scores={race=3,racefriend3=-9..}] raceeffect 1
scoreboard players set @s[scores={race=4,racefriend4=-9..}] raceeffect 1

#重置玩家记分板
function pld:pvp/pvp_scb_reset

spawnpoint @s 205 54 -1771
tp @s 1661 181 186 -135 10

