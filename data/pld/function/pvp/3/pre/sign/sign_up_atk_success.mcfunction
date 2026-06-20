scoreboard players set @s pvp_team 5
tellraw @s {"translate":"pl.pvp.info.pvp3.atk_sign_success"}
tellraw @a [{"selector":"@s","color":"yellow"},{"translate":"pl.pvp.info.pvp3.atk_sign_toall"}]
tp @s 2748 81 873 180 0

