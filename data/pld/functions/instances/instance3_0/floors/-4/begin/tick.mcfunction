execute if score #system in3_-4f_begint matches 80 run tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss4_begin1"}

execute if score #system in3_-4f_begint matches 40 run tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss4_begin2"}

execute if score #system in3_-4f_begint matches 0 run function pld:instances/instance3_0/floors/-4/begin/0

