tellraw @s {"translate":"pl.info.shen.hide.reward1"}
tellraw @s {"translate":"pl.info.shen.hide.reward2"}
tellraw @a [{"selector":"@s","color": "yellow"},{"translate":"pl.info.shen.hide.announce_to_all"}]
attribute @s minecraft:max_health modifier add panling:mod_0_0_1_1_0 2 add_value
scoreboard players set @s finish_shen_hide 1
advancement grant @s only pld:truth/truth0

tp @s 119 49 805 0 ~