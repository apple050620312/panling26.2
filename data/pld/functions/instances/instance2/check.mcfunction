#检测副本是否有人
execute if entity @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] run tellraw @a[x=1146,y=22,z=919,dx=8,dy=10,dz=5] {"translate": "pl.info.instance2.resistance"}
execute unless entity @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] run function pld:instances/instance2/tpin
    