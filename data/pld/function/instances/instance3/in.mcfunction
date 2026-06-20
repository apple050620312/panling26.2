tp @a[level=10..,x=-202,y=65,z=-180,distance=..6] -200 52 -185 180 0
tellraw @a[scores={race=1},level=..9,x=-202,y=65,z=-180,distance=..6] {"translate": "pl.info.instance3.yao_resistance"}
tellraw @a[scores={race=0},level=..9,x=-202,y=65,z=-180,distance=..6] {"translate": "pl.info.instance3.in_resistance"}
tellraw @a[scores={race=2..4},level=..9,x=-202,y=65,z=-180,distance=..6] {"translate": "pl.info.instance3.in_resistance"}
