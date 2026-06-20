#summon一个marker 用来产生震荡波
summon marker ~ ~ ~ {Tags:["zf_earth2"]}
scoreboard players set @e[type=marker,tag=zf_earth2] zf_earth_wave_count 0
scoreboard players operation @e[type=marker,tag=zf_earth2] zf_earth_str = @s zf_str
scoreboard players operation @e[type=marker,tag=zf_earth2] player_uid = @s player_uid


#护盾效果
effect give @p[limit=5,distance=..5] absorption 30 1

scoreboard players set @s zfsuccess 1

