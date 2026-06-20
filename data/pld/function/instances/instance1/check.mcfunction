#检测副本是否有人
execute if entity @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] run tellraw @a[x=2841,y=28,z=-416,dx=2,dy=5,dz=4,limit=5] {"translate": "pl.info.instance1.resistance"}
execute unless entity @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] run function pld:instances/instance1/tpin
