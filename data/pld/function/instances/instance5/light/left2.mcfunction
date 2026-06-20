summon lightning_bolt 3165 129 -1848
summon lightning_bolt 3130 129 -1862
summon lightning_bolt 3147 129 -1835
effect give @a[x=3165,y=129,z=-1848,distance=..1] instant_damage 15 1
effect give @a[x=3130,y=129,z=-1862,distance=..1] instant_damage 15 1
effect give @a[x=3147,y=129,z=-1835,distance=..1] instant_damage 15 1
execute at @r[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] run summon lightning_bolt ~ ~ ~
execute at @r[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] run summon lightning_bolt ~ ~ ~
schedule clear pld:instances/instance5/light/left3
schedule function pld:instances/instance5/light/left3 2.5s
