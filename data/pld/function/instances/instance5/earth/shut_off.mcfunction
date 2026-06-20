tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.earth_break"}
scoreboard players add #system instance5_skillx 1
scoreboard players set @e[tag=instance5_skill] instance5_earth 0
scoreboard players set #system instance5_eartht 0
fill 3132 147 -1837 3149 162 -1818 minecraft:air replace minecraft:lapis_block
fill 3145 161 -1820 3147 164 -1818 minecraft:air
tp @a[x=3132,y=147,z=-1837,dx=18,dy=18,dz=19] 3169 129 -1840 90 ~
bossbar set pl:instance5_earth value 0
bossbar set pl:instance5_earth visible false

