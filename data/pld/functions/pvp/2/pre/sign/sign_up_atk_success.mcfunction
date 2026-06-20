scoreboard players set @s pvp_team 3
tellraw @s {"translate":"pl.pvp.info.pvp2.atk_sign_success"}
tellraw @a [{"selector":"@s","color":"yellow"},{"translate":"pl.pvp.info.pvp2.atk_sign_toall"}]
tp @s 1661 182 185 -117 10

