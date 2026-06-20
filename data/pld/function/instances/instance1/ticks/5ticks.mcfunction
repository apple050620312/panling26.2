#bossbar1-棺椁进度
execute store result bossbar pl:instance1_stage value run scoreboard players get #system instance1_stage

#bossbar2-始皇帝血量
execute store result bossbar pl:instance1_boss value run data get entity @e[type=wither_skeleton,limit=1,nbt={CustomName:'{"translate":"pl.monster.instance1.bosswither_skeleton"}'}] Health
