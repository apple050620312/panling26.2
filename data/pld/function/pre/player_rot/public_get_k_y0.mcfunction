execute as @e[type=marker,x=0,y=0,z=0,distance=..5,limit=1,tag=rot_marker] positioned 0.0 0.0 0.0 run function pld:pre/player_rot/get_k_y0

#输入语境：
#execute at 玩家

#返回值
#玩家水平前方单位向量  （忽视y）
#temp_k0 int --------x方向
#temp_k2 int --------z方向

