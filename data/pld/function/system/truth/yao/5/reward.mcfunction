tellraw @s {"translate":"pl.info.yao.hide.reward1"}
tellraw @s {"translate":"pl.info.yao.hide.reward2"}
tellraw @a [{"selector":"@s","color": "yellow"},{"translate":"pl.info.yao.hide.announce_to_all"}]
attribute @s minecraft:max_health modifier add panling:mod_0_0_1_1_1 2 add_value
scoreboard players set @s finish_yao_hide 1
advancement grant @s only pld:truth/truth1
tp @s 334 34 -715 180 ~