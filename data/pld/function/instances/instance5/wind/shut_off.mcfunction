tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.wind_break"}
scoreboard players add #system instance5_skillx 1
scoreboard players set @e[tag=instance5_skill] instance5_wind 0
bossbar set pl:instance5_wind visible false

fill 3153 131 -1830 3155 132 -1828 minecraft:air
clone 3096 110 -1837 3099 112 -1834 3068 174 -1816
fill 3123 153 -1820 3130 158 -1818 minecraft:air
fill 3142 201 -1841 3144 202 -1839 minecraft:air
fill 3115 138 -1867 3117 140 -1866 minecraft:air
fill 3158 187 -1847 3159 189 -1845 minecraft:air
fill 3076 131 -1866 3078 135 -1864 minecraft:air
fill 3158 187 -1835 3159 189 -1833 minecraft:air
fill 3153 131 -1828 3155 131 -1830 minecraft:air
schedule clear pld:instances/instance5/wind/action
scoreboard players set #system instance5_windt 0 

