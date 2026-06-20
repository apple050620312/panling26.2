scoreboard players set #system pvp1_last_win 4
tellraw @a {"translate":"pl.info.world_notice1"}
tellraw @a {"translate":"pl.info.pvp1_notice_finish1"}
tellraw @a [{"translate":"pl.info.pvp1_notice_finish2a"},{"selector":"@r[team=defence]","color": "yellow"},{"translate":"pl.info.pvp1_notice_finish2b"}]
tellraw @a {"translate":"pl.info.pvp1_notice_finish3_def"}
tellraw @a {"translate":"pl.info.pvp1_notice_finish4"}
tellraw @a {"translate":"pl.info.pvp1_notice_finish5_def"}
tellraw @a {"translate":"pl.info.pvp1_notice_finish6"}
tellraw @a {"translate":"pl.info.world_notice2"}
function pld:pvp/1/end/all

#世界补给变动
scoreboard players set #system supply_add_shen 1
scoreboard players operation #system supply_tick_shen = #system supply_tick_all


