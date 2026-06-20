tellraw @s[scores={race=..1}] {"translate": "pl.info.rechoose"}
tellraw @s[scores={race=3..4}] {"translate": "pl.info.rechoose"}
tp @s[scores={race=2}] 205 55 -1756 0 ~
scoreboard players enable @s[scores={race=2}] rechoose_trigger