tp @s 3167 145 106 -90 ~
tellraw @s[scores={race=1..,racefriend0=..-10}] {"text": "","extra": [{"translate": "pl.raceguard0"},{"translate": "pl.info.race_resisa"}]}
tellraw @s[scores={race=0,racefriend0=..-10}] {"text": "","extra": [{"translate": "pl.raceguard0"},{"translate": "pl.info.race_resisb"}]}
#10s
#scoreboard players set @s[scores={racefriend0=..-10}] racefriend_tick 200
#异步
scoreboard players set @s[scores={racefriend0=..-10}] racefriend_tick 50
tellraw @s[scores={racefriend0=..-10}] {"translate":"pl.info.race_resis0"}
effect give @s[scores={racefriend0=..-10}] slowness 10 5