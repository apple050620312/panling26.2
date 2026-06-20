tp @s 3171 52 939 -90 ~
tellraw @s[scores={race=0..1,racefriend2=..-10}] {"text": "","extra": [{"translate": "pl.raceguard2"},{"translate": "pl.info.race_resisa"}]}
tellraw @s[scores={race=3..4,racefriend2=..-10}] {"text": "","extra": [{"translate": "pl.raceguard2"},{"translate": "pl.info.race_resisa"}]}

tellraw @s[scores={race=2,racefriend2=..-10}] {"text": "","extra": [{"translate": "pl.raceguard2"},{"translate": "pl.info.race_resisb"}]}
#10s
#scoreboard players set @s[scores={racefriend2=..-10}] racefriend_tick 200
#异步
scoreboard players set @s[scores={racefriend2=..-10}] racefriend_tick 50

tellraw @s[scores={racefriend2=..-10}] {"translate":"pl.info.race_resis0"}
effect give @s[scores={racefriend2=..-10}] slowness 10 5