clear @s white_dye[custom_data={id:"panling:pvp2_sp_item3"}]
execute as @s[team=attack] run effect give @a[team=attack,x=1824,y=0,z=-1888,dx=95,dy=250,dz=159] regeneration 10 2
execute as @s[team=attack] run tellraw @a[x=1824,y=0,z=-1888,dx=95,dy=250,dz=159] {"translate":"pl.info.pvp2.atk_use_item3"}
execute as @s[team=defence] run effect give @a[team=defence,x=1824,y=0,z=-1888,dx=95,dy=250,dz=159] regeneration 10 2
execute as @s[team=defence] run tellraw @a[x=1824,y=0,z=-1888,dx=95,dy=250,dz=159] {"translate":"pl.info.pvp2.def_use_item3"}
scoreboard players set #system pvp2_spitem_tick 3600