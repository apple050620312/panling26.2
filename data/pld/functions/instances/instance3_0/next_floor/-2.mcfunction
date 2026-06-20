execute if entity @a[x=2834,y=31,z=-763,distance=..21] run tellraw @a[x=2744,y=31,z=-761,distance=..6] {"translate":"pl.info.instance3.under_resis"}
execute unless entity @a[x=2834,y=31,z=-763,distance=..21] run function pld:instances/instance3_0/next_floor/-2_success
