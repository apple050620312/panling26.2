#战役异步tick
execute if score #system pvpevent matches 2 run function pld:pvp/1/ing/5ticks
execute if score #system pvpevent matches 4 run function pld:pvp/2/ing/5ticks
execute if score #system pvpevent matches 6 run function pld:pvp/3/ing/5ticks

execute if score #system pvpevent matches 1 run function pld:pvp/1/pre/prepare_action
execute if score #system pvpevent matches 3 run function pld:pvp/2/pre/prepare_action
execute if score #system pvpevent matches 5 run function pld:pvp/3/pre/prepare_action

execute if score #system pvpevent_tick matches 0.. run scoreboard players remove #system pvpevent_tick 1
execute if score #system pvp1_delay matches 0.. run scoreboard players remove #system pvp1_delay 1
execute if score #system pvp2_delay matches 0.. run scoreboard players remove #system pvp2_delay 1
execute if score #system pvp3_delay matches 0.. run scoreboard players remove #system pvp3_delay 1

#补给变动
execute if score #system supply_tick_yao matches 0.. run scoreboard players remove #system supply_tick_yao 1
execute if score #system supply_tick_yao matches 0 run scoreboard players set #system supply_add_yao 0

execute if score #system supply_tick_ren matches 0.. run scoreboard players remove #system supply_tick_ren 1
execute if score #system supply_tick_ren matches 0 run scoreboard players set #system supply_add_ren 0

execute if score #system supply_tick_shen matches 0.. run scoreboard players remove #system supply_tick_shen 1
execute if score #system supply_tick_shen matches 0 run scoreboard players set #system supply_add_shen 0

execute if score #system supply_tick_zhan matches 0.. run scoreboard players remove #system supply_tick_zhan 1
execute if score #system supply_tick_zhan matches 0 run scoreboard players set #system supply_add_zhan 0

execute if score #system supply_tick_xian matches 0.. run scoreboard players remove #system supply_tick_xian 1
execute if score #system supply_tick_xian matches 0 run scoreboard players set #system supply_add_xian 0

execute if score #system pvp3_trans_tick matches 0.. run scoreboard players remove #system pvp3_trans_tick 1
execute if score #system pvp3_trans_tick matches 0 run scoreboard players set #system pvp3_trans_tower 0
execute if score #system pvp3_trans_tick matches 0 run tellraw @a[scores={feather_mainland=1}] {"translate":"pl.info.pvp3_notice_tower_fix_finish"}


#清理战役道具
kill @e[type=item,nbt={Item:{tag:{button:1}}}]
kill @e[type=item,nbt={Item:{tag:{pvp:1}}}]

execute unless score #system pvpevent matches 1 unless score #system pvpevent matches 2 run function pld:pvp/1/clear_sign
execute unless score #system pvpevent matches 2 run function pld:pvp/1/clear_players

execute unless score #system pvpevent matches 3 unless score #system pvpevent matches 4 run function pld:pvp/2/clear_sign
execute unless score #system pvpevent matches 4 run function pld:pvp/2/clear_players

execute unless score #system pvpevent matches 5 unless score #system pvpevent matches 6 run function pld:pvp/3/clear_sign
execute unless score #system pvpevent matches 6 run function pld:pvp/3/clear_players

