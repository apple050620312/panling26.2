scoreboard players remove #system instance5_bosshp 1
execute if score #system instance5_bosshp matches 1.. run tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.core_break"}
scoreboard players set #system instance5_skillx 0
execute as @e[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,type=!player,type=!armor_stand] run function pld:system/tp_and_kill_self

#清除玩家身上的道具
clear @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] slime_ball[custom_data={id:"panling:instance5_dirt"}]
clear @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] snowball[custom_data={id:"panling:instance5_snowball"}]
#传送玩家
tp @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3175 133 -1839
execute if score #system instance5_bosshp matches 0 run function pld:instances/instance5/end_check
execute if score #system instance5_bosshp matches 1.. run schedule function pld:instances/instance5/phase1 4s
