tellraw @s {"translate":"pl.info.zhan.hide.reward1"}
tellraw @s {"translate":"pl.info.zhan.hide.reward2"}
tellraw @a [{"selector":"@s","color": "yellow"},{"translate":"pl.info.zhan.hide.announce_to_all"}]
attribute @s minecraft:max_health modifier add 0-0-1-1-3 "战神族隐藏奖励-生命" 2 add
scoreboard players set @s finish_zhan_hide 1
advancement grant @s only pld:truth/truth3
tp @s -678 140 357 180 0