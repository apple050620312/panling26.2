#execute if score #system pvpevent_tick matches 17980 run tellraw @a {"translate":"pl.info.world_notice1"}
#execute if score #system pvpevent_tick matches 17960 run tellraw @a {"translate":"pl.info.pvp2_notice1"}
#execute if score #system pvpevent_tick matches 17960 run tellraw @a {"translate":"pl.info.pvp2_notice2"}
#execute if score #system pvpevent_tick matches 17960 run tellraw @a {"translate":"pl.info.pvp2_notice3"}
#execute if score #system pvpevent_tick matches 17950 run tellraw @a {"translate":"pl.info.pvp2_notice4"}
#execute if score #system pvpevent_tick matches 17950 run tellraw @a {"translate":"pl.info.pvp2_notice5"}
#execute if score #system pvpevent_tick matches 17950 run tellraw @a {"translate":"pl.info.pvp2_notice6"}
#execute if score #system pvpevent_tick matches 17950 run tellraw @a {"translate":"pl.info.world_notice2"}
#
#execute if score #system pvpevent_tick matches 12000 run title @a title {"translate":"pl.info.title_pvp2_10min"}
#execute if score #system pvpevent_tick matches 12000 run title @a subtitle {"translate":"pl.info.subtitle_pvp2_10min"}
#
#
#execute if score #system pvpevent_tick matches 6000 run title @a title {"translate":"pl.info.title_pvp2_5min"}
#execute if score #system pvpevent_tick matches 6000 run title @a subtitle {"translate":"pl.info.subtitle_pvp2_5min"}

#异步

execute if score #system pvpevent_tick matches 4495 run tellraw @a {"translate":"pl.info.world_notice1"}
execute if score #system pvpevent_tick matches 4490 run tellraw @a {"translate":"pl.info.pvp2_notice1"}
execute if score #system pvpevent_tick matches 4490 run tellraw @a {"translate":"pl.info.pvp2_notice2"}
execute if score #system pvpevent_tick matches 4490 run tellraw @a {"translate":"pl.info.pvp2_notice3"}
execute if score #system pvpevent_tick matches 4488 run tellraw @a {"translate":"pl.info.pvp2_notice4"}
execute if score #system pvpevent_tick matches 4488 run tellraw @a {"translate":"pl.info.pvp2_notice5"}
execute if score #system pvpevent_tick matches 4488 run tellraw @a {"translate":"pl.info.pvp2_notice6"}
execute if score #system pvpevent_tick matches 4488 run tellraw @a {"translate":"pl.info.world_notice2"}

execute if score #system pvpevent_tick matches 3000 run title @a title {"translate":"pl.info.title_pvp2_10min"}
execute if score #system pvpevent_tick matches 3000 run title @a subtitle {"translate":"pl.info.subtitle_pvp2_10min"}


execute if score #system pvpevent_tick matches 1500 run title @a title {"translate":"pl.info.title_pvp2_5min"}
execute if score #system pvpevent_tick matches 1500 run title @a subtitle {"translate":"pl.info.subtitle_pvp2_5min"}

execute if score #system pvpevent_tick matches 0 run function pld:pvp/2/pre/start_check

