execute as @e[x=-29,y=21,z=-609,dx=11,dy=6,dz=11,type=zombie] run function pld:system/tp_and_kill_self

execute at @s run tp @s ~ ~-20 ~
playsound random.door_close ambient @s -26.5 22 -607
playsound entity.wither.ambient ambient @s -26 42 -607
tellraw @s {"translate": "pl.info.te2.tpin"}
schedule function pld:system/te2/summon_doctor 1s