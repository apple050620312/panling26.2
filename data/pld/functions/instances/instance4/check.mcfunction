#检测是否具备开本条件
execute if entity @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] run tellraw @a[x=940,y=159,z=1316,distance=..10] {"translate": "pl.info.instance4.resistance"}
execute unless entity @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] run function pld:instances/instance4/begin
