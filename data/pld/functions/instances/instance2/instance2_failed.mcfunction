#副本失败喊话
playsound entity.wither.ambient ambient @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] 1089 20 913 10
tellraw @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] {"translate":"pl.info.instance2.failed1"}
tellraw @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] {"translate":"pl.info.instance2.failed2"}
#秒杀所有玩家
kill @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64]