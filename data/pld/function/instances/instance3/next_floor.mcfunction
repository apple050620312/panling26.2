#重置单层时间
scoreboard players set @s instance3_tick 3000
#妖族友好下降提示
#tellraw @s {"translate": "pl.info.instance3.reduce_friend1"}
#友好度降低
#scoreboard players remove @s racefriend1 1
#层数+1
scoreboard players add @s[scores={instance3_floor=2..8}] instance3_floor 1
#
scoreboard players set @s[scores={instance3_floor=2..8}] instance3_kill 0
#tp
tp @s[scores={instance3_floor=3}] 2768 34 -938
tp @s[scores={instance3_floor=4}] 2768 34 -885
tp @s[scores={instance3_floor=5}] 2768 34 -832
tp @s[scores={instance3_floor=6}] 2715 34 -832
tp @s[scores={instance3_floor=7}] 2662 34 -832
tp @s[scores={instance3_floor=8}] 2662 34 -885
tp @s[scores={instance3_floor=9}] 2662 34 -938

