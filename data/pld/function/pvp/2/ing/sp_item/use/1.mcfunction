clear @s snowball{id:"panling:pvp2_sp_item1"}
execute as @s[team=attack] run effect give @a[team=defence,x=1824,y=0,z=-1888,dx=95,dy=250,dz=159] slowness 15 1
execute as @s[team=attack] run tellraw @a[x=1824,y=0,z=-1888,dx=95,dy=250,dz=159] {"translate":"pl.info.pvp2.atk_use_item1"}
execute as @s[team=defence] run effect give @a[team=attack,x=1824,y=0,z=-1888,dx=95,dy=250,dz=159] slowness 15 1
execute as @s[team=defence] run tellraw @a[x=1824,y=0,z=-1888,dx=95,dy=250,dz=159] {"translate":"pl.info.pvp2.def_use_item1"}
scoreboard players set #system pvp2_spitem_tick 3600