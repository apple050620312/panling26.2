execute as @p[x=1362,y=130,z=430,dx=24,dy=14,dz=12] run function pld:system/zftest/zftesttick
execute unless entity @p[x=1362,y=130,z=430,dx=24,dy=14,dz=12] as @p[x=1371,y=105,z=436,distance=..1] run function pld:system/zftest/intozftest
execute if entity @p[x=1362,y=130,z=430,dx=24,dy=14,dz=12] run tellraw @p[x=1371,y=104,z=436,distance=..5,tag=!testinfo] {"translate": "pl.info.laojun_df_playerintest"}
execute if entity @p[x=1362,y=130,z=430,dx=24,dy=14,dz=12] run tag @p[x=1371,y=104,z=436,distance=..5,tag=!testinfo] add testinfo
