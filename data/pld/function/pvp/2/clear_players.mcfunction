bossbar set pl:pvp2_time visible false
bossbar set pl:pvp2_kill_tree visible false
#让仍在战役2中的玩家离开
execute as @a[scores={inpvp=1,pvp_team=3..4}] run function pld:pvp/2/leave