#冷却
scoreboard players remove @a[scores={back_stone_tick=0..}] back_stone_tick 1

#中断传送
execute as @a[scores={back_stone_tick=0,moving=0,moving2=0,moving3=0}] run function pld:instances/ture_pangu/back_stone/back_allow
execute as @a[scores={back_stone_tick=0..,moving=1..}] run function pld:instances/ture_pangu/back_stone/back_resis
execute as @a[scores={back_stone_tick=0..,moving2=1..}] run function pld:instances/ture_pangu/back_stone/back_resis
execute as @a[scores={back_stone_tick=0..,moving3=1..}] run function pld:instances/ture_pangu/back_stone/back_resis

