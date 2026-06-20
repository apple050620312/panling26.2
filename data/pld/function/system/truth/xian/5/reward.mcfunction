tellraw @s {"translate":"pl.info.xian.hide.reward1"}
tellraw @s {"translate":"pl.info.xian.hide.reward2"}
tellraw @a [{"selector":"@s","color": "yellow"},{"translate":"pl.info.xian.hide.announce_to_all"}]
attribute @s minecraft:max_health modifier add panling:mod_0_0_1_1_2 2 add_value
scoreboard players set @s finish_xian_hide 1
advancement grant @s only pld:truth/truth2
tp @s -316 116 -425 -90 ~