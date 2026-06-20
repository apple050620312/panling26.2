scoreboard players set @s instance5_sky 1
tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.sky"}
clone 3121 102 -1868 3131 114 -1859 3117 137 -1843
bossbar set pl:instance5_sky visible true
bossbar set pl:instance5_sky value 1

function pld:instances/instance5/sky/player_check

