function pld:instances/instance3_0/floors/-4/skill/double_sword/sword/0/main
function pld:instances/instance3_0/floors/-4/skill/double_sword/sword/1/main

#关闭bossbar
bossbar set pld:instance3_0_ds_loading visible false
#修改bossbar名称
execute if score #system in3_-4f_phase matches 1 run bossbar set pld:instance3_0_ds_loading name {"translate": "pl.bossbar.instance3_0.boss4_ds"}
execute if score #system in3_-4f_phase matches 2 run bossbar set pld:instance3_0_ds_loading name {"translate": "pl.bossbar.instance3_0.boss4_dsl"}

#移除被点名玩家的标记tag
tag @a remove sword_0
tag @a remove sword_1

#音效
execute as @e[tag=in3_skill_tag] at @s run playsound block.polished_deepslate.break ambient @a[x=2791,y=30,z=-763,distance=..21]

#2秒后清除两把剑以及markers
schedule function pld:instances/instance3_0/floors/-4/skill/double_sword/clear 2s

#下次释放技能 
scoreboard players set #system in3_skill_dp_tick 300
