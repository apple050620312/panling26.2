scoreboard players set @a pvp_team 0
scoreboard players operation #system pvp3_delay = #system pvp_delay_all
scoreboard players set #system pvpevent 0
scoreboard players set #system supply_add_yao 1
scoreboard players operation #system supply_tick_yao = #system supply_tick_all 

scoreboard players set #system pvp3_trans_tower 1
scoreboard players operation #system pvp3_trans_tick = #system pvp3_trans_cd


tellraw @a {"translate":"pl.info.world_notice1"}

tellraw @a {"translate":"pl.info.pvp3_notice_def_not_enough1"}
tellraw @a {"translate":"pl.info.pvp3_notice_def_not_enough2"}
tellraw @a {"translate":"pl.info.pvp3_notice_def_not_enough3"}
tellraw @a {"translate":"pl.info.pvp3_notice_def_not_enough4"}

tellraw @a {"translate":"pl.info.world_notice2"}