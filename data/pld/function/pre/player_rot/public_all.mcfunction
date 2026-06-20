execute as @e[type=marker,x=0,y=0,z=0,distance=..5,limit=1,tag=rot_marker] positioned 0.0 0.0 0.0 run function pld:pre/player_rot/get_i
execute as @e[type=marker,x=0,y=0,z=0,distance=..5,limit=1,tag=rot_marker] positioned 0.0 0.0 0.0 run function pld:pre/player_rot/get_j
execute as @e[type=marker,x=0,y=0,z=0,distance=..5,limit=1,tag=rot_marker] positioned 0.0 0.0 0.0 run function pld:pre/player_rot/get_k

#输入语境：
#execute at 玩家

#返回值
# temp_i0 int
# temp_i2 int

# temp_j0 int
# temp_j1 int
# temp_j2 int

# temp_k0 int
# temp_k1 int
# temp_k2 int

