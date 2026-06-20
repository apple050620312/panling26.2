tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.water_break"}
scoreboard players add #system instance5_skillx 1
scoreboard players set @e[tag=instance5_skill] instance5_water 0
bossbar set pl:instance5_water visible false

fill 3166 168 -1782 3166 169 -1782 minecraft:air
fill 3165 158 -1784 3165 157 -1784 minecraft:air
fill 3133 135 -1877 3134 135 -1877 minecraft:air
fill 3191 150 -1839 3191 151 -1839 minecraft:air
fill 3123 150 -1826 3123 151 -1826 minecraft:air
fill 3064 175 -1821 3064 176 -1821 minecraft:air
fill 3133 135 -1877 3134 135 -1877 minecraft:air
fill 3074 174 -1870 3074 175 -1870 minecraft:air
schedule clear pld:instances/instance5/water/player_check