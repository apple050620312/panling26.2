#战役不在cd，发起战役成功

scoreboard players set #system pvpevent 1
scoreboard players operation #system pvpevent_tick = #system pvpevent_all
scoreboard players set @s pvp_team 1
tellraw @s {"translate":"pl.pvp.info.pvp1.atk_initiate_success"}
tellraw @a [{"selector":"@s","color":"yellow"},{"translate":"pl.pvp.info.pvp1.atk_initiate_toall"}]

title @a title {"translate":"pl.info.title_notice"}
title @a subtitle {"translate":"pl.info.pvp1_subtitle"}
execute as @a at @s run playsound minecraft:pl.event_1 ambient @s

tp @s 3266 21 -138 -90 0





