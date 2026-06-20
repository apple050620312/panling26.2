tp @s 2851 53 830 90 ~
tellraw @s[scores={race=0,racefriend1=..-10}] {"text": "","extra": [{"translate": "pl.raceguard1"},{"translate": "pl.info.race_resisa"}]}
tellraw @s[scores={race=2..,racefriend1=..-10}] {"text": "","extra": [{"translate": "pl.raceguard1"},{"translate": "pl.info.race_resisa"}]}
tellraw @s[scores={race=1,racefriend1=..-10}] {"text": "","extra": [{"translate": "pl.raceguard1"},{"translate": "pl.info.race_resisb"}]}
#10s
#scoreboard players set @s[scores={racefriend1=..-10}] racefriend_tick 200
#异步
scoreboard players set @s[scores={racefriend1=..-10}] racefriend_tick 50

tellraw @s[scores={racefriend1=..-10}] {"translate":"pl.info.race_resis0"}
effect give @s[scores={racefriend1=..-10}] slowness 10 5