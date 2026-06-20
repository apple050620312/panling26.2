#检测是否具备开本条件
execute if entity @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] run tellraw @a[x=2664,y=70,z=-939,distance=..10] {"translate": "pl.info.instance3.resistance"}
execute unless entity @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] run function pld:instances/instance3/top_floor
