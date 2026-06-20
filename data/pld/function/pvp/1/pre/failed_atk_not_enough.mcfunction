scoreboard players set @a pvp_team 0
scoreboard players operation #system pvp1_delay = #system pvp_delay_all
scoreboard players set #system pvpevent 0
scoreboard players set #system supply_add_shen 1
scoreboard players operation #system supply_tick_shen = #system supply_tick_all

tellraw @a {"translate":"pl.info.world_notice1"}

tellraw @a {"translate":"pl.info.pvp1_notice_atk_not_enough1"}
tellraw @a {"translate":"pl.info.pvp1_notice_atk_not_enough2"}
tellraw @a {"translate":"pl.info.pvp1_notice_atk_not_enough3"}

tellraw @a {"translate":"pl.info.world_notice2"}

