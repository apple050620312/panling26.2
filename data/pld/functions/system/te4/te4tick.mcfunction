execute as @a[x=-105,y=59,z=63,distance=..1] unless entity @s[scores={ex_murder=1}] run function pld:system/te4/tpin
tellraw @a[x=-105,y=59,z=63,distance=..1,scores={ex_murder=1..}] {"translate": "pl.info.te4.tpinresistance"}
