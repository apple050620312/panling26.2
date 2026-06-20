#水弹中
fill 1402 104 -1815 1407 104 -1821 air
setblock 1403 104 -1819 minecraft:water
#特效
setblock 1403 103 -1819 minecraft:coal_block destroy
#音效
playsound entity.generic.explode ambient @a[x=1403,y=104,z=-1819,distance=20] 1403 104 -1819 2 0.05
#信息
tellraw @a[x=1280,y=0,z=-1920,dx=230,dy=250,dz=230] {"translate":"pl.info.pvp1_water_cannon_fired"}


#2s
execute if score #system pvpevent matches 2 run schedule function pld:pvp/1/ing/water_cannon/2_3 40t
