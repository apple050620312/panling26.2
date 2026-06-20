tag @s add input
#选中被链接方
execute as @a[distance=..8] if score @s[tag=!input] zf_wood_line_id = @p[tag=input] zf_wood_line_id run tag @s add wood_line_target2
#====================

#链接粒子特效
function pld:system/zf/shifang/main/refined/wood/particle/main

#倒计时
scoreboard players remove @s[scores={zf_wood_line_tick=0..}] zf_wood_line_tick 1
scoreboard players remove @p[scores={zf_wood_line_tick=0..},distance=..8,tag=wood_line_target2] zf_wood_line_tick 1

#判断是否觸發回血
execute as @p[tag=wood_line_target2] run function pld:system/zf/shifang/main/refined/wood/5ticks/line_effect
function pld:system/zf/shifang/main/refined/wood/5ticks/line_effect

#判断是否断开
#条件一 附近没有链接对象（拉断/离开游戏）
execute unless entity @p[tag=wood_line_target2] run function pld:system/zf/shifang/main/refined/wood/5ticks/line_break

#条件二 时间到了
execute if score @s zf_wood_line_tick matches ..-1 run function pld:system/zf/shifang/main/refined/wood/5ticks/line_break
#被链接者会在另一个检查中数据归零

#====================
tag @s remove input
tag @a remove wood_line_target2