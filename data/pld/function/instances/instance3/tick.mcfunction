#塔内倒计时
execute as @a[scores={instance3_tick=0..,instance3_floor=2..9}] run scoreboard players remove @s instance3_tick 1
execute as @a[scores={instance3_tick=0..,instance3_floor=2..9,instance3_kill=1..}] run function pld:instances/instance3/kill_time_reward
scoreboard players set @a[scores={instance3_tick=0,instance3_floor=5}] instance3_5f 1
tellraw @a[scores={instance3_tick=0,instance3_floor=5}] {"translate": "pl.info.instance3.6f_allow"}
tp @a[scores={instance3_tick=0,instance3_floor=2}] 2717 70 -939
tp @a[scores={instance3_tick=0,instance3_floor=3}] 2770 70 -939
tp @a[scores={instance3_tick=0,instance3_floor=4}] 2770 70 -886
tp @a[scores={instance3_tick=0,instance3_floor=5}] 2770 70 -833
scoreboard players set @a[scores={instance3_tick=0,instance3_floor=6..7}] copper_chest 1
tp @a[scores={instance3_tick=0,instance3_floor=6}] 2717 70 -833
tp @a[scores={instance3_tick=0,instance3_floor=7}] 2664 70 -833
scoreboard players set @a[scores={instance3_tick=0,instance3_floor=8..9}] silver_chest 1
tp @a[scores={instance3_tick=0,instance3_floor=8}] 2664 70 -886
tp @a[scores={instance3_tick=0,instance3_floor=9}] 2664 70 -939
#顶层计时
execute if entity @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] run function pld:instances/instance3/top_tick

