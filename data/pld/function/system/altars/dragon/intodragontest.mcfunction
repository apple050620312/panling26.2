tellraw @s[scores={dragon=1}] {"translate":"pl.info.intodragontest","color":"gray"}
scoreboard players set @s[scores={dragon=0}] feather_mainland -1
scoreboard players set @s[scores={dragon=0}] in_test_check 1
tp @s[scores={dragon=0}] 2087 56 3