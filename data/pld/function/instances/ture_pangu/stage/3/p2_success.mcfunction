#信息
tellraw @a {"translate":"pl.info.zf_phase2_finish.water"}
#玻璃方块 信标改色
setblock -381 107 -1479 blue_stained_glass
#删除护送村民
kill @e[type=villager,tag=core_npc]
#bossbar关闭
bossbar set pl:final_battle_npc_water visible false

#tpback前不能再次开启护送
scoreboard players set #final_npc_finish int 1
#延迟tp
schedule function pld:instances/ture_pangu/stage/3/tp_back 5s
