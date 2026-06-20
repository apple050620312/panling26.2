execute as @e[type=creeper,x=1373,y=135,z=436,distance=..3] run function pld:system/tp_and_kill_self


kill @e[type=item,x=1373,y=135,z=436,distance=..3]
setblock 1373 135 436 air
#scoreboard players set @s element_time 7200
#异步
scoreboard players set @s element_time 1800

scoreboard players set @s element_chest 0
scoreboard players set @s element_kill 0
scoreboard players set @s element_move 0
tellraw @s {"translate": "pl.info.laojun_df_begin"}
tp @s 1371 136 436