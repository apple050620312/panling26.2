#设置时间
scoreboard players set #system instance3_tick 3000
#伤害
tellraw @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] {"translate": "pl.info.instance3.failed0"}
effect give @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40] instant_damage 1 0
#重开阶段
schedule clear pld:instances/instance3/phase
schedule function pld:instances/instance3/phase 2s