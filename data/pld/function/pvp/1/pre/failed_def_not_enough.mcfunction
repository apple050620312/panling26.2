scoreboard players set @a pvp_team 0
scoreboard players operation #system pvp1_delay = #system pvp_delay_all
scoreboard players set #system pvpevent 0
scoreboard players set #system supply_add_zhan 1
scoreboard players operation #system supply_tick_zhan = #system supply_tick_all

tellraw @a {"translate":"pl.info.world_notice1"}

tellraw @a {"translate":"pl.info.pvp1_notice_def_not_enough1"}
tellraw @a {"translate":"pl.info.pvp1_notice_def_not_enough2"}
tellraw @a {"translate":"pl.info.pvp1_notice_def_not_enough3"}

tellraw @a {"translate":"pl.info.world_notice2"}