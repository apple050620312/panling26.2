tellraw @s {"translate":"pl.info.ren.hide.reward1"}
tellraw @s {"translate":"pl.info.ren.hide.reward2"}
tellraw @a [{"selector":"@s","color": "yellow"},{"translate":"pl.info.ren.hide.announce_to_all"}]
attribute @s minecraft:max_health modifier add 0-0-1-1-4 "人族隐藏奖励-生命" 2 add
scoreboard players set @s finish_ren_hide 1
advancement grant @s only pld:truth/truth4

tp @s -121 47 139