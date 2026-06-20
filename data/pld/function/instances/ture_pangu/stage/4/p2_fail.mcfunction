#失敗信息
tellraw @a {"translate":"pl.info.final_battle.p2_fail"}

#重置p2:
scoreboard players set #system npc_fire 0

#清理npc
kill @e[type=villager,tag=core_npc]
#清理schedule
function pld:instances/ture_pangu/stage/4/clear_schedule
#tp玩家
tp @a[x=-525,y=0,z=-1669,dx=367,dy=255,dz=392] -347 206 -1450