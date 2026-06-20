#关闭修复
setblock 1404 104 -1826 gold_block
#修复
clone 1399 76 -1822 1409 76 -1814 1399 104 -1822
#启用对应的水炮弹
setblock 1453 104 -1819 minecraft:redstone_wall_torch[lit=false,facing=east]
#info
tellraw @a[x=1280,y=0,z=-1920,dx=230,dy=250,dz=230] {"translate":"pl.info.pvp1_rail_fixed"}