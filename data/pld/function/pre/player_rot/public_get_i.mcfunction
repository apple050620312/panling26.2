execute as @e[type=marker,x=0,y=0,z=0,distance=..5,limit=1,tag=rot_marker] positioned 0.0 0.0 0.0 run function pld:pre/player_rot/get_i

#输入语境：
#execute at 玩家

#返回值
#玩家正左方单位向量
#temp_i0 int
#temp_i2 int