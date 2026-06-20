tellraw @s {"translate":"pl.info.shen.hide.reward1"}
tellraw @s {"translate":"pl.info.shen.hide.reward2"}
tellraw @a [{"selector":"@s","color": "yellow"},{"translate":"pl.info.shen.hide.announce_to_all"}]
attribute @s minecraft:generic.max_health modifier add 0-0-1-1-0 "神族隐藏奖励-生命" 2 add
scoreboard players set @s finish_shen_hide 1
advancement grant @s only pld:truth/truth0

tp @s 119 49 805 0 ~