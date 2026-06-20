execute as @e[x=-103,y=56,z=58,dx=9,dy=6,dz=6,type=wither_skeleton] run function pld:system/tp_and_kill_self

tp @s -102 58 62 -106 0
tellraw @s {"translate": "pl.info.te4.tpin"}
schedule function pld:system/te4/summon_murder 1s