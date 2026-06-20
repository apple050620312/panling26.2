#钢铁 但是只要有人不白就团灭
effect give @a[distance=..3,tag=drawn_white] instant_damage 1 3
execute if entity @a[distance=..3,tag=!drawn_white] run kill @a[scores={instance3_floor=-4},x=2834,y=31,z=-849,distance=..21]
