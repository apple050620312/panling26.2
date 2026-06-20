tellraw @s {"translate":"pl.info.yao.hide.reward1"}
tellraw @s {"translate":"pl.info.yao.hide.reward2"}
tellraw @a [{"selector":"@s","color": "yellow"},{"translate":"pl.info.yao.hide.announce_to_all"}]
attribute @s minecraft:generic.max_health modifier add 0-0-1-1-1 "妖族隐藏奖励-生命" 2 add
scoreboard players set @s finish_yao_hide 1
advancement grant @s only pld:truth/truth1
tp @s 334 34 -715 180 ~