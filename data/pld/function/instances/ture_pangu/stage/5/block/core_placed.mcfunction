#提示-阵法核心已放置，可以开始搭建基础阵法
tellraw @a {"translate":"pl.info.zf_phase1.core_placed"}
#亮起bossbar
bossbar set pl:final_battle_base_earth visible true


advancement revoke @s only pld:system/final_battle/place_core_earth