scoreboard players set @s instance5_earth 1
tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.earth"}
bossbar set pl:instance5_earth visible true
bossbar set pl:instance5_earth value 1

setblock 3132 147 -1818 minecraft:lapis_block
setblock 3141 155 -1836 minecraft:lapis_block
setblock 3134 148 -1819 minecraft:lapis_block
setblock 3144 156 -1837 minecraft:lapis_block
setblock 3135 149 -1821 minecraft:lapis_block
setblock 3147 157 -1836 minecraft:lapis_block
setblock 3135 150 -1824 minecraft:lapis_block
setblock 3149 158 -1834 minecraft:lapis_block
setblock 3136 151 -1827 minecraft:lapis_block
setblock 3149 159 -1831 minecraft:lapis_block
setblock 3138 152 -1829 minecraft:lapis_block
setblock 3148 160 -1828 minecraft:lapis_block
setblock 3140 153 -1831 minecraft:lapis_block
setblock 3146 161 -1825 minecraft:lapis_block
setblock 3144 162 -1822 minecraft:lapis_block
setblock 3139 154 -1834 minecraft:lapis_block
clone 3131 106 -1828 3133 109 -1826 3145 161 -1820
function pld:instances/instance5/earth/action