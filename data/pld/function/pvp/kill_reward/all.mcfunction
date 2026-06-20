#已经击杀人数+1
scoreboard players add @s pvp_point_get 1
#检查已经击杀的人数
execute if score @s pvp_point_get_max >= @s pvp_point_get run scoreboard players add @s pvp_point 2

scoreboard players set @s inbuy_area 0

