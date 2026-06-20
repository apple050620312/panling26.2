execute if entity @e[x=-103,y=56,z=58,dx=9,dy=6,dz=6,type=wither_skeleton] as @p[x=-103,y=56,z=58,dx=9,dy=6,dz=6] run tellraw @s {"translate": "pl.info.te4.outresistance"}
execute unless entity @e[x=-103,y=56,z=58,dx=9,dy=6,dz=6,type=wither_skeleton] as @p[x=-103,y=56,z=58,dx=9,dy=6,dz=6] run function pld:system/te4/outsuccess
