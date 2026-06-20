tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.sky_break"}
scoreboard players add #system instance5_skillx 1
scoreboard players set @e[tag=instance5_skill] instance5_sky 0
fill 3117 137 -1843 3127 149 -1834 air
scoreboard players set #system instance5_skyt 0

bossbar set pl:instance5_sky value 0
bossbar set pl:instance5_sky visible false


schedule clear pld:instances/instance5/sky/player_check