#失败信息
tellraw @a {"translate":"pl.info.final_battle.p2_fail"}

#重置p2:
scoreboard players set #system npc_metal 0

#清理npc
kill @e[type=villager,tag=core_npc]
#清理schedule
schedule clear pld:instances/ture_pangu/stage/1/npc/2
schedule clear pld:instances/ture_pangu/stage/1/npc/3
schedule clear pld:instances/ture_pangu/stage/1/npc/4
schedule clear pld:instances/ture_pangu/stage/1/npc/5
schedule clear pld:instances/ture_pangu/stage/1/npc/6
schedule clear pld:instances/ture_pangu/stage/1/npc/7
schedule clear pld:instances/ture_pangu/stage/1/npc/8
schedule clear pld:instances/ture_pangu/stage/1/npc/9
schedule clear pld:instances/ture_pangu/stage/1/npc/10
schedule clear pld:instances/ture_pangu/stage/1/npc/11
schedule clear pld:instances/ture_pangu/stage/1/npc/12
schedule clear pld:instances/ture_pangu/stage/1/npc/13
schedule clear pld:instances/ture_pangu/stage/1/npc/14
schedule clear pld:instances/ture_pangu/stage/1/npc/15
schedule clear pld:instances/ture_pangu/stage/1/npc/16
schedule clear pld:instances/ture_pangu/stage/1/npc/17
schedule clear pld:instances/ture_pangu/stage/1/npc/18
schedule clear pld:instances/ture_pangu/stage/1/npc/19
schedule clear pld:instances/ture_pangu/stage/1/npc/20
schedule clear pld:instances/ture_pangu/stage/1/npc/21
schedule clear pld:instances/ture_pangu/stage/1/npc/22
schedule clear pld:instances/ture_pangu/stage/1/npc/23
schedule clear pld:instances/ture_pangu/stage/1/npc/24
schedule clear pld:instances/ture_pangu/stage/1/npc/25
schedule clear pld:instances/ture_pangu/stage/1/npc/26
schedule clear pld:instances/ture_pangu/stage/1/p2_success
#tp玩家
tp @a[x=-525,y=0,z=-1669,dx=367,dy=255,dz=392] -347 206 -1450