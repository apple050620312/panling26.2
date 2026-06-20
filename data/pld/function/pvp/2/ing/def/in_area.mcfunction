#设置出身点
spawnpoint @s 1870 55 -1832

#重置背包
function pld:pvp/2/ing/def/equipment_reset

#关闭原有屬性
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
tp @s 1872 113 -1870 0 0