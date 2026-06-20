scoreboard players remove #system instance3_bosshp 1
execute if score #system instance3_bosshp matches 9 run tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.bosshurt1"}
execute if score #system instance3_bosshp matches 8 run tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.bosshurt1"}
execute if score #system instance3_bosshp matches 7 run tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.bosshurt1"}
execute if score #system instance3_bosshp matches 6 run tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.bosshurt1"}
execute if score #system instance3_bosshp matches 5 run tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.bosshurt1"}
execute if score #system instance3_bosshp matches 4 run tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.bosshurt2"}
execute if score #system instance3_bosshp matches 3 run tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.bosshurt2"}
execute if score #system instance3_bosshp matches 2 run tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.bosshurt2"}
execute if score #system instance3_bosshp matches 1 run tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.bosshurt2"}
execute if score #system instance3_bosshp matches 0 run tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.bosshurt3"}

clear @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] gray_dye{id:"panling:instance3_0"}
clear @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] cyan_dye{id:"panling:instance3_1"}

schedule clear pld:instances/instance3/phase
execute if score #system instance3_bosshp matches 1.. run schedule function pld:instances/instance3/phase 2s
execute if score #system instance3_bosshp matches 0 run scoreboard players set @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] gold_chest 1
execute if score #system instance3_bosshp matches 0 run scoreboard players set @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] feather_mainland 1
execute if score #system instance3_bosshp matches 0 run tp @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] 2714 27 -887 0 0
