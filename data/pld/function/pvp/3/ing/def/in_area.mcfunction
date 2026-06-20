#设置出身点
spawnpoint @s 2370 215 -1801

#重置背包
function pld:pvp/3/ing/def/equipment_reset

#更新守点奖励
scoreboard players set @s pvp3_defense_reward 2

#关闭原有属性
scoreboard players set @s raceeffect -1
effect clear @s
function pld:system/attribute/clear
#系统激活标记
scoreboard players set @s inpvp_area 1

#给予初始分数
scoreboard players set @s pvp_point 4

#开启购买资格
scoreboard players set @s inbuy_area 1

#进入战场
tp @s 2359 113 -1792 180 0