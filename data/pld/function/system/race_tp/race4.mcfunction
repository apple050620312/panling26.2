tp @s 1595 140 123 -90 ~
tellraw @s[scores={race=..3,racefriend4=..-10}] {"text": "","extra": [{"translate": "pl.raceguard4"},{"translate": "pl.info.race_resisa"}]}
tellraw @s[scores={race=4,racefriend4=..-10}] {"text": "","extra": [{"translate": "pl.raceguard4"},{"translate": "pl.info.race_resisb"}]}
#10s
#scoreboard players set @s[scores={racefriend4=..-10}] racefriend_tick 200
#异步
scoreboard players set @s[scores={racefriend4=..-10}] racefriend_tick 50

tellraw @s[scores={racefriend4=..-10}] {"translate":"pl.info.race_resis0"}
effect give @s[scores={racefriend4=..-10}] slowness 10 5