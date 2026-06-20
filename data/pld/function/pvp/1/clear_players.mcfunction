bossbar set pl:pvp1_time visible false
bossbar set pl:pvp1_delivered visible false
#让仍在战役1中的玩家离开
execute as @a[scores={inpvp=1,pvp_team=1..2}] run function pld:pvp/1/leave

