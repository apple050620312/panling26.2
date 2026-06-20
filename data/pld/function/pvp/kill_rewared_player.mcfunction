#击杀悬赏奖励


#获取对方人数
execute if entity @s[team=attack] store result score @s pvp_point_get_max run execute if entity @a[team=defence]
execute if entity @s[team=defence] store result score @s pvp_point_get_max run execute if entity @a[team=attack]



scoreboard players add @s pvp_point 2
tellraw @s {"translate":"pl.info.kill_rewarded_player"}

advancement revoke @s only pld:system/pvp/kill_rewarded_player