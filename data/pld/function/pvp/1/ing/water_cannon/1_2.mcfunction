#水弹中
fill 1364 104 -1858 1360 104 -1855 air
setblock 1362 104 -1856 minecraft:water
#特效
setblock 1362 103 -1857 minecraft:coal_block destroy
#音效
playsound entity.generic.explode ambient @a[x=1362,y=104,z=-1857,distance=20] 1362 104 -1857 2 0.05
#信息
tellraw @a[x=1280,y=0,z=-1920,dx=230,dy=250,dz=230] {"translate":"pl.info.pvp1_water_cannon_fired"}
#2s后
execute if score #system pvpevent matches 2 run schedule function pld:pvp/1/ing/water_cannon/1_3 40t
