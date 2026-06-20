#镇妖塔地下层bossbar
bossbar set pld:instance3_0_floor1 players @a[x=2791,y=30,z=-763,distance=..21]
bossbar set pld:instance3_0_boss1hp players @a[x=2791,y=30,z=-763,distance=..21]

bossbar set pld:instance3_0_floor2 players @a[x=2834,y=30,z=-763,distance=..21]
bossbar set pld:instance3_0_boss2hp players @a[x=2834,y=30,z=-763,distance=..21]

bossbar set pld:instance3_0_floor3 players @a[x=2834,y=30,z=-806,distance=..21]
bossbar set pld:instance3_0_boss3hp players @a[x=2834,y=30,z=-806,distance=..21]

bossbar set pld:instance3_0_add1hp players @a[x=2834,y=30,z=-849,distance=..21]
bossbar set pld:instance3_0_add2hp players @a[x=2834,y=30,z=-849,distance=..21]
bossbar set pld:instance3_0_add3hp players @a[x=2834,y=30,z=-849,distance=..21]
bossbar set pld:instance3_0_boss4hp players @a[x=2834,y=30,z=-849,distance=..21]

bossbar set pld:instance3_0_dp_loading players @a[x=2834,y=30,z=-849,distance=..21]

bossbar set pld:instance3_0_ds_loading players @a[x=2834,y=30,z=-849,distance=..21]
bossbar set pld:instance3_0_ep_loading players @a[x=2834,y=30,z=-849,distance=..21]

#execute if score #system in3_-4f_phase matches 2 run function pld:instances/instance3_0/floors/-4/skill/draw_color/main