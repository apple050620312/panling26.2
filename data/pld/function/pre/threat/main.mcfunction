attribute @s follow_range modifier remove b6b20231-94f6-478e-a363-d50b342e1f6c
tag @s add to_threat
execute as @a if score @s player_uid = @e[distance=..1,limit=1,tag=to_threat] uid_to_threat run tag @s add threat_attacker
damage @s 0.00001 minecraft:generic by @p[tag=threat_attacker]


tag @p[tag=threat_attacker] remove threat_attacker
tag @s remove to_threat
scoreboard players reset @s uid_to_threat