scoreboard players set #system pvp3_last_win 1
tellraw @a {"translate":"pl.info.world_notice1"}
tellraw @a {"translate":"pl.info.pvp3_notice_finish1"}
tellraw @a [{"translate":"pl.info.pvp3_notice_finish2a"},{"selector":"@r[team=attack]","color": "yellow"},{"translate":"pl.info.pvp3_notice_finish2b"}]
tellraw @a {"translate":"pl.info.pvp3_notice_finish3_atk"}
tellraw @a {"translate":"pl.info.pvp3_notice_finish4"}
tellraw @a {"translate":"pl.info.pvp3_notice_finish5_atk1"}
tellraw @a {"translate":"pl.info.pvp3_notice_finish5_atk2"}
tellraw @a {"translate":"pl.info.pvp3_notice_finish6"}
tellraw @a {"translate":"pl.info.world_notice2"}
function pld:pvp/3/end/all
#世界变动
scoreboard players set #system supply_add_yao 1
scoreboard players operation #system supply_tick_yao = #system supply_tick_all 

scoreboard players set #system pvp3_trans_tower 1
scoreboard players operation #system pvp3_trans_tick = #system pvp3_trans_cd


