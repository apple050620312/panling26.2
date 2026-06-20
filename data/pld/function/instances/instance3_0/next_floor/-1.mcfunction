execute if entity @a[x=2791,y=30,z=-763,distance=..21] run tellraw @a[x=-200,y=52,z=-185,distance=..6] {"translate":"pl.info.instance3.under_resis"}
execute unless entity @a[x=2791,y=30,z=-763,distance=..21] run function pld:instances/instance3_0/next_floor/-1_success
