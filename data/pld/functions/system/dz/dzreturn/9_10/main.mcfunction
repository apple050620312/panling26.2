tellraw @s[scores={dzsuccess=9}] {"translate":"pl.break_success"}
tellraw @s[scores={dzsuccess=10}] {"translate":"pl.enchat_success"}
playsound minecraft:block.anvil.use block @a[distance=..5] ~ ~ ~
scoreboard players set @s dzsuccess 0

