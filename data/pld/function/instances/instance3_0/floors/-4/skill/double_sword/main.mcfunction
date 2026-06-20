#召唤 黑 白 两把剑，悬挂在被点名玩家的上方 时间结束时斩落
#阳剑
#点名最近的玩家
tag @p[x=2834,y=31,z=-849,distance=..21,scores={instance3_floor=-4}] add sword_1
#初始化
function pld:instances/instance3_0/floors/-4/skill/double_sword/sword/1/init

#阴剑
#点名玩家，最远的炼丹师/弓箭手玩家
tag @p[x=2834,y=31,z=-849,distance=..21,sort=furthest,limit=1,scores={instance3_floor=-4,job=1..2},tag=!sword_1] add sword_0
execute unless entity @p[x=2834,y=31,z=-849,distance=..21,tag=sword_0] run tag @p[x=2834,y=31,z=-849,distance=..21,sort=furthest,limit=1,scores={instance3_floor=-4},tag=!sword_1] add sword_0
#初始化
function pld:instances/instance3_0/floors/-4/skill/double_sword/sword/0/init

#倒计时重置,开始结算读条
scoreboard players set #system in3_skill_ds2_load 0

#修改bossbar名称
execute if score #system in3_-4f_phase matches 1 run bossbar set pld:instance3_0_ds_loading name {"translate": "pl.bossbar.instance3_0.boss4_ds2"}
execute if score #system in3_-4f_phase matches 2 run bossbar set pld:instance3_0_ds_loading name {"translate": "pl.bossbar.instance3_0.boss4_dsl2"}

#提示
tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss4_tip4"}

#noai解除
data merge entity @e[x=2834,y=31,z=-849,distance=..21,tag=in30_boss4,limit=1] {NoAI:0b}

#bossbar提示无敌解除
bossbar set pld:instance3_0_boss4hp color red