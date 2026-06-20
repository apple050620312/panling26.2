tellraw @s {"translate":"pl.info.xian.hide.reward1"}
tellraw @s {"translate":"pl.info.xian.hide.reward2"}
tellraw @a [{"selector":"@s","color": "yellow"},{"translate":"pl.info.xian.hide.announce_to_all"}]
attribute @s minecraft:max_health modifier add 0-0-1-1-2 "仙族隐藏奖励-生命" 2 add
scoreboard players set @s finish_xian_hide 1
advancement grant @s only pld:truth/truth2
tp @s -316 116 -425 -90 ~