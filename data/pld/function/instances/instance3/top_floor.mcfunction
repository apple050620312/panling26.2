#重置副本
#清场
execute as @e[x=2695,y=68,z=-905,dx=40,dy=10,dz=40,tag=panling] run function pld:system/tp_and_kill_self
#清理箱子内容
data merge block 2715 67 -895 {Items:}
data merge block 2715 67 -875 {Items:}
#时间
scoreboard players set #system instance3_tick 3000
#boss血量
scoreboard players set #system instance3_bosshp 10
#tp玩家
tp @a[x=2664,y=70,z=-939,distance=..10,limit=5] 2715 69 -885
scoreboard players set @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] instance3_floor 10

clear @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] gray_dye[custom_data={id:"panling:instance3_0"}]
clear @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] cyan_dye[custom_data={id:"panling:instance3_1"}]

#好感度移除
#tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.top_friend"}
#scoreboard players remove @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] racefriend1 4
#scoreboard players remove @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] racefriend3 4
tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.bossbegin"}
#激活副本
schedule clear pld:instances/instance3/phase
schedule function pld:instances/instance3/phase 2s

