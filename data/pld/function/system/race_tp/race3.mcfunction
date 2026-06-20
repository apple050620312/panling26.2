tp @s 3200 19 -340 -20 -20
tellraw @s[scores={race=0..2,racefriend3=..-10}] {"text": "","extra": [{"translate": "pl.raceguard3"},{"translate": "pl.info.race_resisa"}]}
tellraw @s[scores={race=4,racefriend3=..-10}] {"text": "","extra": [{"translate": "pl.raceguard3"},{"translate": "pl.info.race_resisa"}]}
tellraw @s[scores={race=3,racefriend3=..-10}] {"text": "","extra": [{"translate": "pl.raceguard3"},{"translate": "pl.info.race_resisb"}]}
#10s
#scoreboard players set @s[scores={racefriend3=..-10}] racefriend_tick 200
#异步
scoreboard players set @s[scores={racefriend3=..-10}] racefriend_tick 50
tellraw @s[scores={racefriend3=..-10}] {"translate":"pl.info.race_resis0"}
effect give @s[scores={racefriend3=..-10}] slowness 10 5