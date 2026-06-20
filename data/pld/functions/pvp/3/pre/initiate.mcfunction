#战役不在cd，发起战役成功

scoreboard players set #system pvpevent 5
scoreboard players operation #system pvpevent_tick = #system pvpevent_all
scoreboard players set @s pvp_team 5
tellraw @s {"translate":"pl.pvp.info.pvp3.atk_initiate_success"}
tellraw @a [{"selector":"@s","color":"yellow"},{"translate":"pl.pvp.info.pvp3.atk_initiate_toall"}]

title @a title {"translate":"pl.info.title_notice"}
title @a subtitle {"translate":"pl.info.pvp3_subtitle"}
execute as @a at @s run playsound minecraft:pl.event_1 ambient @s

tp @s 2748 81 873 180 0





