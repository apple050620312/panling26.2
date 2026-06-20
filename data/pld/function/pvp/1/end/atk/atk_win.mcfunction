scoreboard players set #system pvp1_last_win 3
tellraw @a {"translate":"pl.info.world_notice1"}
tellraw @a {"translate":"pl.info.pvp1_notice_finish1"}
tellraw @a [{"translate":"pl.info.pvp1_notice_finish2a"},{"selector":"@r[team=attack]","color": "yellow"},{"translate":"pl.info.pvp1_notice_finish2b"}]
tellraw @a {"translate":"pl.info.pvp1_notice_finish3_atk"}
tellraw @a {"translate":"pl.info.pvp1_notice_finish4"}
tellraw @a {"translate":"pl.info.pvp1_notice_finish5_atk"}
tellraw @a {"translate":"pl.info.pvp1_notice_finish6"}
tellraw @a {"translate":"pl.info.world_notice2"}
function pld:pvp/1/end/all
#世界变动
scoreboard players set #system supply_add_zhan 1
scoreboard players operation #system supply_tick_zhan = #system supply_tick_all


