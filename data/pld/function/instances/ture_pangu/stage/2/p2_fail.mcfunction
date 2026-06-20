#失敗信息
tellraw @a {"translate":"pl.info.final_battle.p2_fail"}

#重置p2:

scoreboard players set #system npc_wood 0
#清理npc
kill @e[type=villager,tag=core_npc]
#清理schedule
schedule clear pld:instances/ture_pangu/stage/2/npc/2
schedule clear pld:instances/ture_pangu/stage/2/npc/3
schedule clear pld:instances/ture_pangu/stage/2/npc/4
schedule clear pld:instances/ture_pangu/stage/2/npc/5
schedule clear pld:instances/ture_pangu/stage/2/npc/6
schedule clear pld:instances/ture_pangu/stage/2/npc/7
schedule clear pld:instances/ture_pangu/stage/2/npc/8
schedule clear pld:instances/ture_pangu/stage/2/npc/9
schedule clear pld:instances/ture_pangu/stage/2/npc/10
schedule clear pld:instances/ture_pangu/stage/2/npc/11
schedule clear pld:instances/ture_pangu/stage/2/npc/12
schedule clear pld:instances/ture_pangu/stage/2/npc/13
schedule clear pld:instances/ture_pangu/stage/2/npc/14
schedule clear pld:instances/ture_pangu/stage/2/npc/15
schedule clear pld:instances/ture_pangu/stage/2/npc/16
schedule clear pld:instances/ture_pangu/stage/2/npc/17
schedule clear pld:instances/ture_pangu/stage/2/npc/18
schedule clear pld:instances/ture_pangu/stage/2/npc/19
schedule clear pld:instances/ture_pangu/stage/2/npc/20
schedule clear pld:instances/ture_pangu/stage/2/npc/21
schedule clear pld:instances/ture_pangu/stage/2/npc/22
schedule clear pld:instances/ture_pangu/stage/2/npc/23
schedule clear pld:instances/ture_pangu/stage/2/npc/24
schedule clear pld:instances/ture_pangu/stage/2/npc/25
schedule clear pld:instances/ture_pangu/stage/2/npc/26
schedule clear pld:instances/ture_pangu/stage/2/npc/27
schedule clear pld:instances/ture_pangu/stage/2/npc/28
schedule clear pld:instances/ture_pangu/stage/2/npc/29
schedule clear pld:instances/ture_pangu/stage/2/npc/30
schedule clear pld:instances/ture_pangu/stage/2/npc/31
schedule clear pld:instances/ture_pangu/stage/2/npc/32
schedule clear pld:instances/ture_pangu/stage/2/npc/33
schedule clear pld:instances/ture_pangu/stage/2/npc/34
schedule clear pld:instances/ture_pangu/stage/2/npc/35
schedule clear pld:instances/ture_pangu/stage/2/npc/36
schedule clear pld:instances/ture_pangu/stage/2/npc/37
schedule clear pld:instances/ture_pangu/stage/2/npc/38
schedule clear pld:instances/ture_pangu/stage/2/npc/39
schedule clear pld:instances/ture_pangu/stage/2/npc/40
schedule clear pld:instances/ture_pangu/stage/2/npc/41
schedule clear pld:instances/ture_pangu/stage/2/npc/42
schedule clear pld:instances/ture_pangu/stage/2/npc/43
schedule clear pld:instances/ture_pangu/stage/2/npc/44
schedule clear pld:instances/ture_pangu/stage/2/p2_success
#tp玩家
tp @a[x=-525,y=0,z=-1669,dx=367,dy=255,dz=392] -347 206 -1450