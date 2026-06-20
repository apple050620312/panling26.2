#获取对方人数
execute store result score @s pvp_point_get_max run execute if entity @a[team=defence,scores={inpvp_area=1}]

function pld:pvp/kill_reward/all

scoreboard players set @s pvp_kill_r 0

