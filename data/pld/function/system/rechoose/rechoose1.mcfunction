tellraw @s[scores={race=0}] {"translate": "pl.info.rechoose"}
tellraw @s[scores={race=2..}] {"translate": "pl.info.rechoose"}
tp @s[scores={race=1}] 205 55 -1756 0 ~
scoreboard players enable @s[scores={race=1}] rechoose_trigger