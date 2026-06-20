#战役不在cd，发起战役成功

scoreboard players set #system pvpevent 3
scoreboard players operation #system pvpevent_tick = #system pvpevent_all

scoreboard players set @s pvp_team 3
tellraw @s {"translate":"pl.pvp.info.pvp2.atk_initiate_success"}
tellraw @a [{"selector":"@s","color":"yellow"},{"translate":"pl.pvp.info.pvp2.atk_initiate_toall"}]

title @a title {"translate":"pl.info.title_notice"}
title @a subtitle {"translate":"pl.info.pvp2_subtitle"}
execute as @a at @s run playsound minecraft:pl.event_1 ambient @s

tp @s 1661 182 185 -117 10





