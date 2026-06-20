summon lightning_bolt 3119 129 -1800
summon lightning_bolt 3164 129 -1822
summon lightning_bolt 3147 129 -1835
effect give @a[x=3119,y=129,z=-1800,distance=..1] instant_damage 15 1
effect give @a[x=3164,y=129,z=-1822,distance=..1] instant_damage 15 1
effect give @a[x=3147,y=129,z=-1835,distance=..1] instant_damage 15 1
execute at @r[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] run summon lightning_bolt ~ ~ ~
execute at @r[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] run summon lightning_bolt ~ ~ ~
schedule clear pld:instances/instance5/light/right3
schedule function pld:instances/instance5/light/right3 2.5s
