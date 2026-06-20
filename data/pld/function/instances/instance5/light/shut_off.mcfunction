tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.light_break"}
scoreboard players add #system instance5_skillx 1
scoreboard players set @e[tag=instance5_skill] instance5_light 0
#bossbar
bossbar set pl:instance5_light_left visible false
bossbar set pl:instance5_light_right visible false
schedule clear pld:instances/instance5/light/player_check